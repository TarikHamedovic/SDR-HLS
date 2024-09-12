# Include the general configuration file
include /home/user/SDR-HLS/1.RTLImplementation/2.sim/config.mk

# Verilog sources
VERILOG_SOURCES += ../sine_cosine.sv
VERILOG_SOURCES += ../nco.sv
VERILOG_SOURCES += ../quarterwave_table.sv

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = nco

# Python test module(s)
MODULE = nco_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
