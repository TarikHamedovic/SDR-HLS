# Include the general configuration file
include ../config.mk

# Source directories
SIM_SRC = $(PWD)
HW_SRC = ../../1.hw
V_SRC = $(HW_SRC)/IP

#VERILOG_SOURCES += VHI.v
#VERILOG_SOURCES += VLO.v
#VERILOG_SOURCES += MULT18X18D.v
VERILOG_SOURCES += Multiplier.v
VERILOG_SOURCES += top.v

# VHDL sources (if any)
VHDL_SOURCES = 

# Top-level module name
TOPLEVEL = top

# Python test module(s)
MODULE = multiplier_tb

# Define the clean target
.PHONY: clean

clean::
	$(RM) -r __pycache__
	$(RM) -r sim_build
	$(RM) results.xml
	$(RM) *.vcd

# Simulator and Parameter declaration
#SIMULATOR ?= icarus
SIMULATOR ?= questa
# Define the test target
.PHONY: test
test:
	make -C . SIM=$(SIMULATOR) TOPLEVEL_LANG=verilog TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

# Run the simulation
.PHONY: run
run:
	$(MAKE) test SIMULATOR=$(SIMULATOR) TOPLEVEL=$(TOPLEVEL) MODULE=$(MODULE)

