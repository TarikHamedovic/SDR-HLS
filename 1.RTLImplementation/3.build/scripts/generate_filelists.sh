#!/bin/bash

# Default base directory
DEFAULT_BASE_DIR="/home/user"

# Use the provided base directory or default to /home/user
BASE_DIR=${1:-$DEFAULT_BASE_DIR}

# Get the directory where the script is located
SCRIPT_DIR=$(dirname "$0")

# Define the output directory as the "filelists" folder inside 1.hw
OUTPUT_DIR="$SCRIPT_DIR/../../1.hw/filelists"

# Define the paths for all directories
SYSTEMVERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/systemverilog"
VERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/verilog"
WITHRESET_SYSTEMVERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/withreset/systemverilog"
WITHRESET_VERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/withreset/verilog"
VERSION2_SYSTEMVERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/version2/systemverilog"
VERSION2_VERILOG_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/version2/verilog"
IP_DIR="$BASE_DIR/SDR-HLS/1.RTLImplementation/1.hw/IP"

# Ensure the output directory exists
mkdir -p "$OUTPUT_DIR"

# Generate rtl_systemverilog.filelist in the filelists directory
cat <<EOL > "$OUTPUT_DIR/rtl_systemverilog.filelist"
$SYSTEMVERILOG_DIR/top.sv
$SYSTEMVERILOG_DIR/NCO.sv
$SYSTEMVERILOG_DIR/Mixer.sv
$SYSTEMVERILOG_DIR/AMDemod.sv
$SYSTEMVERILOG_DIR/PWM.sv
$SYSTEMVERILOG_DIR/CIC.sv
$SYSTEMVERILOG_DIR/sinewave_generator.sv
$SYSTEMVERILOG_DIR/sinewave_table.sv
$SYSTEMVERILOG_DIR/quarterwave_generator.sv
$SYSTEMVERILOG_DIR/quarterwave_table.sv
$VERILOG_DIR/UartRX.v
$IP_DIR/PLL.v
$IP_DIR/VHI.v
$IP_DIR/VLO.v
EOL

echo "Generated $OUTPUT_DIR/rtl_systemverilog.filelist"

# Generate rtl_verilog.filelist in the filelists directory
cat <<EOL > "$OUTPUT_DIR/rtl_verilog.filelist"
$VERILOG_DIR/top.v
$VERILOG_DIR/NCO.v
$VERILOG_DIR/Mixer.v
$VERILOG_DIR/AMDemod.v
$VERILOG_DIR/PWM.v
$VERILOG_DIR/CIC.v
$VERILOG_DIR/sinewave_generator.v
$VERILOG_DIR/sinewave_table.v
$VERILOG_DIR/quarterwave_generator.v
$VERILOG_DIR/quarterwave_table.v
$VERILOG_DIR/UartRX.v
$IP_DIR/PLL.v
$IP_DIR/VHI.v
$IP_DIR/VLO.v
EOL

echo "Generated $OUTPUT_DIR/rtl_verilog.filelist"

# Generate rtl_rst_systemverilog.filelist in the filelists directory
cat <<EOL > "$OUTPUT_DIR/rtl_rst_systemverilog.filelist"
$WITHRESET_SYSTEMVERILOG_DIR/top.sv
$WITHRESET_SYSTEMVERILOG_DIR/NCO.sv
$WITHRESET_SYSTEMVERILOG_DIR/Mixer.sv
$WITHRESET_SYSTEMVERILOG_DIR/AMDemod.sv
$WITHRESET_SYSTEMVERILOG_DIR/PWM.sv
$WITHRESET_SYSTEMVERILOG_DIR/CIC.sv
$WITHRESET_SYSTEMVERILOG_DIR/sinewave_generator.sv
$WITHRESET_SYSTEMVERILOG_DIR/sinewave_table.sv
$WITHRESET_SYSTEMVERILOG_DIR/quarterwave_generator.sv
$WITHRESET_SYSTEMVERILOG_DIR/quarterwave_table.sv
$VERILOG_DIR/UartRX.v
$IP_DIR/PLL.v
$IP_DIR/VHI.v
$IP_DIR/VLO.v
EOL

echo "Generated $OUTPUT_DIR/rtl_rst_systemverilog.filelist"

# Generate rtl_rst_verilog.filelist in the filelists directory
cat <<EOL > "$OUTPUT_DIR/rtl_rst_verilog.filelist"
$WITHRESET_VERILOG_DIR/top.v
$WITHRESET_VERILOG_DIR/NCO.v
$WITHRESET_VERILOG_DIR/Mixer.v
$WITHRESET_VERILOG_DIR/AMDemod.v
$WITHRESET_VERILOG_DIR/PWM.v
$WITHRESET_VERILOG_DIR/CIC.v
$WITHRESET_VERILOG_DIR/sinewave_generator.v
$WITHRESET_VERILOG_DIR/sinewave_table.v
$WITHRESET_VERILOG_DIR/quarterwave_generator.v
$WITHRESET_VERILOG_DIR/quarterwave_table.v
$VERILOG_DIR/UartRX.v
$IP_DIR/PLL.v
$IP_DIR/VHI.v
$IP_DIR/VLO.v
EOL

echo "Generated $OUTPUT_DIR/rtl_rst_verilog.filelist"

# Generate rtl_version2_systemverilog.filelist in the filelists directory
cat <<EOL > "$OUTPUT_DIR/rtl_version2_systemverilog.filelist"
$VERSION2_SYSTEMVERILOG_DIR/top.sv
$VERSION2_SYSTEMVERILOG_DIR/NCO.sv
$VERSION2_SYSTEMVERILOG_DIR/Mixer.sv
$VERSION2_SYSTEMVERILOG_DIR/AMDemod.sv
$VERSION2_SYSTEMVERILOG_DIR/PWM.sv
$VERSION2_SYSTEMVERILOG_DIR/CIC.sv
$VERSION2_SYSTEMVERILOG_DIR/sinewave_generator.sv
$VERSION2_SYSTEMVERILOG_DIR/sinewave_table.sv
$VERSION2_SYSTEMVERILOG_DIR/quarterwave_generator.sv
$VERSION2_SYSTEMVERILOG_DIR/quarterwave_table.sv
$VERILOG_DIR/UartRX.v
$IP_DIR/PLL.v
$IP_DIR/VHI.v
$IP_DIR/VLO.v
EOL

echo "Generated $OUTPUT_DIR/rtl_version2_systemverilog.filelist"

# Generate rtl_version2_verilog.filelist in the filelists directory
cat <<EOL > "$OUTPUT_DIR/rtl_version2_verilog.filelist"
$VERSION2_VERILOG_DIR/top.v
$VERSION2_VERILOG_DIR/NCO.v
$VERSION2_VERILOG_DIR/Mixer.v
$VERSION2_VERILOG_DIR/AMDemod.v
$VERSION2_VERILOG_DIR/PWM.v
$VERSION2_VERILOG_DIR/CIC.v
$VERSION2_VERILOG_DIR/sinewave_generator.v
$VERSION2_VERILOG_DIR/sinewave_table.v
$VERSION2_VERILOG_DIR/quarterwave_generator.v
$VERSION2_VERILOG_DIR/quarterwave_table.v
$VERILOG_DIR/UartRX.v
$IP_DIR/PLL.
$IP_DIR/VHI.v
$IP_DIR/VLO.v
EOL

echo "Generated $OUTPUT_DIR/rtl_version2_verilog.filelist"

