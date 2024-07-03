# Include the general configuration file
include ../../../config.mk

# Verilog sources
VERILOG_SOURCES += math_sqrt_simplifiedsamovi.v
VERILOG_SOURCES += math_sqrtr_csm_block.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = math_sqrt_simplifiedsamovi

# Python test module(s)
MODULE = math_sqrt_simplifiedsamovi_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
