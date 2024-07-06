# Include the general configuration file
include /home/user/SDR-HLS/2.HLSImplementation/config.mk

# Verilog sources
VERILOG_SOURCES += sqrt_combinatorial.sv

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = sqrt_combinatorial

# Python test module(s)
MODULE = sqrt_combinatorial_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
	

