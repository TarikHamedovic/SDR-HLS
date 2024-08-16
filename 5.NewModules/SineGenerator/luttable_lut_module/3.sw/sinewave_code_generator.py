import argparse
import numpy as np
import math

def generate_table(lut_width, sine_width):
    table_entries = 1 << lut_width
    max_value = (1 << (sine_width - 1)) - 1

    sine_data = np.zeros(table_entries, dtype=np.int64)

    for k in range(table_entries):
        phase = 2.0 * math.pi * k / table_entries
        sine_data[k] = int(max_value * math.sin(phase))

    return sine_data

def generate_verilog_lut_module(lut_width, sine_width, filename):
    sine_data = generate_table(lut_width, sine_width)
    table_entries = len(sine_data)
    
    verilog_code = f"""
module sinewave_table #(
    parameter LUT_WIDTH = {lut_width},
    parameter SINE_WIDTH = {sine_width}
)(
    input logic [LUT_WIDTH-1:0] address, // {lut_width}-bit address signal for {table_entries} values
    output logic signed [SINE_WIDTH-1:0] value    // {sine_width}-bit output signal
);

    // LUT with {table_entries} predefined values for the 1st quarter period of sine
    logic signed [SINE_WIDTH-1:0] sinewave_table [{table_entries}];

    assign value = sinewave_table[address];

    initial begin
"""
    for i, value in enumerate(sine_data):
        if value < 0:
            value = (1 << sine_width) + value
        verilog_code += f"        sinewave_table[{i}] = {sine_width}'h{value:X};\n"

    verilog_code += """
    end

endmodule
"""
    with open(filename, "w") as f:
        f.write(verilog_code)

    return verilog_code

def generate_verilog_sinewave_generator(lut_width, sine_width, phase_width, filename):
    verilog_code = f"""
module sinewave_generator #(
    parameter SINE_WIDTH  = {sine_width},
              LUT_WIDTH   = {lut_width},
              PHASE_WIDTH = {phase_width}
) (
    input  wire                          clk,
    input  wire                          arst,
    input  wire                          sample_clk_ce,
    input  wire signed [PHASE_WIDTH-1:0] phase_increment,
    output reg  signed [SINE_WIDTH -1:0] sinewave,
    output reg  signed [SINE_WIDTH -1:0] cosinewave
);

  reg        [PHASE_WIDTH-1:0] phase_accumulator;
  reg signed [SINE_WIDTH -1:0] sine_table[(1<<LUT_WIDTH)];
  reg        [LUT_WIDTH  -1:0] sine_index;

  sinewave_table #(
    .SINE_WIDTH(SINE_WIDTH),
    .LUT_WIDTH(LUT_WIDTH)
  ) sinewave_inst (
    .address(phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_WIDTH]),
    .value(sinewave)
  );

  sinewave_table #(
    .SINE_WIDTH(SINE_WIDTH),
    .LUT_WIDTH(LUT_WIDTH)
  ) cosinewave_inst (
    .address((phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_WIDTH] + (1<<(LUT_WIDTH-2))) % (1<<LUT_WIDTH)),
    .value(cosinewave)
  );

  always @(posedge clk or posedge arst) begin
    if (arst)
      phase_accumulator <= '0;
    else if (sample_clk_ce)
      phase_accumulator <= phase_accumulator + phase_increment;
  end

  initial begin
    $dumpfile("sinewave_lut.vcd");
    $dumpvars;
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

