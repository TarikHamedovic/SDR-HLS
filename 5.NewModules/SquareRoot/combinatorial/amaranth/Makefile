# Include the general configuration file
CONFIG_FOLDER = /home/user/SDR-HLS/2.HLSImplementation
include $(CONFIG_FOLDER)/config.mk

# Verilog sources
VERILOG_SOURCES += sqrt_combinatorial.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = top

# Python test module(s)
MODULE = sqrt_combinatorial_tb

# Define the default target
all: verilog_conversion

# Target to run Amaranth Verilog conversion
.PHONY: verilog_conversion
verilog_conversion:
	@echo "Engaging Amaranth Verilog conversion process..."
	python3 sqrt_combinatorial.py -v

# Define the clean target
.PHONY: clean
clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

