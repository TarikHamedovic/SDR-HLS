#!/bin/bash

# Default base directory
DEFAULT_BASE_DIR="/home/user"

# Use the provided base directory or default to /home/user
BASE_DIR=${1:-$DEFAULT_BASE_DIR}

# Get the directory where the script is located
SCRIPT_DIR=$(dirname "$0")

# Define the output directory as one level above the script's location
OUTPUT_DIR="$SCRIPT_DIR/../../1.hw"

# Define the paths for SystemVerilog and Verilog directories
SYSTEMVERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/systemverilog"
VERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/verilog"

# Generate rtl_systemverilog.filelist in the parent directory
cat <<EOL > "$OUTPUT_DIR/rtl_systemverilog.filelist"
$SYSTEMVERILOG_DIR/top.sv
$SYSTEMVERILOG_DIR/NCO.sv
$SYSTEMVERILOG_DIR/Mixer.sv
$SYSTEMVERILOG_DIR/AMDemod.sv
$SYSTEMVERILOG_DIR/ecp5pll.sv
$SYSTEMVERILOG_DIR/PWM.sv
$SYSTEMVERILOG_DIR/CIC.sv
$SYSTEMVERILOG_DIR/sinewave_generator.sv
$SYSTEMVERILOG_DIR/sinewave_table.sv
$SYSTEMVERILOG_DIR/quarterwave_generator.sv
$SYSTEMVERILOG_DIR/quarterwave_table.sv
$SYSTEMVERILOG_DIR/UartRX.v
EOL

echo "Generated $OUTPUT_DIR/rtl_systemverilog.filelist"

# Generate rtl_verilog.filelist in the parent directory
cat <<EOL > "$OUTPUT_DIR/rtl_verilog.filelist"
$VERILOG_DIR/top.v
$VERILOG_DIR/NCO.v
$VERILOG_DIR/Mixer.v
$VERILOG_DIR/AMDemod.v
$SYSTEMVERILOG_DIR/ecp5pll.sv
$VERILOG_DIR/PWM.v
$VERILOG_DIR/CIC.v
$VERILOG_DIR/sinewave_generator.v
$VERILOG_DIR/sinewave_table.v
$VERILOG_DIR/quarterwave_generator.v
$VERILOG_DIR/quarterwave_table.v
$VERILOG_DIR/UartRX.v
EOL

echo "Generated $OUTPUT_DIR/rtl_verilog.filelist"

