import argparse
import numpy as np
import math

def generate_table(lut_depth, data_width):
    table_entries = 1 << lut_depth
    max_value = (1 << (data_width - 1)) - 1

    sine_data = np.zeros(table_entries, dtype=np.int64)

    for k in range(table_entries):
        phase = 2.0 * math.pi * k / table_entries
        sine_data[k] = int(max_value * math.sin(phase))

    return sine_data

def generate_verilog_lut_module(lut_depth, data_width, filename):
    sine_data = generate_table(lut_depth, data_width)
    table_entries = len(sine_data)
    
    verilog_code = f"""
module sinewave_table #(
    parameter LUT_DEPTH = {lut_depth},
    parameter DATA_WIDTH = {data_width}
)(
    input wire [LUT_DEPTH-1:0] address, // {lut_depth}-bit address signal for {table_entries} values
    output reg signed [DATA_WIDTH-1:0] value    // {data_width}-bit output signal
);

    always @(*) begin
        case (address)
"""
    for i, value in enumerate(sine_data):
        if value < 0:
            value = (1 << data_width) + value
        verilog_code += f"            {lut_depth}'d{i}: value = {data_width}'h{value:X};\n"

    verilog_code += f"""            default: value = {data_width}'h0;
        endcase
    end

endmodule
"""
    with open(filename, "w") as f:
        f.write(verilog_code)

    return verilog_code

def generate_verilog_sinewave_generator(lut_depth, data_width, phase_width, filename):
    verilog_code = f"""
module sinewave_generator #(
    parameter DATA_WIDTH  = {data_width},
              LUT_DEPTH   = {lut_depth},
              PHASE_WIDTH = {phase_width}
) (
    input  wire                          clk,
    input  wire                          arst,
    input  wire                          sample_clk_ce,
    input  reg signed [PHASE_WIDTH-1:0] phase_increment,
    output reg signed [DATA_WIDTH -1:0] sinewave,
    output reg signed [DATA_WIDTH -1:0] cosinewave
);

  reg [PHASE_WIDTH-1:0] phase_accumulator;

  sinewave_table #(
    .DATA_WIDTH(DATA_WIDTH),
    .LUT_DEPTH(LUT_DEPTH)
  ) sinewave_inst (
    .address(phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_DEPTH]),
    .value(sinewave)
  );

  sinewave_table #(
    .DATA_WIDTH(DATA_WIDTH),
    .LUT_DEPTH(LUT_DEPTH)
  ) cosinewave_inst (
    .address((phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_DEPTH] + (1<<(LUT_DEPTH-2))) % (1<<LUT_DEPTH)),
    .value(cosinewave)
  );

  always @(posedge clk or posedge arst) begin
    if (arst)
      phase_accumulator <= 0;
    else if (sample_clk_ce)
      phase_accumulator <= phase_accumulator + phase_increment;
  end

endmodule
"""
    with open(filename, "w") as f:
        f.write(verilog_code)

    return verilog_code

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate Verilog sinewave modules")
    parser.add_argument("--lut_width", "-lw", type=int, default=8, help="Number of address bits for the LUT (default: 8)")
    parser.add_argument("--sine_width", "-sw", type=int, default=7, help="Number of output bits for the sine wave (default: 7)")
    parser.add_argument("--phase_width", "-pw", type=int, default=64, help="Number of bits for the phase accumulator (default: 64)")
    parser.add_argument("--lut_filename", "-lf", type=str, default="sinewave_table.v", help="Output filename for the LUT module (default: sinewave_table.v)")
    parser.add_argument("--generator_filename", "-gf", type=str, default="sinewave_generator.v", help="Output filename for the sinewave generator module (default: sinewave_generator.v)")

    args = parser.parse_args()

    # Generate the LUT Verilog module
    generate_verilog_lut_module(args.lut_width, args.sine_width, args.lut_filename)

    # Generate the sinewave generator Verilog module
    generate_verilog_sinewave_generator(args.lut_width, args.sine_width, args.phase_width, args.generator_filename)
