import argparse
import subprocess

def generate_verilog_file(sine_width, lut_width, phase_width, filename):
    verilog_code = f"""
module sinewave_generator #(
    parameter SINE_WIDTH  = {sine_width},
              LUT_WIDTH   = {lut_width},
              PHASE_WIDTH = {phase_width}
) (
    clk,
    arst,
    sample_clk_ce,
    phase_increment,
    sinewave,
    cosinewave
);

  input  wire                         clk;
  input  wire                         arst;
  input  wire                         sample_clk_ce;
  input  reg signed [PHASE_WIDTH-1:0] phase_increment;
  output reg signed [SINE_WIDTH -1:0] sinewave;
  output reg signed [SINE_WIDTH -1:0] cosinewave;

  reg               [PHASE_WIDTH-1:0] phase_accumulator = 0;
  reg               [SINE_WIDTH -1:0] sine_table[(1<<LUT_WIDTH)];

  initial begin
    $readmemh("{filename}.hex", sine_table);
  end

  always @(posedge clk or posedge arst) begin
    if (arst) phase_accumulator <= '0;
    else if (sample_clk_ce) phase_accumulator <= phase_accumulator + phase_increment;
  end

  always @(posedge clk) begin
    if (sample_clk_ce) begin
      sinewave   <= sine_table[ phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_WIDTH]];
      cosinewave <= sine_table[(phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_WIDTH] + (1<<(LUT_WIDTH-2))) % (1<<LUT_WIDTH)];
    end
  end

  initial begin
    $dumpfile("sinewave_hex.vcd");
    $dumpvars;
  end

endmodule
    """

    with open(f"sinewave_generator.v", "w") as verilog_file:
        verilog_file.write(verilog_code)

def generate_hex_table(lut_width, sine_width, filename):
    subprocess.run([
        "python3", "sinewave_table_generator.py",
        "-lw", str(lut_width),
        "-sw", str(sine_width),
        "-f", filename
    ])

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate a Verilog sine wave generator with a corresponding hex table.')
    parser.add_argument('-sw', '--sine_width', type=int, default=7, help='Width of the sine wave output in bits')
    parser.add_argument('-lw', '--lut_width', type=int, default=8, help='Number of bits for the Look-Up Table (LUT)')
    parser.add_argument('-pw', '--phase_width', type=int, default=64, help='Width of the phase accumulator in bits')
    parser.add_argument('-f', '--filename', type=str, default="sinewave_table", help='Base name for the output files')

    args = parser.parse_args()

    # Generate the hex table first
    generate_hex_table(args.lut_width, args.sine_width, args.filename)

    # Generate the Verilog file
    generate_verilog_file(args.sine_width, args.lut_width, args.phase_width, args.filename)
