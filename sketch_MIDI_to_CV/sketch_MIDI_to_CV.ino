/*
Get MIDI message and transform them into Hexa numbers driving a 12 bits DAC
*/

//MIDI channel used
const int MIDIChannel = 3;

//const IO variables
const int midiInputPin = 2;
const int DACInputPin = 3;
const int ledPin = 6;

//MAX526 DAC control
const int CSMSBPin = 4; //CSLSB true by default using a 74HC04 //they are always inverted
const int WRPin = 5; //To trigger after write
const int LDACPin = 7; //Load written bytes into DAC registers
const int Add0Pin = 8;
const int Add1Pin = 9;

byte LSBytes = 0x0;
byte MSBytes = 0x0;

//buffer receiver
const int bufferSize = 10;

byte midiMessageBuffer[bufferSize] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
byte midiNoteBuffer[bufferSize] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
byte midiVelocityBuffer[bufferSize] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};

int bufferPosition = 0;

//x0x heart specific control
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
 pinMode(midiInputPin, INPUT);
 pinMode(DACInputPin, OUTPUT);
 pinMode(ledPin, OUTPUT);
 pinMode(CSMSBPin, OUTPUT);
 pinMode(WRPin, OUTPUT);
 pinMode(LDACPin, OUTPUT);
 pinMode(Add0Pin, OUTPUT);
 pinMode(Add1Pin, OUTPUT);
}

void WriteBytes(int DACOutput)
{
  DACOutputToWriteIn(DACOutput);
  
  //LSB first
  digitalWrite(CSMSBPin,HIGH);//inverted (LOW set active)
  digitalWrite(WRPin,LOW);
  
  Serial.print(LSBytes,BYTE);
  digitalWrite(WRPin,HIGH);
   
  //MSB Second
  digitalWrite(CSMSBPin,LOW);
  digitalWrite(WRPin,LOW);
  
  Serial.print(MSBytes,BYTE);
  digitalWrite(WRPin,HIGH);
  
  //actually write into DAC register
  digitalWrite(LDACPin,LOW);
  digitalWrite(LDACPin,HIGH);
}
  
void DACOutputToWriteIn(int input)
{
  if(input == 0)
  {
    digitalWrite(Add0Pin,LOW);
    digitalWrite(Add1Pin,LOW);
  }  
  else
  {
    if(input == 1)
    {
      digitalWrite(Add0Pin,HIGH);
      digitalWrite(Add1Pin,LOW);
    }
    else
    {
      if(input == 2)
      {
        digitalWrite(Add0Pin,LOW);
        digitalWrite(Add1Pin,HIGH);
      }
      else
      {
        digitalWrite(Add0Pin,HIGH);
        digitalWrite(Add1Pin,HIGH); 
      }
    }
  }
}

void ReadData()
{
  midiMessageBuffer[bufferPosition] = Serial.read();
  
  if( midiMessageBuffer[bufferPosition] & 0x0F != MIDIChannel)
    {
      midiMessageBuffer[bufferPosition] = 0x0;
      midiNoteBuffer[bufferPosition] = 0x0;
      midiVelocityBuffer[bufferPosition] = 0x0;
    }
    
   
  if(midiMessageBuffer[bufferPosition] > noteOff && midiMessageBuffer[bufferPosition] < patchRange)
  {
    if( midiMessageBuffer[bufferPosition] & 0x0F != MIDIChannel)
    {
      //ignore other channels, read in nowhere
      Serial.read();
      Serial.read();
    } 
    else
    {
      midiNoteBuffer[bufferPosition] = Serial.read();
      midiVelocityBuffer[bufferPosition] = Serial.read();
    
      ++bufferPosition;
      blinkLED();
    }
  }
  else
  {
    //TODO: manage here for specific messages
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
  
  --bufferPosition;
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
  
  while(Serial.available() && bufferPosition<bufferSize)
  {
    ReadData();
  }
  
  while(bufferPosition>0)
  {
    ProcessData(); 
  }
  
}
