# Include the general configuration file
CONFIG_FOLDER = /home/user/SDR-HLS/2.HLSImplementation
include $(CONFIG_FOLDER)/config.mk

# Verilog sources
VERILOG_SOURCES += sqrt_sequential_v2.sv

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = sqrt_sequential

# Python test module(s)
MODULE = sqrt_sequential_v2_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
	

