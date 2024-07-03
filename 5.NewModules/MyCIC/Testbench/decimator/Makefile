# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/systemverilog/decimator.sv
#VERILOG_SOURCES += hdl/verilog/integrator.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = decimator

# Python test module(s)
MODULE = decimator_tb

# Define the clean target
.PHONY: clean
clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

