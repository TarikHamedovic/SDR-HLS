#========================================================================================
# Toolchain Directories and Executable Commands
#========================================================================================
BLD_DIR  = $(CURDIR)
HW_SRC  := $(BLD_DIR)/../1.hw
SIM_SRC  := $(BLD_DIR)/../2.sim

TOOL_ROOT = /home/user/FPGA/tools

#========================================================================================
# Project, Board and Chip Name
#========================================================================================
PROJECT = onebitsdr
BOARD = ulx3s
FPGA_PREFIX    ?=
# FPGA_SIZE Options: 12 25 45 85 um-85 um5g-85
FPGA_SIZE      ?= 85
FPGA_CHIP      ?= lfe5u-$(FPGA_SIZE)f
# FLASH_READ_MHZ Options: 2.4 4.8 9.7 19.4 38.8 62.0
FLASH_READ_MHZ ?= 62.0
# FLASH_READ_MODE Options: fast-read dual-spi qspi
FLASH_READ_MODE ?= fast-read

#========================================================================================
# If Programming with OpenOCD
#========================================================================================
# using local latest openocd until in linux distribution
OPENOCD=openocd_ft232r
# default onboard usb-jtag
OPENOCD_INTERFACE=$(SCRIPTS)/ft231x.ocd
# ulx3s-jtag-passthru
#OPENOCD_INTERFACE=$(SCRIPTS)/ft231x2.ocd
# ulx2s
#OPENOCD_INTERFACE=$(SCRIPTS)/ft232r.ocd
# external jtag
#OPENOCD_INTERFACE=$(SCRIPTS)/ft2232.ocd

#========================================================================================
# Design Files
#========================================================================================
CONSTRAINTS = $(HW_SRC)/constraints/OneBitSDR.lpf
TOP_MODULE = top

# Choose between systemverilog or verilog
DESIGN_LANG ?= systemverilog# Options: verilog, systemverilog

ifeq ($(DESIGN_LANG), systemverilog)
    TOP_MODULE_FILE = $(HW_SRC)/verilog/top.sv
    VERILOG_FILES := $(shell cat $(HW_SRC)/rtl_systemverilog.filelist)
else ifeq ($(DESIGN_LANG), verilog)
    TOP_MODULE_FILE = $(HW_SRC)/verilog/top.v
    VERILOG_FILES := $(shell cat $(HW_SRC)/rtl_verilog.filelist)
else
    $(error Unknown design language "$(DESIGN_LANG)". Valid options are "verilog" or "systemverilog".)
endif

#========================================================================================
# Synthesis Options
#========================================================================================
# Reference for yosys options: https://yosyshq.readthedocs.io/projects/yosys/en/latest/cmd/synth_ecp5.html
YOSYS_OPTIONS = 

#========================================================================================
# Placement and Route Options
#========================================================================================
# Call nextpnr-ecp5 in terminal for help
NEXTPNR_OPTIONS = --timing-allow-fail

#========================================================================================
# Scripts
#========================================================================================
SCRIPTS = scripts

#========================================================================================
# Toolchain Selection
#========================================================================================
#TOOLCHAIN ?= trellis
TOOLCHAIN ?= diamond

ifeq ($(TOOLCHAIN), diamond)
    include $(SCRIPTS)/diamond_main.mk
else ifeq ($(TOOLCHAIN), trellis)
    include $(SCRIPTS)/trellis_main.mk
else
    $(error Unknown toolchain "$(TOOLCHAIN)". Valid options are "diamond" or "trellis".)
endif

