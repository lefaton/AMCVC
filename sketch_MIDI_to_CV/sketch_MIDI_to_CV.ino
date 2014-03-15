/*
Get MIDI message and transform them into Hexa numbers driving a 12 bits DAC
By Utopikprod
2014
*/

//MIDI channel used
const int MIDIChannel = 3;

//const IO variables
const int midiInput_Pin = 2;
//const int DACInputPin = 3;
const int led_Pin = 6;

byte mask = 1; //bitmask

//74HC595 control
const int STCP_Pin = 10;
const int SHCP_Pin = 11;
const int SRDS_Pin = 12;

//MAX526 DAC control
const int CSMSB_Pin = 4; //CSLSB true by default using a 74HC04 //they are always inverted
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

HardwareSerial Uart = HardwareSerial();

void setup()
{ 
 Uart.begin(31250);
 pinMode(PIN_D2, INPUT);
 
 pinMode(midiInput_Pin, INPUT);
 pinMode(led_Pin, OUTPUT);
 pinMode(CSMSB_Pin, OUTPUT);
 pinMode(WR_Pin, OUTPUT);
 pinMode(LDAC_Pin, OUTPUT);
 pinMode(Addr_0_Pin, OUTPUT);
 pinMode(Addr_1_Pin, OUTPUT);
 pinMode(STCP_Pin, OUTPUT);
 pinMode(SHCP_Pin, OUTPUT);
 pinMode(SRDS_Pin, OUTPUT);
 
 digitalWrite(led_Pin,HIGH);
}

//Write bits one by one to the shift register 74HC595
void WriteShiftRegister(byte data)
{
  Uart.println("WriteShiftRegister");
  //74HC595 - step1
  digitalWrite(SHCP_Pin,LOW);
  digitalWrite(STCP_Pin,LOW); 

  for (mask = 00000001; mask>0; mask <<= 1)
  {
    if(mask & data)
    {
      digitalWrite(SRDS_Pin,HIGH);
    }
    else
    {
      digitalWrite(SRDS_Pin,LOW); 
    }
    
    //74HC595 - step2
    digitalWrite(SHCP_Pin,HIGH);
    digitalWrite(SHCP_Pin,LOW); 
  }
  
  //74HC595 - step3
  digitalWrite(STCP_Pin,HIGH);
}

void WriteDAC(int DACOutput)
{
  Uart.println("WriteDAC");
  DACOutputToWriteIn(DACOutput);

  //LSB first
  digitalWrite(CSMSB_Pin,HIGH);//inverted (LOW set active)
  digitalWrite(WR_Pin,LOW);
  
  WriteShiftRegister(LSBytes);
  digitalWrite(WR_Pin,HIGH);
  
  //MSB Second
  digitalWrite(CSMSB_Pin,LOW);
  digitalWrite(WR_Pin,LOW);

  WriteShiftRegister(MSBytes);
  digitalWrite(WR_Pin,HIGH);
  
  //actually write into DAC register
  digitalWrite(LDAC_Pin,LOW);
  digitalWrite(LDAC_Pin,HIGH);
}
  
void DACOutputToWriteIn(int input)
{
  Uart.println("DACOutputToWriteIn");
  if(input == 0)
  {
    digitalWrite(Addr_0_Pin,LOW);
    digitalWrite(Addr_1_Pin,LOW);
  }  
  else
  {
    if(input == 1)
    {
      digitalWrite(Addr_0_Pin,HIGH);
      digitalWrite(Addr_1_Pin,LOW);
    }
    else
    {
      if(input == 2)
      {
        digitalWrite(Addr_0_Pin,LOW);
        digitalWrite(Addr_1_Pin,HIGH);
      }
      else
      {
        digitalWrite(Addr_0_Pin,HIGH);
        digitalWrite(Addr_1_Pin,HIGH); 
      }
    }
  }
}

void ReadData()
{
  midiMessageBuffer[bufferPosition] = Uart.read();
   
  if(midiMessageBuffer[bufferPosition] > noteOff && midiMessageBuffer[bufferPosition] < patchRange)
  {
    if( midiMessageBuffer[bufferPosition] & 0x0F != (MIDIChannel-1))
    {
      //ignore other channels, read in nowhere
      Uart.read();
      Uart.read();
    } 
    else
    {
      midiNoteBuffer[bufferPosition] = Uart.read();
      midiVelocityBuffer[bufferPosition] = Uart.read();
    
      ++bufferPosition;
      blinkLED();
    }
  }
  else
  {
    //TODO: manage here for specific ignored messages
    midiMessageBuffer[bufferPosition] = 0x0;
  }
}

void ProcessData()
{  
  Uart.println("ProcessData");
  //Midi Off Mess
  if(midiMessageBuffer[bufferPosition] > noteOff && midiMessageBuffer[bufferPosition] < noteOn)
  { 
    //Set gate voltage to 0V
    LSBytes = 0x0;
    MSBytes = 0x0;
    WriteDAC(Gate_DAC_ID);
  }
  else
  {
    //Midi On Mess
    if(midiMessageBuffer[bufferPosition] > noteOn && midiMessageBuffer[bufferPosition] < aftertouch)
    {
      if(midiVelocityBuffer[bufferPosition]>0)
      {
        //Set gate voltage to 5V
        LSBytes = 0xF;
        MSBytes = 0x8;
        WriteDAC(Gate_DAC_ID);
        //Set vco voltage following hexa value in midiNoteBuffer[bufferPosition]
      
        //128*32 =  max val 4096
        int convertedVal = (midiNoteBuffer[bufferPosition] + 1)*32;
  
        LSBytes = lowByte(convertedVal);
        MSBytes = highByte(convertedVal);
        WriteDAC(VCO_DAC_ID);
      }
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
   digitalWrite(led_Pin,LOW);
   delay(100);
   digitalWrite(led_Pin,HIGH);
   delay(100);
}

void loop()
{
  if( Uart.available() )//&& bufferPosition<bufferSize)
  {
    ReadData();
  }
  
  while(bufferPosition>0)
  {
    ProcessData(); 
  } 
}
