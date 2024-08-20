# Include the general configuration file
include ../../config.mk

# Source directories
SIM_SRC = $(PWD)
HW_SRC = ../../../1.hw
V_SRC = $(HW_SRC)/verilog
SV_SRC = $(HW_SRC)/systemverilog

# Verilog sources
VERILOG_SOURCES += $(V_SRC)/CIC_v2.v
#VERILOG_SOURCES += $(SV_SRC)/CIC_v2.sv

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = CIC

# Python test module(s)
MODULE = CIC_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

# Set default values for the environment variables
DATA_WIDTH ?= 12
REGISTER_WIDTH ?= 64
CLOCK_VALUE ?= 12.5
DECIMATION_RATIO ?= 16
N_STAGES ?= 5
ITERATIONS ?= 50

# Simulator and Parameter declaration
SIMULATOR ?= icarus
COMPILE_ARGS += -P$(TOPLEVEL).DATA_WIDTH=$(DATA_WIDTH)
COMPILE_ARGS += -P$(TOPLEVEL).REGISTER_WIDTH=$(REGISTER_WIDTH)
COMPILE_ARGS += -P$(TOPLEVEL).DECIMATION_RATIO=$(DECIMATION_RATIO)
COMPILE_ARGS += -P$(TOPLEVEL).N_STAGES=$(N_STAGES)

# Define the test target
.PHONY: test
test:
	@DATA_WIDTH=$(DATA_WIDTH) CLOCK_VALUE=$(CLOCK_VALUE) DECIMATION_RATIO=$(DECIMATION_RATIO) \
	ITERATIONS=$(ITERATIONS) REGISTER_WIDTH=$(REGISTER_WIDTH) N_STAGES=$(N_STAGES) \
	$(MAKE) $(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)


# Run the simulation
.PHONY: run
run:
	DATA_WIDTH=$(DATA_WIDTH) CLOCK_VALUE=$(CLOCK_VALUE) DECIMATION_RATIO=$(DECIMATION_RATIO) \
	ITERATIONS=$(ITERATIONS) REGISTER_WIDTH=$(REGISTER_WIDTH) N_STAGES=$(N_STAGES) $(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Define the help target
.PHONY: help_tb
help_tb:
	@echo "Usage:"
	@echo "  make run [DATA_WIDTH=<bits>] [CLOCK_VALUE=<value>] [DECIMATION_RATIO=<value>] [REGISTER_WIDTH=<width>] [ITERATIONS=<values>] [SIMULATOR=<simulator>]"
	@echo ""
	@echo "Targets:"
	@echo "  clean       - Remove generated files and directories"
	@echo "  test        - Run the tests with the specified environment variables"
	@echo "  run         - Run the tests (shortcut for make test)"
	@echo "  help_tb     - Display this help message"
	@echo ""
	@echo "Variables:"
	@echo "  DATA_WIDTH       - Number of input bits (default: 12)"
	@echo "  CLOCK_VALUE      - Clock value in ns (default: 12.5 or 80 MHz)"
	@echo "  DECIMATION_RATIO - Decimation ratio (default: 16)"
	@echo "  REGISTER_WIDTH   - Bit width for internal registers (default: 64)"
	@echo "  N_STAGES         - Number of CIC stages (default: 5)"
	@echo "  ITERATIONS       - Number of iterations for the test (default: 50)"
	@echo "  SIMULATOR        - Simulator to use (default: icarus)"

# Usage:
# make run DATA_WIDTH=12 CLOCK_VALUE=12.5 DECIMATION_RATIO=16 REGISTER_WIDTH=64 N_STAGES=5 ITERATIONS=50
