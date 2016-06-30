AMCVC
=====

Arduino MIDI to CV converter

Purpose:

I created this project for easily pass from MIDI to CV using an arduino platform thru a MCP4922 12 bits DAC.

The code include specific MIDI CC messages that are tb-303 specific controls. I will use this board as a daughter board for drive a x0x-heart board thru MIDI connection: http://www.openmusiclabs.com/projects/x0x-heart/

The Arduino platform I use is a specific branch named Teensy. I use an old Teensy++ 1.0 for this project since it is pretty simple, I don't need more. You can find info and interesting resources here: https://www.pjrc.com/teensy/
(The last version is way more powerfull)

Thanks to mention http://github.com/utopikprod/ as reference if you use it.

NOTE:
At this point, the project is on hold. The code is working well (was tested successfully on the prototype), but I have some bugs on the PCB layout. I did not find time for fix that until now, but at some point I will...
