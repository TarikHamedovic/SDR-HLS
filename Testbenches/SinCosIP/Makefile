# Makefile

# defaults
SIM ?= modelsim
WAVES ?= 1  # Enable wave dump
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += SinCos.v
# use VHDL_SOURCES for VHDL files

VERILOG_INCLUDE_DIRS += SinCos

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = SinCos

# MODULE is the basename of the Python test file
MODULE = SinCos_tb

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
