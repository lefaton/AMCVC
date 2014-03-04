AMCVC
=====

Arduino MIDI to CV converter

Purpose:

I created this code for easily pass from MIDI to CV using an arduino platform thru a MAX526 12 bits DAC.
My schematic also use a specific component doing itself serial to parallel conversion (MIC810) which basically is a pre-programmed PIC.

The code include specific MIDI CC messages used for tb-303 specific controls. I use it for pilot a x0x-heart board: http://www.openmusiclabs.com/projects/x0x-heart/

Thanks to mention http://github.com/utopikprod/ as reference if you use it.
