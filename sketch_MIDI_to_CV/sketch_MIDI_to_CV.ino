/*
Get MIDI messages and transform them into 12-bit DAC values driving the x0x-heart.
By Utopikprod
2014 - revised 2026

Changes in this revision:
 - MCP4922 word is now built per-channel, so channel B (VCF) actually works.
 - VCF cutoff is driven from MIDI CC 74 (standard "brightness"/cutoff).
 - Note On no longer blocks on the LED blink (non-blocking, millis()-based).
 - Monophonic note stack: releasing a non-active note no longer cuts the gate.
 - MIDI input is filtered to MIDIChannel instead of OMNI.
 - Dead code removed (shadowed `type`, unused Uart, stray PIN_D2/PIN_D3).
*/

#include <MIDI.h>
#include <SPI.h>

//MIDI channel used (1-16)
const int MIDIChannel = 3;

//CV VCO tuning
const int   VCO_CV_Offset    = 0;       // global tuning offset in semitones
const float VCO_CV_step      = 68.25;   // DAC counts per semitone
const int   MIDI_Min_Note    = 24;      // C1 (lowest accepted note)
const int   MIDI_Max_Note    = 84;      // C6 (highest accepted note)
const int   MIDI_Start_Offset = 24;     // note 24 maps to DAC value 0

//const IO variables
const int midiInput_Pin     = 2;
const int led_Pin           = 6;
const int frontPanelLed_Pin = 5;

//x0x heart digital control
const int decay_Pin    = 4;
const int accent_Pin   = 7;
const int slideIn_Pin  = 8;
const int slideOut_Pin = 12;
boolean slideIn  = false;
boolean slideOut = false;

const int squareWaveIn_Pin  = 13;
const int sawWaveIn_Pin     = 14;
const int squareWaveOut_Pin = 15;
const int sawWaveOut_Pin    = 16;

//MCP4922 DAC control
const int CS_Pin   = 10;
const int LDAC_Pin = 11;

const int VCO_DAC_ID = 0;   // MCP4922 channel A
const int VCF_DAC_ID = 1;   // MCP4922 channel B

const int VCO_Gate_Pin = 9;
const int VCF_Gate_Pin = 17;

//x0x heart specific control (MIDI CC numbers)
const byte decayCC    = 0x63;  // CC 99
const byte accentCC   = 0x64;  // CC 100
const byte slideInCC  = 0x65;  // CC 101
const byte slideOutCC = 0x66;  // CC 102
const byte cutoffCC   = 0x4A;  // CC 74  -> VCF cutoff (DAC channel B)

const byte triggerLimit = 0x64; // CC value must be > 100 to activate a control

int note, velocity, channel, d1, d2;

//Monophonic note stack (last-note priority)
const int MAX_NOTES = 8;
byte noteStack[MAX_NOTES];
int  noteCount = 0;

//Non-blocking LED blink state
boolean ledOn = false;
unsigned long ledOffAt = 0;

void setup()
{
  // Filter MIDI to the configured channel instead of listening to everything.
  MIDI.begin(MIDIChannel);

  SPI.begin();
  SPI.setBitOrder(MSBFIRST);
  SPI.setDataMode(SPI_MODE0);

  Serial.begin(57600);

  pinMode(led_Pin,           OUTPUT);
  pinMode(frontPanelLed_Pin, OUTPUT);
  pinMode(decay_Pin,         OUTPUT);
  pinMode(accent_Pin,        OUTPUT);
  pinMode(slideIn_Pin,       OUTPUT);
  pinMode(slideOut_Pin,      OUTPUT);

  pinMode(squareWaveOut_Pin, OUTPUT);
  pinMode(sawWaveOut_Pin,    OUTPUT);
  pinMode(squareWaveIn_Pin,  INPUT);
  pinMode(sawWaveIn_Pin,     INPUT);

  pinMode(midiInput_Pin, INPUT);

  pinMode(CS_Pin,   OUTPUT);
  pinMode(LDAC_Pin, OUTPUT);

  pinMode(VCO_Gate_Pin, OUTPUT);
  pinMode(VCF_Gate_Pin, OUTPUT);

  // Idle state: LEDs on, controls inactive (active-low), gates off (active-low).
  digitalWrite(led_Pin,      HIGH);
  digitalWrite(decay_Pin,    HIGH);
  digitalWrite(accent_Pin,   HIGH);
  digitalWrite(slideIn_Pin,  HIGH);
  digitalWrite(slideOut_Pin, HIGH);
  digitalWrite(VCO_Gate_Pin, HIGH);
  digitalWrite(VCF_Gate_Pin, HIGH);
}

// Build and send a 16-bit MCP4922 command word for the given channel.
//   bit15 A/B (0=A, 1=B), bit14 BUF=0, bit13 /GA=1 (1x gain), bit12 /SHDN=1 (active)
void WriteDAC(int dacChannel, int value)
{
  value = constrain(value, 0, 4095);
  unsigned int command = ((unsigned int)(dacChannel & 0x1) << 15)
                       | 0x3000                        // /GA + /SHDN
                       | (value & 0x0FFF);

  digitalWrite(LDAC_Pin, HIGH);
  digitalWrite(CS_Pin,   LOW);   // begin transfer

  SPI.transfer(highByte(command));
  SPI.transfer(lowByte(command));

  digitalWrite(CS_Pin,   HIGH);  // end transfer
  digitalWrite(LDAC_Pin, LOW);   // latch outputs
}

