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

//buffer receiver
const int bufferSize = 10;

byte midiMessageBuffer[bufferSize] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
byte midiNoteBuffer[bufferSize] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
byte midiVelocityBuffer[bufferSize] = {0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};

int bufferPosition = 0;
int bufferMaxWrittenPos = 0;

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
 Uart.begin(31250);
 Serial.begin(31250);
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

void ReadData()
{
  byte temp[3];
  Uart.readBytes(temp,3);
 
  if(temp[0] == 0xFE)
  {
    //clock
    return; 
  }
  
  byte channel = temp[0] & 0x0F;
  
  //get only state ON/OFF message && ignore other channels
  if(temp[0]>(noteOff-1) && temp[0]<aftertouch && channel == (MIDIChannel-1))
  {
    midiMessageBuffer[bufferPosition] = temp[0];
    midiNoteBuffer[bufferPosition] = temp[1];
    midiVelocityBuffer[bufferPosition] = temp[2];
/*
    //debug serial output
    Serial.print(midiMessageBuffer[bufferPosition],HEX);
    Serial.print(" ");
    Serial.print(midiNoteBuffer[bufferPosition],HEX);
    Serial.print(" ");
    Serial.print(midiVelocityBuffer[bufferPosition],HEX);
    Serial.println("");
*/
    ++bufferPosition;
    blinkLED();
  }
}

boolean IsMessageNoteOff()
{
  if(midiMessageBuffer[bufferPosition] > (noteOff-1) && midiMessageBuffer[bufferPosition] < noteOn)
  {
    return true; 
  }
  if(midiMessageBuffer[bufferPosition] > (noteOn-1) && midiMessageBuffer[bufferPosition] < aftertouch && midiVelocityBuffer[bufferPosition]==0)
  {
    return true;
  }
  return false;
}

void ProcessData()
{
  --bufferPosition;
  //Midi Off Mess
  if( IsMessageNoteOff() )
  {
    //Set gate voltage to 0V
    LSBytes = 0x0;
    MSBytes = 0x0;
    WriteDAC(Gate_DAC_ID);
  }
  else
  {
    //Midi On Mess
    if(midiMessageBuffer[bufferPosition] > (noteOn-1) && midiMessageBuffer[bufferPosition] < aftertouch)
    {
      //Set gate voltage to 5V
      LSBytes = 0xF;
      MSBytes = 0x8;
      WriteDAC(Gate_DAC_ID); 
                
      //Set vco voltage following hexa value in midiNoteBuffer[bufferPosition]   
      //128*32 = max val 4096
      int convertedVal = ((midiNoteBuffer[bufferPosition] + 1)*32-1);  
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
   digitalWrite(led_Pin,LOW);
   delay(25);
   digitalWrite(led_Pin,HIGH);
}

void loop()
{
  if( Uart.available() && bufferPosition<bufferSize)
  {
    ReadData();
  }
  
  while(bufferPosition>0)
  {
    ProcessData();    
  }
}
