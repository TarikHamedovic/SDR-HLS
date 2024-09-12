# Include the general configuration file
include ../../../1.RTLImplementation/2.sim/config.mk

# Verilog sources
VERILOG_SOURCES += Mixer.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = Mixer

# Python test module(s)
MODULE = mixer_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

# Set default values for the environment variables
DATA_WIDTH ?= 12
CLOCK_VALUE ?= 12.5
ITERATIONS ?= 100

# Simulator and Parameter declaration
SIMULATOR ?= icarus

# Define the test target
.PHONY: test
test:
	@DATA_WIDTH=$(DATA_WIDTH) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS) \
		make SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE) 

# Run the simulation
.PHONY: run
run:
	DATA_WIDTH=$(DATA_WIDTH) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS) $(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Define the help target
.PHONY: help_tb
help_tb:
	@echo "Usage:"
	@echo "  make run [INPUT_BITS=<bits>] [CLOCK_VALUE=<value>] [ITERATIONS=<values>] [SIMULATOR=<simulator>]"
	@echo ""
	@echo "Targets:"
	@echo "  clean       - Remove generated files and directories"
	@echo "  test        - Run the tests with the specified environment variables"
	@echo "  run         - Run the tests (shortcut for make test)"
	@echo "  help_tb     - Display this help message"
	@echo ""
	@echo "Variables:"
	@echo "  DATA_WIDTH      - Number of input bits (default: 12)"
	@echo "  CLOCK_VALUE      - Clock value in ns (default: 12.5 or 80 MHz)"
	@echo "  ITERATIONS       - Number of iterations for the test (default: 100)"
	@echo "  SIMULATOR        - Simulator to use (default: icarus)"

# Usage:
# make run DATA_WIDTH=12 CLOCK_VALUE=12.5 ITERATIONS=100

