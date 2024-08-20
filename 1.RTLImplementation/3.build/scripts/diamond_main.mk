#========================================================================================
# Project, Board, and Chip Name
#========================================================================================
FPGA_PACKAGE ?= 6bg381c
# FLASH_SPI Options: 1:SPI (standard), 4:QSPI (quad)
FLASH_SPI    ?= 1
# FLASH_CHIP Options: is25lp032d is25lp128f s25fl164k
FLASH_CHIP   ?= is25lp032d

#========================================================================================
# Design Files
#========================================================================================
STRATEGY   ?= $(SCRIPTS)/ulx3s.sty
VHDL_FILES ?=
SBX_FILES  ?=
LOG_DIR    ?= log

#========================================================================================
# Tools Installation
#========================================================================================

#-------------------------------
# VHD2VL
#-------------------------------
VHD2VL ?= vhd2vl 
# Github reference: https://github.com/ldoolitt/vhd2vl
# Installation:
# $ git clone https://github.com/ldoolitt/vhd2vl.git
# $ cd vhd2vl
# $ make
# $ cd src
# $ sudo cp /home/user/FPGA/tools/vhd2vl/src/vhdl2vl /usr/local/bin/ 
# Or add src/vhd2vl to your PATH

#-------------------------------
# YOSYS
#-------------------------------
YOSYS ?= yosys
# Github reference: https://github.com/YosysHQ/yosys
# Installation:
# $ git clone https://github.com/YosysHQ/yosys.git
# $ cd yosys
# $ make config-clang
# $ git submodule update --init
# $ make -j$(nproc)
# $ sudo make install

#-------------------------------
# PRJTRELLIS
#-------------------------------
TRELLIS ?= /home/user/FPGA/tools/prjtrellis
# Github reference: https://github.com/SymbiFlow/prjtrellis
# Dependencies: 
# * Python 3.5 or later, including development libraries (python3-dev on Ubuntu)
# * A modern C++14 compiler (Clang is recommended)
# * CMake 3.5 or later
# * Boost
# * Git
# * Recent OpenOCD for device programming (--enable-ftdi required if building from source)
# Installation:
# $ git clone --recursive https://github.com/YosysHQ/prjtrellis
# $ cd libtrellis
# $ cmake -DCMAKE_INSTALL_PREFIX=/usr/local .
# $ make
# $ sudo make install

#-------------------------------
# NEXTPNR
#-------------------------------
NEXTPNR-ECP5 ?= nextpnr-ecp5
# Github reference nextpnr: https://github.com/YosysHQ/nextpnr
# Github reference nextpnr-ecp5 : https://github.com/YosysHQ/nextpnr?tab=readme-ov-file#nextpnr-ecp5
# Installation:
# For ECP5 support, install Project Trellis to /usr/local or another location, which should be passed as -DTRELLIS_INSTALL_PREFIX=/usr/local to CMake.
# $ cmake . -DARCH=ecp5 -DTRELLIS_INSTALL_PREFIX=/usr/local
# $ make -j$(nproc)
# $ sudo make install

#========================================================================================
# Chip Select
#========================================================================================
ifeq ($(FPGA_CHIP), lfe5u-12f)
  CHIP_ID=0x21111043
  MASK_FILE=LFE5U-45F.msk
endif
ifeq ($(FPGA_CHIP), lfe5u-25f)
  CHIP_ID=0x41111043
  MASK_FILE=LFE5U-45F.msk
endif
ifeq ($(FPGA_CHIP), lfe5u-45f)
  CHIP_ID=0x41112043
  MASK_FILE=LFE5U-45F.msk
endif
ifeq ($(FPGA_CHIP), lfe5u-85f)
  CHIP_ID=0x41113043
  MASK_FILE=LFE5U-85F.msk
endif

FPGA_K               ?= $(FPGA_SIZE)
IDCODE_CHIPID        ?=
FPGA_CHIP_EQUIVALENT ?= lfe5u-$(FPGA_K)f

