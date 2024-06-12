# Include the general configuration file
include ../config.mk

# Verilog sources
VERILOG_SOURCES += hdl/Mixer.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = Mixer

# Python test module(s)
MODULE = Mixer_tb

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
	@$(MAKE) SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE) \
		INPUT_BITS=$(INPUT_BITS) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS) 

# Set default values for the environment variables
INPUT_BITS ?= 12
CLOCK_VALUE ?= 12.5
ITERATIONS ?= 100
SIMULATOR ?= icarus

# Run the simulation
.PHONY: run
run:
	$(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE) \
		INPUT_BITS=$(INPUT_BITS) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS)

# Usage:
# make run INPUT_BITS=12 CLOCK_VALUE=12.5 ITERATIONS=100

