#!/bin/bash

# Compile the Verilog files
iverilog -o adc_tb tb/adc_tf.v hdl/adc_top.v hdl/box_ave.v hdl/sigmadelta_adc.v

# Run the simulation and generate the VCD file
vvp adc_tb

# Open the waveform in GTKWave
gtkwave adc.vcd

