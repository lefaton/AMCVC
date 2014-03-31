/*
Get MIDI message and transform them into Hexa numbers driving a 12 bits DAC
By Utopikprod
2014
*/

#include <MIDI.h>

//MIDI channel used
const int MIDIChannel = 3;

//CV VCO Offset
const int VCO_CV_Offset = 0;

//const IO variables
const int midiInput_Pin = 2;
//const int DACInputPin = 3;
const int led_Pin = 6;

//MAX526 DAC control
const int CSMSB_Pin = 4;
const int CSLSB_Pin = 13;
const int WR_Pin = 5; //To trigger after write
const int LDAC_Pin = 7; //Load written bytes into DAC registers
const int Addr_0_Pin = 8;
const int Addr_1_Pin = 9;

//MAX526 DAC Data
const int DAC_0_Pin = 19;
const int DAC_1_Pin = 20;
const int DAC_2_Pin = 21;
const int DAC_3_Pin = 22;
const int DAC_4_Pin = 23;
const int DAC_5_Pin = 10;
const int DAC_6_Pin = 11;
const int DAC_7_Pin = 12;

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
 pinMode(DAC_0_Pin, OUTPUT);
 pinMode(DAC_1_Pin, OUTPUT);
 pinMode(DAC_2_Pin, OUTPUT);
 pinMode(DAC_3_Pin, OUTPUT);
 pinMode(DAC_4_Pin, OUTPUT);
 pinMode(DAC_5_Pin, OUTPUT);
 pinMode(DAC_6_Pin, OUTPUT);
 pinMode(DAC_7_Pin, OUTPUT);
 
 digitalWrite(led_Pin,HIGH);
 InitializeDAC();
}

//Write bits to the DAC
void WriteByteToDAC(byte data)
{
  int i;
  for(i=7;i>=0;i--)
  {
    if(data & (1<<i))
    {
      switch(i)
      {
        case 0: 
          digitalWrite(DAC_0_Pin,HIGH);
          break;
        case 1:
          digitalWrite(DAC_1_Pin,HIGH);
          break;
        case 2:
          digitalWrite(DAC_2_Pin,HIGH);
          break;
        case 3:
          digitalWrite(DAC_3_Pin,HIGH);
          break;
        case 4:
          digitalWrite(DAC_4_Pin,HIGH);
          break;
        case 5:
          digitalWrite(DAC_5_Pin,HIGH);
          break;
        case 6:
          digitalWrite(DAC_6_Pin,HIGH);
          break;
        case 7:
          digitalWrite(DAC_7_Pin,HIGH);
          break;
        default:
          Serial.println("WriteByteToDAC error");
      }
    }
  }
}

void CleanByteToDAC()
{
  int i;
  for(i=7;i>=0;i--)
  {
      switch(i)
      {
        case 0: 
          digitalWrite(DAC_0_Pin,LOW);
          break;
        case 1:
          digitalWrite(DAC_1_Pin,LOW);
          break;
        case 2:
          digitalWrite(DAC_2_Pin,LOW);
          break;
        case 3:
          digitalWrite(DAC_3_Pin,LOW);
          break;
        case 4:
          digitalWrite(DAC_4_Pin,LOW);
          break;
        case 5:
          digitalWrite(DAC_5_Pin,LOW);
          break;
        case 6:
          digitalWrite(DAC_6_Pin,LOW);
          break;
        case 7:
          digitalWrite(DAC_7_Pin,LOW);
          break;
        default:
          Serial.println("CleanByteToDAC error");
      }  
  }
}


void WriteDAC(int DACOutput)
{
  DACOutputToWriteIn(DACOutput);
 
  //LSB first
  CleanByteToDAC();
  digitalWrite(CSLSB_Pin,LOW);//Active LSB
  
  digitalWrite(WR_Pin,LOW);
  WriteByteToDAC(LSBytes);
  digitalWrite(WR_Pin,HIGH);
  
  digitalWrite(CSLSB_Pin,HIGH);//Deactive LSB
  
  //MSB Second
  CleanByteToDAC();
  digitalWrite(CSMSB_Pin,LOW);//Active MSB
  
  digitalWrite(WR_Pin,LOW);
  WriteByteToDAC(MSBytes);
  digitalWrite(WR_Pin,HIGH);
  
  digitalWrite(CSMSB_Pin,HIGH);//Deactive MSB
  
  CleanByteToDAC();
  
  //actually write into DAC register
  digitalWrite(LDAC_Pin,LOW);
  digitalWrite(LDAC_Pin,HIGH);
}
  
void DACOutputToWriteIn(int input)
{
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
      //128*32-1 = max val 4095
      int convertedVal = ((note + 1)*32-1);
      convertedVal += VCO_CV_Offset;  
      LSBytes = lowByte(convertedVal);
      MSBytes = highByte(convertedVal);

      Serial.print("VCO Volt : ");
      Serial.println(convertedVal);
      /*
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

void InitializeDAC()
{
  LSBytes = 0x0;
  MSBytes = 0x0;
  WriteDAC(Gate_DAC_ID);
  WriteDAC(VCO_DAC_ID);
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
          //Serial.println(String("Note Off: ch=") + channel + ", note=" + note);
          ProcessData(0);
        }
        break;
      case NoteOff:
        note = MIDI.getData1();
        velocity = MIDI.getData2();
        channel = MIDI.getChannel();
        //Serial.println(String("Note Off: ch=") + channel + ", note=" + note + ", velocity=" + velocity);
        ProcessData(0);
        break;
      default:
        d1 = MIDI.getData1();
        d2 = MIDI.getData2();
        //Serial.println(String("Message, type=") + type + ", data = " + d1 + " " + d2);
    }
  }
}
