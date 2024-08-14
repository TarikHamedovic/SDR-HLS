# Include the general configuration file
include ../config.mk

# Source directories
SIM_SRC = $(PWD)
HW_SRC = ../../1.hw
V_SRC = $(HW_SRC)/verilog
SV_SRC = $(HW_SRC)/systemverilog

# Verilog sources
VERILOG_SOURCES += $(V_SRC)/AMDemod.v
#VERILOG_SOURCES += $(SV_SRC)/AMDemod.sv
#VERILOG_SOURCES += $(SV_SRC)/AMDemod_TDM.sv

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

# Set default values for the environment variables
INPUT_WIDTH ?= 12
CLOCK_VALUE ?= 12.5
NUM_TEST_VALUES ?= 100

# Simulator and Parameter declaration
SIMULATOR ?= icarus
COMPILE_ARGS += -P$(TOPLEVEL).INPUT_WIDTH=$(INPUT_WIDTH)

# Define the test target
.PHONY: test
test:
	@INPUT_WIDTH=$(INPUT_WIDTH) CLOCK_VALUE=$(CLOCK_VALUE) NUM_TEST_VALUES=$(NUM_TEST_VALUES) \
		make SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE) 

# Run the simulation
run:
	INPUT_BITS=$(INPUT_BITS) CLOCK_VALUE=$(CLOCK_VALUE) NUM_TEST_VALUES=$(NUM_TEST_VALUES) $(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Define the help target
.PHONY: help_tb
help_tb:
	@echo "Usage:"
	@echo "  make run [INPUT_BITS=<bits>] [CLOCK_VALUE=<value>] [NUM_TEST_VALUES=<values>] [SIMULATOR=<simulator>]"
	@echo ""
	@echo "Targets:"
	@echo "  clean       - Remove generated files and directories"
	@echo "  test        - Run the tests with the specified environment variables"
	@echo "  run         - Run the tests (shortcut for make test)"
	@echo "  help_tb        - Display this help message"
	@echo ""
	@echo "Variables:"
	@echo "  INPUT_WIDTH      - Number of input bits (default: 12)"
	@echo "  CLOCK_VALUE      - Clock value in ns (default: 12.5 or 80 MHz)"
	@echo "  NUM_TEST_VALUES  - Number of test values (default: 100), +5 edge cases"
	@echo "  SIMULATOR        - Simulator to use (default: icarus)"

# Usage:
# make run INPUT_BITS=12 CLOCK_VALUE=12.5 NUM_TEST_VALUES=100

