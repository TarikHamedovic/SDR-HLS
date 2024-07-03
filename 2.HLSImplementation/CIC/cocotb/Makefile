# Include the general configuration file
include ../../config.mk

# Verilog sources
VERILOG_SOURCES += CIC.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = top

# Python test module(s)
MODULE = CIC_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
