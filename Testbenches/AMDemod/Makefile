# Makefile

# defaults
SIM ?= icarus
WAVES ?= 1  # Enable wave dump
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += AMDemod.v
# use VHDL_SOURCES for VHDL files

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = AMDemodulator

# MODULE is the basename of the Python test file
MODULE = AMDemod_tb

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
