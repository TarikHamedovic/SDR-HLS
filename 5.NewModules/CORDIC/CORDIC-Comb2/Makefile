# Makefile

# defaults
SIM ?= icarus
WAVES ?= 1  # Enable wave dump
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += cordic.sv

# use VHDL_SOURCES for VHDL files

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = cordic

# MODULE is the basename of the Python test file
MODULE = cordic_tb

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
