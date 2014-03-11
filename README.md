AMCVC
=====

Arduino MIDI to CV converter

Purpose:

I created this code for easily pass from MIDI to CV using an arduino platform thru a MAX526 12 bits DAC.
My schematic also use a specific shift register component doing itself serial to parallel conversion (74HC595).

The code include specific MIDI CC messages used for tb-303 specific controls. I use it for pilot a x0x-heart board: http://www.openmusiclabs.com/projects/x0x-heart/

The Arduino platform I use is a specific branch named Teensy. I use an old Teensy++ 1.0 for this project since it is pretty simple, I really don't need more (it is already overkill). You can find info and interesting resources here: https://www.pjrc.com/teensy/
(The last version is way more powerfull than the one I use)


Thanks to mention http://github.com/utopikprod/ as reference if you use it.
