# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/systemverilog/cic.sv
VERILOG_SOURCES += hdl/systemverilog/integrator.sv
VERILOG_SOURCES += hdl/systemverilog/comb.sv
VERILOG_SOURCES += hdl/systemverilog/decimator.sv

#VERILOG_SOURCES += hdl/verilog/integrator.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = cic

# Python test module(s)
MODULE = cic_tb

# Define the clean target
.PHONY: clean
clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