#========================================================================================
# Open Source Synthesis Tools
#========================================================================================
ECPPLL        ?= $(TRELLIS)/libtrellis/ecppll
ECPPACK       ?= $(TRELLIS)/libtrellis/ecppack
TRELLISDB     ?= $(TRELLIS)/database
LIBTRELLIS    ?= $(TRELLIS)/libtrellis
BIT2SVF       ?= $(TRELLIS)/tools/bit_to_svf.py
YOSYS_OPTIONS ?=

#========================================================================================
# Clock Generator
#========================================================================================
CLK0_NAME      ?= clk0
CLK0_FILE_NAME ?= clocks/$(CLK0_NAME).v
CLK0_OPTIONS   ?= --input 25 --output 100 --s1 50 --p1 0 --s2 25 --p2 0 --s3 125 --p3 0

CLK1_NAME      ?= clk1
CLK1_FILE_NAME ?= clocks/$(CLK1_NAME).v
CLK1_OPTIONS   ?= --input 25 --output 100 --s1 50 --p1 0 --s2 25 --p2 0 --s3 125 --p3 0

CLK2_NAME      ?= clk2
CLK2_FILE_NAME ?= clocks/$(CLK2_NAME).v
CLK2_OPTIONS   ?= --input 25 --output 100 --s1 50 --p1 0 --s2 25 --p2 0 --s3 125 --p3 0

CLK3_NAME      ?= clk3
CLK3_FILE_NAME ?= clocks/$(CLK3_NAME).v
CLK3_OPTIONS   ?= --input 25 --output 100 --s1 50 --p1 0 --s2 25 --p2 0 --s3 125 --p3 0

#========================================================================================
# Closed Source Synthesis Tools
#========================================================================================
DIAMOND_BASE  ?= /home/user/FPGA/tools/diamond/usr/local/diamond
ifneq ($(wildcard $(DIAMOND_BASE)),)
  DIAMOND_BIN := $(shell find ${DIAMOND_BASE}/ -maxdepth 2 -name bin | sort -rn | head -1)
  DIAMONDC    := $(shell find ${DIAMOND_BIN}/ -name diamondc)
  DDTCMD      := $(shell find ${DIAMOND_BIN}/ -name ddtcmd)
  MASK_PATH   := $(shell find ${DIAMOND_BASE}/ -maxdepth 5 -name xpga -type d)/ecp5
endif

#========================================================================================
# Programming Tools
#========================================================================================
UJPROG                 ?= fujprog
OPENFPGALOADER         ?= openFPGALoader
OPENFPGALOADER_OPTIONS ?= --board ulx3s
FLEAFPGA_JTAG          ?= FleaFPGA-JTAG 
OPENOCD                ?= openocd
OPENOCD_INTERFACE      ?= $(SCRIPTS)/ft231x.ocd
DFU_UTIL               ?= dfu-util
TINYFPGASP             ?= tinyfpgasp

#========================================================================================
# Helper Scripts Directory
#========================================================================================
SCRIPTS ?= scripts

FPGA_CHIP_UPPERCASE := $(shell echo $(FPGA_CHIP) | tr '[:lower:]' '[:upper:]')
FPGA_PACKAGE_UPPERCASE := $(shell echo $(FPGA_PACKAGE) | tr '[:lower:]' '[:upper:]')

#========================================================================================
# Toolchain Targets
#========================================================================================

BITSTREAM ?= $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
do_all: $(BITSTREAM)

all: $(BITSTREAM) prog
#-------------------------------
# VHDL to Verilog Conversion
#-------------------------------
#%.v: %.vhd
#	$(VHD2VL) $< $@

#-------------------------------
# Synthesis and Implementation
#-------------------------------
$(PROJECT).json: $(VERILOG_FILES) $(VHDL_TO_VERILOG_FILES)
	$(YOSYS) \
	-p "hierarchy -top ${TOP_MODULE}" \
	-p "synth_ecp5 ${YOSYS_OPTIONS} -json ${PROJECT}.json" \
	$(VERILOG_FILES) $(VHDL_TO_VERILOG_FILES)

