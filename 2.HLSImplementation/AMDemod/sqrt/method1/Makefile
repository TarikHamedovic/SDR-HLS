# Include the general configuration file
include ../../../config.mk

# Verilog sources
VERILOG_SOURCES += sqrt_int.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = sqrt_int

# Python test module(s)
MODULE = sqrt_int_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
