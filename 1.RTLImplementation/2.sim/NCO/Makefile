# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/NCO.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = nco_sig

# Python test module(s)
MODULE = NCO_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
	
# Set default values for the environment variables
INPUT_BITS ?= 12
CLOCK_VALUE ?= 12.5
NUM_TEST_VALUES ?= 100
SIMULATOR ?= icarus
TOPLEVEL ?= NCO
MODULE ?= NCO_test

# Run the simulation
run: test
	INPUT_BITS=$(INPUT_BITS) CLOCK_VALUE=$(CLOCK_VALUE) NUM_TEST_VALUES=$(NUM_TEST_VALUES) $(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Usage:
# make run INPUT_BITS=12 CLOCK_VALUE=12.5 NUM_TEST_VALUES=100


