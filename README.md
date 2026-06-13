# AMCVC — Arduino MIDI to CV Converter

A MIDI-to-CV daughter board designed to drive the [x0x-heart](http://www.openmusiclabs.com/projects/x0x-heart/) — an open-source clone of the Roland TB-303 bass synthesizer engine. The board sits between a MIDI source and the x0x-heart, converting MIDI note and CC messages into analog control voltages (CV) and digital gate/control signals.

Built around a **Teensy++ 1.0** microcontroller and a **MCP4922 12-bit dual DAC** via SPI. The firmware is written as an Arduino sketch.

> **Status:** The firmware is working and was successfully tested on a prototype. The PCB layout has known bugs and has not been corrected yet.

---

## Context — What Is the x0x-heart?

The [x0x-heart](http://www.openmusiclabs.com/projects/x0x-heart/) is an open hardware recreation of the Roland TB-303 synthesizer core. It exposes CV and gate inputs for pitch, filter cutoff, and a set of digital control lines (decay, accent, slide in, slide out) that replicate the 303's characteristic playing articulations.

The AMCVC board plugs into those inputs and translates MIDI messages into the signals the x0x-heart expects, making it possible to sequence and play the 303 engine from any standard MIDI controller or DAW.

---

## Hardware Overview

### Microcontroller — Teensy++ 1.0

The [Teensy++ 1.0](https://www.pjrc.com/teensy/) is a compact USB-capable AVR microcontroller board (AT90USB1286). It runs the Arduino-compatible MIDI library and handles SPI communication with the DAC. A reference pinout is included in `Documents/Teensy 1.0++ pinout.png`.

### DAC — MCP4922 (12-bit, dual-channel, SPI)

The [MCP4922](https://www.microchip.com/MCP4922) is a 12-bit dual-output DAC communicating over SPI. It provides two independent CV outputs:

| Channel | Purpose     | Constant         | Driven by         |
|---------|-------------|------------------|-------------------|
| A (0)   | VCO pitch   | `VCO_DAC_ID = 0` | MIDI note number  |
| B (1)   | VCF cutoff  | `VCF_DAC_ID = 1` | MIDI CC 74        |

SPI is configured MSB-first, SPI Mode 0. The 16-bit command word sent to the MCP4922 is:

```
Bit 15   : A/B   — channel select (0 = channel A / VCO, 1 = channel B / VCF)
Bit 14   : BUF   — input buffer (0 = unbuffered)
Bit 13   : /GA   — gain select (1 = 1× gain, 0–Vref)
Bit 12   : /SHDN — output enable (1 = active)
Bits 11–0: 12-bit DAC value
```

`WriteDAC(channel, value)` builds the word per channel: it ORs in `0x3000` (bits 13
and 12 → 1× gain, output active) and sets bit 15 from the channel argument, so both
the VCO (channel A) and VCF (channel B) outputs are addressable.

### MIDI Isolation — 6N138 Optocoupler

MIDI input is electrically isolated using a [6N138](Documents/Datasheets/6N138.pdf) high-speed optocoupler, following the standard MIDI electrical interface specification. This prevents ground loops between the MIDI source and the synth circuitry.

---

## Pin Assignments (Teensy++ 1.0)

| Pin | Direction | Function                     |
|-----|-----------|------------------------------|
| 2   | INPUT     | MIDI input (via 6N138)       |
| 4   | OUTPUT    | Decay control (x0x-heart)    |
| 5   | OUTPUT    | Front panel LED              |
| 6   | OUTPUT    | Board LED                    |
| 7   | OUTPUT    | Accent control (x0x-heart)   |
| 8   | OUTPUT    | Slide In control             |
| 9   | OUTPUT    | VCO Gate                     |
| 10  | OUTPUT    | SPI CS (MCP4922 chip select) |
| 11  | OUTPUT    | SPI LDAC (DAC latch)         |
| 12  | OUTPUT    | Slide Out control            |
| 13  | INPUT     | Square wave input (x0x)      |
| 14  | INPUT     | Saw wave input (x0x)         |
| 15  | OUTPUT    | Square wave output           |
| 16  | OUTPUT    | Saw wave output              |
| 17  | OUTPUT    | VCF Gate                     |

---

## MIDI Configuration

```cpp
const int MIDIChannel = 3;  // MIDI channel to listen on
```

The sketch listens on MIDI channel 3 only — `MIDI.begin(MIDIChannel)` filters out
all other channels at the library level. To change channel, edit this constant and
re-upload.

---

## MIDI Note to CV Conversion

### Pitch (VCO)

The firmware converts MIDI note numbers to a 12-bit DAC value using a linear mapping:

```cpp
const float VCO_CV_step     = 68.25;  // DAC counts per semitone
const int   MIDI_Min_Note   = 24;     // C1 (lowest accepted note)
const int   MIDI_Max_Note   = 84;     // C6 (highest accepted note)
const int   MIDI_Start_Offset = 24;   // note 24 maps to DAC value 0
const int   VCO_CV_Offset   = 0;      // global tuning offset in semitones
```

Conversion formula:

```
convertedVal = (note + VCO_CV_Offset - MIDI_Start_Offset) × VCO_CV_step
```

**Example values:**

| MIDI Note | Note Name     | DAC value | Approx. CV |
|-----------|---------------|-----------|------------|
| 24        | C1            | 0         | 0 V        |
| 36        | C2            | 819       | ~1 V       |
| 48        | C3            | 1638      | ~2 V       |
| 60        | C4 (middle C) | 2457      | ~3 V       |
| 72        | C5            | 3276      | ~4 V       |
| 84        | C6            | 4095      | ~5 V       |

The 60-semitone range (C1–C6) maps to 0–4095, giving **1V/octave** when the DAC reference voltage is 5V. Fine-tune `VCO_CV_step` if your VCO has a different V/oct scaling. The full lookup table is in `Documents/table_midi_cv.xlsx`.

### Gate

| MIDI event              | Gate pins      | Logic         |
|-------------------------|----------------|---------------|
| Note On (velocity > 0)  | pin 9 + pin 17 | LOW (active)  |
| Note Off / velocity = 0 | pin 9 + pin 17 | HIGH (off)    |

The x0x-heart gates are active-low. Both the VCO gate (pin 9) and VCF gate (pin 17)
are driven together.

### Note priority (monophonic note stack)

The firmware is monophonic but tracks held notes in a small stack (up to 8 notes):

- **Note On** pushes the note and plays it immediately (last-note priority).
- **Note Off** removes the note from the stack. Releasing a note that is *not* the
  one currently sounding does **not** cut the gate — it just leaves the stack.
- Releasing the sounding note falls back to the most recently held note still down;
  the gate only closes when no notes remain.

This makes legato/overlapping play behave the way a hardware mono synth does.

### VCF cutoff (CC 74)

MIDI **CC 74** (the standard "brightness"/cutoff controller) drives the VCF on DAC
channel B. Values 0–127 are mapped linearly to the full 12-bit range (0–4095).

---

## TB-303 Specific CC Messages

The x0x-heart exposes four articulation controls specific to the TB-303 playing style. The firmware maps MIDI CC messages to digital lines:

| CC  | Hex   | Function   | Effect when value > 100          |
|-----|-------|------------|----------------------------------|
| 99  | 0x63  | Decay      | Pin 4 LOW (decay enabled)        |
| 100 | 0x64  | Accent     | Pin 7 LOW (accent enabled)       |
| 101 | 0x65  | Slide In   | Pin 8 LOW (slide in enabled)     |
| 102 | 0x66  | Slide Out  | Pin 12 LOW (slide out enabled)   |

A CC value strictly above 100 (`triggerLimit = 0x64`) activates the control; 100 or
below deactivates it. CC 74 (cutoff) is the exception — it is a continuous value, not
a trigger (see [VCF cutoff](#vcf-cutoff-cc-74) above).

**Slide mutual exclusion:** Slide In and Slide Out are mutually exclusive — activating one automatically cancels the other, mirroring the 303's hardware behavior.

---

## Wave Pass-Through

The x0x-heart outputs both a **square wave** and a **sawtooth wave**. The AMCVC board reads these on pins 13/14 and re-outputs them on pins 15/16 every loop cycle, acting as a signal buffer:

```cpp
digitalWrite(sawWaveOut_Pin,    digitalRead(sawWaveIn_Pin));
digitalWrite(squareWaveOut_Pin, digitalRead(squareWaveIn_Pin));
```

---

## Repository Structure

```
sketch_MIDI_to_CV/
  sketch_MIDI_to_CV.ino       ← Arduino firmware (upload this to Teensy)

Documents/
  table_midi_cv.xlsx          ← Full MIDI note to CV conversion table
  Teensy 1.0++ pinout.png     ← Teensy++ 1.0 pin reference diagram
  x0x Heart - tb-303.fpd     ← Front panel design (Frontpanel Designer)
  x0xheartmanual.pdf          ← x0x-heart complete manual

  Eagle/
    *.sch   ← Circuit schematic (Eagle CAD) — use this as reference
    *.brd   ← PCB layout (Eagle CAD) ⚠️ has known wiring bugs

  Datasheets/
    MCP4922.pdf               ← 12-bit dual DAC datasheet
    6N138.pdf                 ← MIDI optocoupler datasheet
```

> ⚠️ **PCB note:** The Eagle `.brd` layout has known wiring bugs and should not be sent to a fab without review and correction.

---

## Setup

### Arduino Libraries Required

- **MIDI Library** — [FortySevenEffects/arduino_midi_library](https://github.com/FortySevenEffects/arduino_midi_library)
- **SPI** — built into the Arduino/Teensy core

### Upload Steps

1. Install [Teensyduino](https://www.pjrc.com/teensy/teensyduino.html)
2. Select board: **Teensy++ 1.0**
3. Set USB Type to **Serial** (for debug output)
4. Open `sketch_MIDI_to_CV/sketch_MIDI_to_CV.ino`
5. Upload

MIDI runs at 31250 baud on the hardware UART. Debug output runs at 57600 baud on USB Serial.

---

## Known Issues & Future Work

- **PCB layout bugs** — Eagle `.brd` has routing errors; needs a PCB revision before manufacturing
- **Monophonic only** — no chord support; the note stack gives last-note priority but a single voice
- **Firmware untested since revision** — the 2026 firmware changes (dual-channel DAC,
  VCF CC 74, note stack, channel filtering, non-blocking LED) have not yet been flashed
  and verified on hardware

### Fixed in the 2026 revision

- **VCF CV** — DAC channel B is now driven from MIDI CC 74
- **MIDI channel filtering** — `MIDI.begin(MIDIChannel)` replaces `MIDI_CHANNEL_OMNI`
- **Gate latency** — the LED blink is non-blocking, so Note On no longer delays the DAC write by 25 ms
- **Stuck-note edge cases** — a note stack prevents Note Off of an inactive note from cutting the gate

---

## License

GNU General Public License v2.0 — see [LICENSE](LICENSE).

If you use or build on this project, please mention [github.com/utopikprod](https://github.com/utopikprod/) as a reference.

---

## References

- [x0x-heart (Open Music Labs)](http://www.openmusiclabs.com/projects/x0x-heart/)
- [Teensy++ 1.0 (PJRC)](https://www.pjrc.com/teensy/)
- [MCP4922 datasheet](Documents/Datasheets/MCP4922.pdf)
- [6N138 optocoupler datasheet](Documents/Datasheets/6N138.pdf)
- [MIDI electrical specification](https://www.midi.org/specifications-old/item/midi-din-electrical-specification)
