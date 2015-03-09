#!/bin/bash

echo == Resonances in cylindrical cavity ==
#../cylindrical_cavity.py
./cylindrical_cavity_modes_annotation.py
../ringdown_analysis.py HollowCyl_timedomain.dat
mv annotate.txt annotate_cylinder.txt
mv oscillator_spectrum.png Cavity_oscillator_spectrum.png

echo == Modes of a metamaterial cell ==
#../cdh.py Kz=50e3
#../ringdown_analysis.py cdh/*dat 
#mv oscillator_spectrum.png CDH_oscillator_spectrum.png

echo == Experimental resonance peaks of water vapour ==
#cp annotate_water.txt annotate.txt
#../ringdown_analysis.py input_tdts.dat
#mv oscillator_spectrum.png terahertz_H2Ovapour_spectrum.png
