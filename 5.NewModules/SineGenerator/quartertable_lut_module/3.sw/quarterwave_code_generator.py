import argparse
import subprocess

def generate_verilog_file(phase_width, sine_width, lut_width, generator_filename):
    verilog_code = f"""
module quarterwave_generator #(
    parameter PHASE_WIDTH = {phase_width},
              SINE_WIDTH  = {sine_width},
              LUT_WIDTH   = {lut_width}
) (
    input  wire                            clk,
    input  wire                            arst,
    input  wire                            sample_clk_ce,
    input  wire        [PHASE_WIDTH-1:0]   phase_increment,
    output reg  signed [SINE_WIDTH -1:0]   sinewave,
    output reg  signed [SINE_WIDTH -1:0]   cosinewave
);

  reg         [           1:0] sine_negate;
  reg         [LUT_WIDTH -3:0] sine_index;
  wire signed [SINE_WIDTH-1:0] sine_table_value;

  reg         [           1:0] cosine_negate;
  reg         [LUT_WIDTH -3:0] cosine_index;
  wire signed [SINE_WIDTH-1:0] cosine_table_value;

  reg         [PHASE_WIDTH-1:0] phase_accumulator;

  // Instantiate quarterwave_table for sine and cosine
  quarterwave_table #( .LUT_WIDTH(LUT_WIDTH), .SINE_WIDTH(SINE_WIDTH) ) sinewave_inst (
      .address(sine_index),
      .value(sine_table_value)
  );

  quarterwave_table #( .LUT_WIDTH(LUT_WIDTH), .SINE_WIDTH(SINE_WIDTH) ) cosinewave_inst (
      .address(cosine_index),
      .value(cosine_table_value)
  );

  always @(posedge clk) begin
    if      (arst)          phase_accumulator <= '0;
    else if (sample_clk_ce) phase_accumulator <= phase_accumulator + phase_increment;
  end

  always @(posedge clk) begin
    if (arst) begin
      sine_negate        <= 2'b00;
      sine_index         <= '0;
      sinewave           <= '0;

      cosine_negate      <= 2'b00;
      cosine_index       <= '0;
      cosinewave         <= '0;
    end else if (sample_clk_ce) begin
      // Clock #1
      sine_negate[0]     <= phase_accumulator[PHASE_WIDTH-1];
      cosine_negate [0]  <= phase_accumulator[PHASE_WIDTH-1] ^ phase_accumulator[PHASE_WIDTH-2];

      if (phase_accumulator[(PHASE_WIDTH-2)]) begin
         sine_index      <= ~phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-LUT_WIDTH)];
         cosine_index    <=  phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-LUT_WIDTH)];
      end else begin
         sine_index      <=  phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-LUT_WIDTH)];
         cosine_index    <= ~phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-LUT_WIDTH)];
      end
      // Clock #2
      sine_negate  [1]   <= sine_negate  [0];
      cosine_negate[1]   <= cosine_negate[0];
      // Output Clock
      sinewave           <= sine_negate  [1] ? -sine_table_value   : sine_table_value;
      cosinewave         <= cosine_negate[1] ? -cosine_table_value : cosine_table_value;
    end
  end

  initial begin
    $dumpfile("quarterwave.vcd");
    $dumpvars;
  end
endmodule
    """

    with open(f"{generator_filename}.v", "w") as verilog_file:
        verilog_file.write(verilog_code)

def generate_quarterwave_lut_module(lut_width, sine_width, lut_filename):
    subprocess.run([
        "python3", "quarterwave_lut_generator.py",
        "-lw", str(lut_width),
        "-sw", str(sine_width),
        "-f", lut_filename
    ])

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate a Verilog quarter wave generator with a corresponding LUT module.')
    parser.add_argument('-sw', '--sine_width', type=int, default=7, help='Width of the sine wave output in bits')
    parser.add_argument('-lw', '--lut_width', type=int, default=8, help='Number of bits for the Look-Up Table (LUT)')
    parser.add_argument('-pw', '--phase_width', type=int, default=64, help='Width of the phase accumulator in bits')
    parser.add_argument('-gf', '--generator_filename', type=str, default="quarterwave_generator", help='Filename for the Verilog quarterwave generator')
    parser.add_argument('-lf', '--lut_filename', type=str, default="quarterwave_table.v", help='Filename for the LUT module')

    args = parser.parse_args()

    # Generate the LUT module first
    generate_quarterwave_lut_module(args.lut_width, args.sine_width, args.lut_filename)

    # Generate the Verilog quarterwave generator file
    generate_verilog_file(args.phase_width, args.sine_width, args.lut_width, args.generator_filename)
