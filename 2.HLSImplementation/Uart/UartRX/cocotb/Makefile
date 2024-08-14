# Include the general configuration file
include /home/user/SDR-HLS/1.RTLImplementation/2.sim/config.mk

# Verilog sources
VERILOG_SOURCES += uart_rx.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = uart_rx

# Python test module(s)
MODULE = uart_rx_tb

# Define the clean target
.PHONY: clean
clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

# Set default values for the environment variables
CLOCK_VALUE ?= 40.0
CLOCKS_PER_BIT ?= 217
BAUD_RATE ?= 115200
ITERATIONS ?= 50

# Simulator and Parameter declaration
SIMULATOR ?= icarus

# Define the test target
.PHONY: test
test:
	@CLOCK_VALUE=$(CLOCK_VALUE) CLOCKS_PER_BIT=$(CLOCKS_PER_BIT) BAUD_RATE=$(BAUD_RATE) ITERATIONS=$(ITERATIONS) \
	make -C . SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Run the simulation
.PHONY: run
run:
	CLOCK_VALUE=$(CLOCK_VALUE) CLOCKS_PER_BIT=$(CLOCKS_PER_BIT) BAUD_RATE=$(BAUD_RATE) ITERATIONS=$(ITERATIONS) \
	$(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Define the help target
.PHONY: help_tb
help_tb:
	@echo "Usage:"
	@echo "  make run [CLOCK_VALUE=<value>] [CLOCKS_PER_BIT=<value>] [BAUD_RATE=<value>] [ITERATIONS=<values>] [SIMULATOR=<simulator>]"
	@echo ""
	@echo "Targets:"
	@echo "  clean       - Remove generated files and directories"
	@echo "  test        - Run the tests with the specified environment variables"
	@echo "  run         - Run the tests (shortcut for make test)"
	@echo "  help_tb     - Display this help message"
	@echo ""
	@echo "Variables:"
	@echo "  CLOCK_VALUE      - Clock value in ns (default: 40.0)"
	@echo "  CLOCKS_PER_BIT   - Number of clocks per bit (default: 217)"
	@echo "  BAUD_RATE        - Baud rate for UART (default: 115200)"
	@echo "  ITERATIONS       - Number of iterations for the test (default: 50)"
	@echo "  SIMULATOR        - Simulator to use (default: icarus)"

# Usage:
# make run CLOCK_VALUE=40.0 CLOCKS_PER_BIT=217 BAUD_RATE=115200 ITERATIONS=50

