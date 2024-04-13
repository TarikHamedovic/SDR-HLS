#!/bin/bash

python3 generateLUT.py

wait

make

wait

gtkwave simpleSine_waves.vcd
