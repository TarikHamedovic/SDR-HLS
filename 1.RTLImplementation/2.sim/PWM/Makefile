# Include the general configuration file
include ../config.mk

# Source directories
SIM_SRC = $(PWD)
HW_SRC = ../../1.hw
V_SRC = $(HW_SRC)/verilog
SV_SRC = $(HW_SRC)/systemverilog

# Verilog sources
VERILOG_SOURCES += $(V_SRC)/PWM.v
# Uncomment the line below to use SystemVerilog source
#VERILOG_SOURCES += $(SV_SRC)/PWM.sv

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = PWM

# Python test module(s)
MODULE = PWM_tb

# Define the clean target
.PHONY: clean
clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

# Set default values for the environment variables
DATA_WIDTH ?= 12
COUNTER_BITS ?= 10
OFFSET ?= 0
CLOCK_VALUE ?= 12.5
ITERATIONS ?= 100

# Simulator and Parameter declaration
SIMULATOR ?= icarus
COMPILE_ARGS += -P$(TOPLEVEL).DATA_WIDTH=$(DATA_WIDTH)
COMPILE_ARGS += -P$(TOPLEVEL).COUNT_WIDTH=$(COUNTER_BITS)
COMPILE_ARGS += -P$(TOPLEVEL).OFFSET=$(OFFSET)

# Define the test target
.PHONY: test
test:
	@DATA_WIDTH=$(DATA_WIDTH) COUNTER_BITS=$(COUNTER_BITS) OFFSET=$(OFFSET) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS) \
	make -C . SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Run the simulation
.PHONY: run
run:
	DATA_BITS=$(DATA_WIDTH) COUNTER_BITS=$(COUNTER_BITS) OFFSET=$(OFFSET) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS) \
	$(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Define the help target
.PHONY: help_tb
help_tb:
	@echo "Usage:"
	@echo "  make run [DATA_WIDTH=<bits>] [COUNTER_BITS=<bits>] [OFFSET = <value>] [CLOCK_VALUE=<value>] [ITERATIONS=<values>] [SIMULATOR=<simulator>]"
	@echo ""
	@echo "Targets:"
	@echo "  clean       - Remove generated files and directories"
	@echo "  test        - Run the tests with the specified environment variables"
	@echo "  run         - Run the tests (shortcut for make test)"
	@echo "  help_tb     - Display this help message"
	@echo ""
	@echo "Variables:"
	@echo "  DATA_WIDTH      - Number of input bits (default: 12)"
	@echo "  COUNTER_BITS     - Number of counter bits (default: 10)"
	@echo "  OFFSET           - Value of offset (default: 0)"
	@echo "  CLOCK_VALUE      - Clock value in ns (default: 12.5 or 80 MHz)"
	@echo "  ITERATIONS       - Number of iterations for the test (default: 100)"
	@echo "  SIMULATOR        - Simulator to use (default: icarus)"

# Usage:
# make run DATA_WIDTH=12 COUNTER_BITS=10 CLOCK_VALUE=12.5 ITERATIONS=100

