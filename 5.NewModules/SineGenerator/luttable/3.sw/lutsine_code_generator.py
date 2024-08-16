import numpy as np
import argparse

def write_sine_cosine_table_to_hex(lut_width, sine_width, phase_width, verilog_filename):
    tbl_entries = 1 << lut_width
    max_value = (1 << (sine_width - 1)) - 1

    index_hex_digits = (lut_width + 3) // 4
    value_hex_digits = (sine_width + 3) // 4
    
    with open(verilog_filename, "w") as verfp:
        verfp.write("module sinewave_generator(\n")
        verfp.write("    clk,\n")
        verfp.write("    arst,\n")
        verfp.write("    sample_clk_ce,\n")
        verfp.write("    phase_increment,\n")
        verfp.write("    sinewave\n")
        verfp.write(");\n\n")

        verfp.write(f"parameter SINE_WIDTH  = {sine_width},\n")
        verfp.write(f"          LUT_WIDTH   = {lut_width},\n")
        verfp.write(f"          PHASE_WIDTH = {phase_width};\n\n")

        verfp.write("input  wire                  clk;\n")
        verfp.write("input  wire                  arst;\n")
        verfp.write("input  wire                  sample_clk_ce;\n")
        verfp.write("input  wire signed [PHASE_WIDTH-1:0] phase_increment;\n")
        verfp.write("output reg  signed [SINE_WIDTH-1:0] sinewave;\n\n")

        verfp.write("reg [PHASE_WIDTH-1:0] phase_accumulator = 0;\n\n")

        verfp.write("always @(posedge clk or posedge arst) begin\n")
        verfp.write("    if (arst)\n")
        verfp.write("        phase_accumulator <= 0;\n")
        verfp.write("    else if (sample_clk_ce)\n")
        verfp.write("        phase_accumulator <= phase_accumulator + phase_increment;\n")
        verfp.write("end\n\n")

        verfp.write("always @(posedge clk) begin\n")
        verfp.write("    if (sample_clk_ce) begin\n")
        verfp.write("        case (phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_WIDTH])\n")

        for k in range(tbl_entries):
            phase = 2.0 * np.pi * k / tbl_entries
            sine_value = int(max_value * np.sin(phase)) & ((1 << sine_width) - 1)
            
            index_hex = f"{k:0{index_hex_digits}x}".upper()
            sine_value_hex = f"{sine_value:0{value_hex_digits}x}".upper()
            verfp.write(f"            {lut_width}'h{index_hex}: sinewave <= {sine_width}'h{sine_value_hex};\n")

        verfp.write("        endcase\n")
        verfp.write("    end\n")
        verfp.write("end\n\n")

        verfp.write("initial begin\n")
        verfp.write("    $dumpfile(\"sine_generator_waves.vcd\");\n")
        verfp.write("    $dumpvars;\n")
        verfp.write("end\n\n")
        verfp.write("endmodule\n")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate a Verilog module for a sine wave generator.')
    parser.add_argument('-lw', '--lut_width', type=int, default=8, help='Number of bits for the Look-Up Table (LUT)')
    parser.add_argument('-sw', '--sine_width', type=int, default=12, help='Width of the sine wave output in bits')
    parser.add_argument('-pw', '--phase_width', type=int, default=64, help='Width of the phase accumulator in bits')
    parser.add_argument('-f', '--filename', type=str, default="sine_generator.v", help='Output Verilog filename')

    args = parser.parse_args()

    write_sine_cosine_table_to_hex(args.lut_width, args.sine_width, args.phase_width, args.filename)
