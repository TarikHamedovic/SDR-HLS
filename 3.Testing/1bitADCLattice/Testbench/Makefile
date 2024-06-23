# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/adc_top.v
VERILOG_SOURCES += hdl/box_ave.v
VERILOG_SOURCES += hdl/sigmadelta_adc.v
VERILOG_SOURCES += hdl/PWM.v
# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = ADC_top

# Python test module(s)
MODULE = adc_tf

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
