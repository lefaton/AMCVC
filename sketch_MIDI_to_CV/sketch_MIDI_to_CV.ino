/*
Get MIDI message and transform them into Hexa numbers driving a 12 bits DAC
By Utopikprod
2014
*/

#include <MIDI.h>

//MIDI channel used
const int MIDIChannel = 3;

//const IO variables
const int midiInput_Pin = 2;
//const int DACInputPin = 3;
const int led_Pin = 6;

//74HC595 control
const int STCP_Pin = 10;//latch pin
const int SHCP_Pin = 11;//clock pin
const int SRDS_Pin = 12;//data pin

//MAX526 DAC control
const int CSMSB_Pin = 4;
const int CSLSB_Pin = 13;
const int WR_Pin = 5; //To trigger after write
const int LDAC_Pin = 7; //Load written bytes into DAC registers
const int Addr_0_Pin = 8;
const int Addr_1_Pin = 9;

const int VCO_DAC_ID = 0;
const int Gate_DAC_ID = 1;
const int VCF_DAC_ID = 2;
const int Decay_DAC_ID = 3;

byte LSBytes = 0x0;
byte MSBytes = 0x0;

int type, note, velocity, channel, d1, d2;

//x0x heart specific control
const byte accentCC = 0x64;
const byte slideCC = 0x66;
const byte triggerLimit = 0x64;

//MIDI specific table
const byte noteOff = 0x80;
const byte noteOn = 0x90;
const byte aftertouch = 0xA0;
const byte cc = 0xB0;
const byte patchRange = 0xC0;
const byte channelPressure = 0xD0;
const byte pitchBend = 0xE0;
const byte sysexStart = 0xF0;

const byte sysexStop = 0xF7;
const byte clock = 0xF8;
const byte startSeq = 0xFA;
const byte contSeq = 0xFB;
const byte stopSeq = 0xFC;

HardwareSerial Uart = HardwareSerial();

void setup()
{
  
 MIDI.begin(MIDI_CHANNEL_OMNI);
 
 Uart.begin(31250);
 Serial.begin(57600);
 pinMode(PIN_D2, INPUT);
 pinMode(PIN_D3, OUTPUT);
 pinMode(midiInput_Pin, INPUT);
 pinMode(led_Pin, OUTPUT);
 pinMode(CSMSB_Pin, OUTPUT);
 pinMode(CSLSB_Pin, OUTPUT);
 pinMode(WR_Pin, OUTPUT);
 pinMode(LDAC_Pin, OUTPUT);
 pinMode(Addr_0_Pin, OUTPUT);
 pinMode(Addr_1_Pin, OUTPUT);
 pinMode(STCP_Pin, OUTPUT);
 pinMode(SHCP_Pin, OUTPUT);
 pinMode(SRDS_Pin, OUTPUT);
 
 digitalWrite(led_Pin,HIGH);
}

//Write bits to the shift register 74HC595
void WriteShiftRegister(byte data)
{
  digitalWrite(STCP_Pin,LOW);
  shiftOut(SRDS_Pin, SHCP_Pin, LSBFIRST, data);
  digitalWrite(STCP_Pin,HIGH);
}

void WriteDAC(int DACOutput)
{
  DACOutputToWriteIn(DACOutput);

  //LSB first
  digitalWrite(CSLSB_Pin,LOW);//Active LSB
  
  digitalWrite(WR_Pin,LOW);
  WriteShiftRegister(LSBytes);
  digitalWrite(WR_Pin,HIGH);
  
  digitalWrite(CSLSB_Pin,HIGH);//Deactive LSB
  
  //MSB Second
  digitalWrite(CSMSB_Pin,LOW);//Active MSB
  
  digitalWrite(WR_Pin,LOW);
  WriteShiftRegister(MSBytes);
  digitalWrite(WR_Pin,HIGH);
  
  digitalWrite(CSMSB_Pin,HIGH);//Deactive MSB
  
  //actually write into DAC register
  digitalWrite(LDAC_Pin,LOW);
  digitalWrite(LDAC_Pin,HIGH);
}
  
void DACOutputToWriteIn(int input)
{
  if(input == 0)
  {
    digitalWrite(Addr_0_Pin,HIGH);
    digitalWrite(Addr_1_Pin,HIGH);
  }
  else
  {
    if(input == 1)
    {
      digitalWrite(Addr_0_Pin,LOW);
      digitalWrite(Addr_1_Pin,HIGH);
    }
    else
    {
      if(input == 2)
      {
        digitalWrite(Addr_0_Pin,HIGH);
        digitalWrite(Addr_1_Pin,LOW);
      }
      else
      {
        digitalWrite(Addr_0_Pin,LOW);
        digitalWrite(Addr_1_Pin,LOW);
      }
    }
  }
}

void ProcessData(int messageType)
{
  //Midi Off Mess
  if( messageType == 0 )
  {
    blinkLED();
    //Set gate voltage to 0V
    LSBytes = 0x0;
    MSBytes = 0x0;
    WriteDAC(Gate_DAC_ID);
  }
  else
  {
    //Midi On Mess
    if(messageType == 1)
    {
      blinkLED();
      //Set gate voltage to 5V
      LSBytes = 0xF;
      MSBytes = 0x8;
      WriteDAC(Gate_DAC_ID); 
                
      //Set vco voltage following hexa value in midiNoteBuffer[bufferPosition]   
      //128*32 = max val 4096
      int convertedVal = ((note + 1)*32-1);  
      LSBytes = lowByte(convertedVal);
      MSBytes = highByte(convertedVal);
    /*    
      Serial.print("VCO Volt : ");
      Serial.print(MSBytes,BIN);
      Serial.print(" ");
      Serial.println(LSBytes,BIN);
    */
      WriteDAC(VCO_DAC_ID);
    }
    else
    {
      //Midi CC Mess
      if(messageType == 2)
      {
        if(note==accentCC && velocity>triggerLimit)
        {
           //Set On digital out for accent
        }
        
        if(note==slideCC && velocity>triggerLimit)
        {
           //Set On digital out for slide
        }
      }
    }
  }
}

void blinkLED()
{
   digitalWrite(led_Pin,LOW);
   delay(25);
   digitalWrite(led_Pin,HIGH);
}

void loop()
{
  if( MIDI.read() )
  {
    byte type = MIDI.getType();
    switch (type) {
      case NoteOn:
        note = MIDI.getData1();
        velocity = MIDI.getData2();
        channel = MIDI.getChannel();
        if (velocity > 0) 
        {
          Serial.println(String("Note On:  ch=") + channel + ", note=" + note + ", velocity=" + velocity);
          ProcessData(1);
        } 
        else 
        {
          Serial.println(String("Note Off: ch=") + channel + ", note=" + note);
          ProcessData(0);
        }
        break;
      case NoteOff:
        note = MIDI.getData1();
        velocity = MIDI.getData2();
        channel = MIDI.getChannel();
        Serial.println(String("Note Off: ch=") + channel + ", note=" + note + ", velocity=" + velocity);
        ProcessData(0);
        break;
      default:
        d1 = MIDI.getData1();
        d2 = MIDI.getData2();
        //Serial.println(String("Message, type=") + type + ", data = " + d1 + " " + d2);
    }
  }
}
