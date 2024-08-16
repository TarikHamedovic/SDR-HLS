# Include the general configuration file
CONFIG_ROOT = ../../../../1.RTLImplementation/2.sim
include $(CONFIG_ROOT)/config.mk

# Verilog sources
VERILOG_SOURCES += ../1.hw/quarterwave_generator.v
VERILOG_SOURCES += ../1.hw/quarterwave_table.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = quarterwave_generator

# Python test module(s)
MODULE = quarterwave_generator_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
