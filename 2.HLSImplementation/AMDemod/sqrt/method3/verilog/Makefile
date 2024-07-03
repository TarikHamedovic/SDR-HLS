# Include the general configuration file
include ../../../../config.mk

# Verilog sources
#VERILOG_SOURCES += square_root_orig.v
VERILOG_SOURCES += square_root_my.v


# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = square_root

# Python test module(s)
MODULE = square_root_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