// Set the VCO pitch CV for a MIDI note and open the gate (active-low).
void playNote(byte n)
{
  int midiNote = constrain(n + VCO_CV_Offset, MIDI_Min_Note, MIDI_Max_Note);
  int convertedVal = (int)((float)(midiNote - MIDI_Start_Offset) * VCO_CV_step);

  WriteDAC(VCO_DAC_ID, convertedVal);

  digitalWrite(VCO_Gate_Pin, LOW);
  digitalWrite(VCF_Gate_Pin, LOW);

  Serial.print("Play note ");
  Serial.print(n);
  Serial.print(" -> DAC ");
  Serial.println(convertedVal);
}

void removeFromStack(byte n)
{
  int idx = -1;
  for (int i = 0; i < noteCount; i++)
  {
    if (noteStack[i] == n) { idx = i; break; }
  }
  if (idx < 0) return;
  for (int i = idx; i < noteCount - 1; i++) noteStack[i] = noteStack[i + 1];
  noteCount--;
}

void handleNoteOn(byte n)
{
  removeFromStack(n);                                  // avoid duplicates
  if (noteCount < MAX_NOTES) noteStack[noteCount++] = n;
  playNote(n);
  triggerLED();
}

void handleNoteOff(byte n)
{
  boolean wasActive = (noteCount > 0 && noteStack[noteCount - 1] == n);
  removeFromStack(n);

  if (noteCount == 0)
  {
    // No notes held: close the gates.
    digitalWrite(VCO_Gate_Pin, HIGH);
    digitalWrite(VCF_Gate_Pin, HIGH);
  }
  else if (wasActive)
  {
    // The sounding note was released: fall back to the most recent held note.
    playNote(noteStack[noteCount - 1]);
  }
}

void handleControlChange(byte ccNumber, byte ccValue)
{
  if (ccNumber == cutoffCC)
  {
    // Map CC 74 (0-127) to the full 12-bit VCF cutoff range on DAC channel B.
    int val = map(ccValue, 0, 127, 0, 4095);
    WriteDAC(VCF_DAC_ID, val);
    return;
  }

  if (ccNumber == decayCC)
  {
    digitalWrite(decay_Pin, ccValue > triggerLimit ? LOW : HIGH);
  }

  if (ccNumber == accentCC)
  {
    digitalWrite(accent_Pin, ccValue > triggerLimit ? LOW : HIGH);
  }

  if (ccNumber == slideInCC)
  {
    if (ccValue > triggerLimit)
    {
      if (slideOut) { slideOut = false; digitalWrite(slideOut_Pin, HIGH); }
      slideIn = true;
      digitalWrite(slideIn_Pin, LOW);
    }
    else
    {
      slideIn = false;
      digitalWrite(slideIn_Pin, HIGH);
    }
  }

  if (ccNumber == slideOutCC)
  {
    if (ccValue > triggerLimit)
    {
      if (slideIn) { slideIn = false; digitalWrite(slideIn_Pin, HIGH); }
      slideOut = true;
      digitalWrite(slideOut_Pin, LOW);
    }
    else
    {
      slideOut = false;
      digitalWrite(slideOut_Pin, HIGH);
    }
  }
}

// Non-blocking front-panel/board LED blink.
void triggerLED()
{
  digitalWrite(frontPanelLed_Pin, LOW);
  digitalWrite(led_Pin,           LOW);
  ledOn = true;
  ledOffAt = millis() + 25;
}

void updateLED()
{
  // Subtraction handles the millis() rollover correctly.
  if (ledOn && (long)(millis() - ledOffAt) >= 0)
  {
    digitalWrite(frontPanelLed_Pin, HIGH);
    digitalWrite(led_Pin,           HIGH);
    ledOn = false;
  }
}

void loop()
{
  // Wave pass-through buffer (square + saw).
  digitalWrite(sawWaveOut_Pin,    digitalRead(sawWaveIn_Pin));
  digitalWrite(squareWaveOut_Pin, digitalRead(squareWaveIn_Pin));

  updateLED();

  if (MIDI.read())
  {
    byte type = MIDI.getType();
    switch (type)
    {
      case NoteOn:
        note     = MIDI.getData1();
        velocity = MIDI.getData2();
        channel  = MIDI.getChannel();
        if (velocity > 0)
        {
          Serial.println(String("Note On:  ch=") + channel + ", note=" + note + ", velocity=" + velocity);
          handleNoteOn(note);
        }
        else
        {
          // Note On with velocity 0 is a Note Off.
          handleNoteOff(note);
        }
        break;

      case NoteOff:
        note     = MIDI.getData1();
        velocity = MIDI.getData2();
        channel  = MIDI.getChannel();
        handleNoteOff(note);
        break;

      case ControlChange:
        note     = MIDI.getData1();   // CC number
        velocity = MIDI.getData2();   // CC value
        channel  = MIDI.getChannel();
        handleControlChange(note, velocity);
        break;

      default:
        d1 = MIDI.getData1();
        d2 = MIDI.getData2();
        break;
    }
  }
}
