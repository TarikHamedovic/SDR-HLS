# Include the general configuration file
include ../config.mk

# Source directories
SIM_SRC = $(PWD)
HW_SRC = ../../1.hw
V_SRC = $(HW_SRC)/verilog
SV_SRC = $(HW_SRC)/systemverilog
ARST_SV_SRC = $(HW_SRC)/withreset/systemverilog
ARST_V_SRC = $(HW_SRC)/withreset/verilog
IP_SRC = $(HW_SRC)/IP


# Verilog sources
#VERILOG_SOURCES += $(V_SRC)/top_v2.v
#VERILOG_SOURCES += $(V_SRC)/Mixer.v
#VERILOG_SOURCES += $(V_SRC)/AMDemod.v
#VERILOG_SOURCES += $(V_SRC)/CIC.v
#VERILOG_SOURCES += $(V_SRC)/ecp5pll.sv
#VERILOG_SOURCES += $(V_SRC)/PWM.v
#VERILOG_SOURCES += $(V_SRC)/sinewave_generator.v
#VERILOG_SOURCES += $(V_SRC)/sinewave_table.v
#VERILOG_SOURCES += $(V_SRC)/UartRX.v


VERILOG_SOURCES += $(IP_SRC)/EHXPLLL.v
VERILOG_SOURCES += $(IP_SRC)/PLL.v
VERILOG_SOURCES += $(IP_SRC)/VLO.v
VERILOG_SOURCES += $(IP_SRC)/VHI.v

#SystemVerilog sources
#VERILOG_SOURCES += $(SV_SRC)/top.sv
#VERILOG_SOURCES += $(SV_SRC)/Mixer.sv
#VERILOG_SOURCES += $(SV_SRC)/AMDemod.sv
#VERILOG_SOURCES += $(SV_SRC)/CIC.sv
#VERILOG_SOURCES += $(V_SRC)/ecp5pll.sv
#VERILOG_SOURCES += $(SV_SRC)/PWM.sv
#VERILOG_SOURCES += $(SV_SRC)/sinewave_generator.sv
#VERILOG_SOURCES += $(SV_SRC)/sinewave_table.sv
#VERILOG_SOURCES += $(SV_SRC)/quarterwave_generator.sv
#VERILOG_SOURCES += $(SV_SRC)/quarterwave_table.sv
#VERILOG_SOURCES += $(V_SRC)/UartRX.v
## With arst
VERILOG_SOURCES += $(ARST_SV_SRC)/top.sv
VERILOG_SOURCES += $(ARST_SV_SRC)/Mixer.sv
VERILOG_SOURCES += $(ARST_SV_SRC)/AMDemod.sv
VERILOG_SOURCES += $(ARST_SV_SRC)/CIC.sv
#VERILOG_SOURCES += $(V_SRC)/ecp5pll.sv
VERILOG_SOURCES += $(ARST_SV_SRC)/PWM.sv
#VERILOG_SOURCES += $(SV_SRC)/sinewave_generator.sv
#VERILOG_SOURCES += $(SV_SRC)/sinewave_table.sv
VERILOG_SOURCES += $(ARST_SV_SRC)/quarterwave_generator.sv
VERILOG_SOURCES += $(ARST_SV_SRC)/quarterwave_table.sv
VERILOG_SOURCES += $(ARST_V_SRC)/UartRX.v
	

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = top

# Python test module(s)
MODULE = top_tb

# Define the clean target
.PHONY: clean
clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

# Set default values for the environment variables
DATA_WIDTH ?= 12
#COUNTER_BITS ?= 10
#OFFSET ?= 0
CLOCK_VALUE ?= 12.5
ITERATIONS ?= 100

# Simulator and Parameter declaration
SIMULATOR ?= icarus
#COMPILE_ARGS += -P$(TOPLEVEL).INPUT_WIDTH=$(INPUT_WIDTH)
#COMPILE_ARGS += -P$(TOPLEVEL).COUNTER_WIDTH=$(COUNTER_BITS)
#COMPILE_ARGS += -P$(TOPLEVEL).OFFSET=$(OFFSET)

# Define the test target
.PHONY: test
test:
	@DATA_WIDTH=$(INPUT_WIDTH) COUNTER_BITS=$(COUNTER_BITS) OFFSET=$(OFFSET) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS) \
	make -C . SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Run the simulation
.PHONY: run
run:
	DATA_WIDTH=$(INPUT_WIDTH) COUNTER_BITS=$(COUNTER_BITS) OFFSET=$(OFFSET) CLOCK_VALUE=$(CLOCK_VALUE) ITERATIONS=$(ITERATIONS) \
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
# make run INPUT_WIDTH=12 COUNTER_BITS=10 CLOCK_VALUE=12.5 ITERATIONS=100

