# Include the general configuration file
include /home/user/SDR-HLS/2.HLSImplementation/config.mk

# Verilog sources
VERILOG_SOURCES += sqrt_wrapper.sv

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = sqrt_wrapper

# Python test module(s)
MODULE = sqrt_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
	