$(BOARD)_$(FPGA_SIZE)f_$(PROJECT).config: $(PROJECT).json $(BASECFG)
	$(NEXTPNR-ECP5) --$(FPGA_K)k --json $(PROJECT).json --lpf $(CONSTRAINTS) --basecfg $(BASECFG) --textcfg $@

#-------------------------------
# Clock File Generation
#-------------------------------
$(CLK0_FILE_NAME):
	LANG=C LD_LIBRARY_PATH=$(LIBTRELLIS) $(ECPPLL) $(CLK0_OPTIONS) --file $@

$(CLK1_FILE_NAME):
	LANG=C LD_LIBRARY_PATH=$(LIBTRELLIS) $(ECPPLL) $(CLK1_OPTIONS) --file $@

$(CLK2_FILE_NAME):
	LANG=C LD_LIBRARY_PATH=$(LIBTRELLIS) $(ECPPLL) $(CLK2_OPTIONS) --file $@

$(CLK3_FILE_NAME):
	LANG=C LD_LIBRARY_PATH=$(LIBTRELLIS) $(ECPPLL) $(CLK3_OPTIONS) --file $@

#-------------------------------
# Lattice Diamond Implementation
#-------------------------------
$(BOARD)_$(FPGA_SIZE)f_$(PROJECT).ldf: $(SCRIPTS)/project.ldf $(SCRIPTS)/ldf.xsl $(SCRIPTS)/$(BOARD)_sram.xcf
	xsltproc \
	  --stringparam FPGA_DEVICE $(FPGA_CHIP_UPPERCASE)-$(FPGA_PACKAGE_UPPERCASE) \
	  --stringparam CONSTRAINTS_FILE $(CONSTRAINTS) \
	  --stringparam STRATEGY_FILE $(STRATEGY) \
	  --stringparam XCF_FILE $(SCRIPTS)/$(BOARD)_sram.xcf \
	  --stringparam TOP_MODULE $(TOP_MODULE) \
	  --stringparam TOP_MODULE_FILE $(TOP_MODULE_FILE) \
	  --stringparam VHDL_FILES "$(VHDL_FILES)" \
	  --stringparam VERILOG_FILES "$(VERILOG_FILES)" \
	  --stringparam SBX_FILES "$(SBX_FILES)" \
	  $(SCRIPTS)/ldf.xsl $(SCRIPTS)/project.ldf > $@

project/project_project.bit: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).ldf $(VERILOG_FILES) $(VHDL_FILES)
	echo prj_project open $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).ldf \; prj_run Export -task Bitgen | ${DIAMONDC}


