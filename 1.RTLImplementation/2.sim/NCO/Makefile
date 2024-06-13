# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/NCO.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = nco_sig

# Python test module(s)
MODULE = NCO_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
	

