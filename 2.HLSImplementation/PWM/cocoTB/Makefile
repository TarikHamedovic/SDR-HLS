# Include the general configuration file
include ../../config.mk

# Verilog sources
VERILOG_SOURCES += PWM.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = top

# Python test module(s)
MODULE = PWM_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) PWM_waves.vcd
	$(RM) -r sim_build
	$(RM) results.xml