$(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit: project/project_project.bit
	ln -sf project/project_project.bit $@

#-------------------------------
# XCF and VME File Generation
#-------------------------------
$(BOARD)_$(FPGA_SIZE)f.xcf: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit $(SCRIPTS)/$(BOARD)_sram.xcf $(SCRIPTS)/xcf.xsl
	xsltproc \
	  --stringparam FPGA_CHIP $(FPGA_CHIP_UPPERCASE) \
	  --stringparam CHIP_ID $(CHIP_ID) \
	  --stringparam BITSTREAM_FILE $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit \
	  $(SCRIPTS)/xcf.xsl $(SCRIPTS)/$(BOARD)_sram.xcf > $@

$(BOARD)_$(FPGA_SIZE)f_$(PROJECT).vme: $(BOARD)_$(FPGA_SIZE)f.xcf $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	LANG=C ${DDTCMD} -oft -fullvme -if $(BOARD)_$(FPGA_SIZE)f.xcf -nocompress -noheader -of $@

$(BOARD)_$(FPGA_SIZE)f_$(PROJECT).svf: $(BOARD)_$(FPGA_SIZE)f.xcf $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	LANG=C ${DDTCMD} -oft -svfsingle -revd -maxdata 8 -if $(BOARD)_$(FPGA_SIZE)f.xcf -of $@

#-------------------------------
# Flash Programming Files
#-------------------------------
$(BOARD)_$(FPGA_SIZE)f_$(PROJECT)_flash.mcs: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	LANG=C ${DDTCMD} -dev $(FPGA_CHIP_UPPERCASE) \
	-if $< -oft -int -quad $(FPGA_SPI) -of $@

$(BOARD)_$(FPGA_SIZE)f_flash_$(FLASH_CHIP).xcf: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit $(SCRIPTS)/$(BOARD)_flash_$(FLASH_CHIP).xcf $(SCRIPTS)/xcf.xsl
	xsltproc \
	  --stringparam FPGA_CHIP $(FPGA_CHIP_UPPERCASE) \
	  --stringparam CHIP_ID $(CHIP_ID) \
	  --stringparam MASK_FILE $(MASK_PATH)/$(MASK_FILE) \
	  --stringparam BITSTREAM_FILE $(BOARD)_$(FPGA_SIZE)f_$(PROJECT)_flash.mcs \
	  $(SCRIPTS)/xcf.xsl $(SCRIPTS)/$(BOARD)_flash_$(FLASH_CHIP).xcf > $@

$(BOARD)_$(FPGA_SIZE)f_$(PROJECT)_flash_$(FLASH_CHIP).vme: $(BOARD)_$(FPGA_SIZE)f_flash_$(FLASH_CHIP).xcf $(BOARD)_$(FPGA_SIZE)f_$(PROJECT)_flash.mcs
	LANG=C ${DDTCMD} -oft -fullvme -if $(BOARD)_$(FPGA_SIZE)f_flash_$(FLASH_CHIP).xcf -nocompress -noheader -of $@

#-------------------------------
# Programming Targets
#-------------------------------
prog: program
program: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	$(UJPROG) $<

prog_ofl: program_ofl
program_ofl: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	$(OPENFPGALOADER) $(OPENFPGALOADER_OPTIONS) $<

program_flea: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).vme
	$(FLEAFPGA_JTAG) $<

flash: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	$(UJPROG) -j flash $<

flash_flea: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT)_flash_$(FLASH_CHIP).vme
	$(FLEAFPGA_JTAG) $<

flash_dfu: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	$(DFU_UTIL) -a 0 -D $<
	$(DFU_UTIL) -a 0 -e

flash_tiny: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
	$(TINYFPGASP) -w $<

$(BOARD)_$(FPGA_SIZE)f.ocd: $(SCRIPTS)/ecp5-ocd.sh
	$(SCRIPTS)/ecp5-ocd.sh $(CHIP_ID) $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).svf > $@

prog_ocd: program_ocd
program_ocd: $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).svf $(BOARD)_$(FPGA_SIZE)f.ocd
	$(OPENOCD) --file=$(OPENOCD_INTERFACE) --file=$(BOARD)_$(FPGA_SIZE)f.ocd

#========================================================================================
# Clean Targets
#========================================================================================
JUNK = *~
JUNK += $(PROJECT).json
JUNK += $(VHDL_TO_VERILOG_FILES)
JUNK += $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).config
JUNK += $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).ldf
JUNK += $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).bit
JUNK += $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).vme
JUNK += $(BOARD)_$(FPGA_SIZE)f_$(PROJECT).svf
JUNK += $(BOARD)_$(FPGA_SIZE)f.xcf
JUNK += $(BOARD)_$(FPGA_SIZE)f_$(PROJECT)_flash.mcs
JUNK += $(BOARD)_$(FPGA_SIZE)f_flash_$(FLASH_CHIP).xcf
JUNK += $(BOARD)_$(FPGA_SIZE)f_$(PROJECT)_flash_$(FLASH_CHIP).vme
JUNK += $(BOARD)_$(FPGA_SIZE)f.ocd
JUNK += $(CLK0_FILE_NAME) $(CLK1_FILE_NAME) $(CLK2_FILE_NAME) $(CLK3_FILE_NAME)
JUNK += ${IMPL_DIR} .recovery ._Real_._Math_.vhd *.sty reportview.xml
JUNK += dummy_sym.sort project_tcl.html promote.xml .run_manager.ini
JUNK += generate_core.tcl generate_ngd.tcl msg_file.log

JUNK_DIR = project
JUNK_DIR += project_tcr.dir

clean:
	rm -rf $(JUNK_DIR)
	rm -f $(JUNK)
	rm -rf $(LOG_DIR)

