# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/top.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = top

# Python test module(s)
MODULE = top_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

