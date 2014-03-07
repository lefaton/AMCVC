/*
Get MIDI message and transform them into Hexa numbers driving a 12 bits DAC
*/

//const variables
const int midiInput = 2;
const int UARTOut = 3;
const int ledPin = 6;

byte midiMessageBuffer[10] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
byte midiNoteBuffer[10] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
byte midiVelocityBuffer[10] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};

int bufferPosition = 0;

const byte accentCC = 0x64;
const byte slideCC = 0x66;
const byte triggerLimit = 0x64;

//MIDI specific table
const byte noteOff = 0x80;
const byte noteOn =  0x90;
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

void setup()
{
 Serial.begin(31250);
 pinMode(midiInput, INPUT);
 pinMode(UARTOut, OUTPUT);
 pinMode(ledPin, OUTPUT);
}

void ReadData()
{
  midiMessageBuffer[bufferPosition] = Serial.read();
   
  //Midi Off Mess
  if(midiMessageBuffer[bufferPosition] > noteOff && midiMessageBuffer[bufferPosition] < noteOn)
  { 
    midiNoteBuffer[bufferPosition] = Serial.read();
    midiVelocityBuffer[bufferPosition] = Serial.read();
  }
  else
  {
    //Midi On Mess
    if(midiMessageBuffer[bufferPosition] > noteOn && midiMessageBuffer[bufferPosition] < aftertouch)
    {
      midiNoteBuffer[bufferPosition] = Serial.read();
      midiVelocityBuffer[bufferPosition] = Serial.read();
    }
    else
    {
      //Midi CC Mess
      if(midiMessageBuffer[bufferPosition] > cc && midiMessageBuffer[bufferPosition] < patchRange)
      {
        midiNoteBuffer[bufferPosition] = Serial.read();
        midiVelocityBuffer[bufferPosition] = Serial.read();
      }
    }
  }
}

void ProcessData()
{  
  //Midi Off Mess
  if(midiMessageBuffer[bufferPosition] > noteOff && midiMessageBuffer[bufferPosition] < noteOn)
  { 
    //Set gate voltage to 0V
  }
  else
  {
    //Midi On Mess
    if(midiMessageBuffer[bufferPosition] > noteOn && midiMessageBuffer[bufferPosition] < aftertouch)
    {
      //Set gate voltage to 5V
      //Set vco voltage following hexa value in midiNoteBuffer[bufferPosition]
    }
    else
    {
      //Midi CC Mess
      if(midiMessageBuffer[bufferPosition] > noteOn && midiMessageBuffer[bufferPosition] < aftertouch)
      {
        if(midiNoteBuffer[bufferPosition]==accentCC && midiVelocityBuffer[bufferPosition]>triggerLimit)
        {
           //Set On digital out for accent
        }
        
        if(midiNoteBuffer[bufferPosition]==slideCC && midiVelocityBuffer[bufferPosition]>triggerLimit)
        {
           //Set On digital out for slide
        }
      }
    }
  }
  
  midiMessageBuffer[bufferPosition] = 0x0;
  midiNoteBuffer[bufferPosition] = 0x0;
  midiVelocityBuffer[bufferPosition] = 0x0;
}

void blinkLED()
{
   digitalWrite(ledPin,HIGH);
   delay(100);
   digitalWrite(ledPin,LOW);
   delay(100);
}

void loop()
{
  
  while(Serial.available() && bufferPosition<10)
  {
    ReadData();
    bufferPosition = ++bufferPosition%10;
    blinkLED();
  }
  
  while(bufferPosition>0)
  {
    ProcessData();
    --bufferPosition;
  }
  
}
