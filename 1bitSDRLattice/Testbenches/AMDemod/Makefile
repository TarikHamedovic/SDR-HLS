# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/AMDemod.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = AMDemodulator

# Python test module(s)
MODULE = AMDemod_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd
	
# Define the test target
.PHONY: test
test:
	@INPUT_BITS=$(INPUT_BITS) CLOCK_VALUE=$(CLOCK_VALUE) NUM_TEST_VALUES=$(NUM_TEST_VALUES) \
		make SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE) 

# Set default values for the environment variables
INPUT_BITS ?= 12
CLOCK_VALUE ?= 12.5
NUM_TEST_VALUES ?= 100
SIMULATOR ?= icarus
TOPLEVEL ?= AMDemod
MODULE ?= AMDemod_test

# Run the simulation
run: test
	INPUT_BITS=$(INPUT_BITS) CLOCK_VALUE=$(CLOCK_VALUE) NUM_TEST_VALUES=$(NUM_TEST_VALUES) $(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Usage:
# make run INPUT_BITS=12 CLOCK_VALUE=12.5 NUM_TEST_VALUES=100


