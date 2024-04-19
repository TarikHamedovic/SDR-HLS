# Makefile

# defaults
SIM ?= icarus
WAVES ?= 1  # Enable wave dump
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += hdl/AMDemod.v
# use VHDL_SOURCES for VHDL files

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = AMDemodulator

# MODULE is the basename of the Python test file
MODULE = AMDemod_tb

# Added options #

# Defaults internally to 1. If the value is 1, log lines displayed in the terminal will be shorter.
# It will print only time, message type (INFO, WARNING, ERROR, …) and the log message itself. Set to 0 if you wish to have the full format message.
COCOTB_REDUCED_LOG_FMT = 0

# The default logging level to use. This is set to INFO unless overridden. Valid values are TRACE, DEBUG, INFO, WARNING, ERROR, CRITICAL.
# TRACE is used for internal low-level logging and produces very verbose logs.
COCOTB_LOG_LEVEL = INFO

# Defines how to resolve bits with a value of X, Z, U or W when being converted to integer. Valid settings are: VALUE_ERROR, ZEROS, ONES, RANDOM
COCOTB_RESOLVE_X = VALUE_ERROR


# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
