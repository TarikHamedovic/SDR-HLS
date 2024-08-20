import argparse
import subprocess

def generate_verilog_file(phase_width, data_width, filename):
    verilog_code = f"""
module quarterwave_generator #(
    parameter PHASE_WIDTH = {phase_width},
              DATA_WIDTH  = {data_width}
) (
    input  wire                     clk,
    input  wire                     arst,
    input  wire                     sample_clk_ce,
    input  wire [PHASE_WIDTH-1:0]   phase_increment,
    output reg  [DATA_WIDTH -1:0]   sinewave,
    output reg  [DATA_WIDTH -1:0]   cosinewave
);

  reg [(DATA_WIDTH-1):0]  quartertable[0:((1<<(PHASE_WIDTH-2))-1)];

  reg [1:0]               sine_negate;
  reg [PHASE_WIDTH-3:0]   sine_index;
  reg [DATA_WIDTH-1 :0]   sine_table_value;

  reg [1:0]               cosine_negate;
  reg [PHASE_WIDTH-3:0]   cosine_index;
  reg [DATA_WIDTH-1 :0]   cosine_table_value;

  reg [PHASE_WIDTH-1:0]   phase_accumulator;

  initial begin
     $readmemh("{filename}.hex", quartertable);
     phase_accumulator      = '0;

     sine_negate            = 2'b00;
     sine_index             = '0;
     sine_table_value       = '0;
     sinewave               = '0;

     cosine_negate          = 2'b00;
     cosine_index           = '0;
     cosine_table_value     = '0;
     cosinewave             = '0;
  end

  always @(posedge clk or posedge arst) begin
    if      (arst == 1'b1)          phase_accumulator <= '0;
    else if (sample_clk_ce == 1'b1) phase_accumulator <= phase_accumulator + phase_increment;
  end

  always @(posedge clk or posedge arst) begin
    if (arst == 1'b1) begin
      sine_negate        <= 2'b00;
      sine_index         <= '0;
      sine_table_value   <= '0;
      sinewave           <= '0;

      cosine_negate      <= 2'b00;
      cosine_index       <= '0;
      cosine_table_value <= '0;
      cosinewave         <= '0;
    end else if (sample_clk_ce == 1'b1) begin
      // Clock #1
      sine_negate[0]     <= phase_accumulator[PHASE_WIDTH-1];
      cosine_negate [0]  <= phase_accumulator[PHASE_WIDTH-1] ^ phase_accumulator[PHASE_WIDTH-2];

      if (phase_accumulator[(PHASE_WIDTH-2)]) begin
         sine_index      <= ~phase_accumulator[PHASE_WIDTH-3:0];
         cosine_index    <=  phase_accumulator[PHASE_WIDTH-3:0];
      end else begin
         sine_index      <=  phase_accumulator[PHASE_WIDTH-3:0];
         cosine_index    <= ~phase_accumulator[PHASE_WIDTH-3:0];
      end
      // Clock #2
      sine_table_value   <= quartertable [sine_index  ];
      cosine_table_value <= quartertable [cosine_index];
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

    with open(f"quarterwave_generator.v", "w") as verilog_file:
        verilog_file.write(verilog_code)

def generate_hex_table(lut_width, sine_width, filename):
    subprocess.run([
        "python3", "quarterwave_table_generator.py",
        "-lw", str(lut_width),
        "-sw", str(sine_width),
        "-f", filename
    ])

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate a Verilog quarter wave generator with a corresponding hex table.')
    parser.add_argument('-sw', '--sine_width', type=int, default=7, help='Width of the sine wave output in bits')
    parser.add_argument('-lw', '--lut_width', type=int, default=8, help='Number of bits for the Look-Up Table (LUT)')
    parser.add_argument('-pw', '--phase_width', type=int, default=20, help='Width of the phase accumulator in bits')
    parser.add_argument('-f', '--filename', type=str, default="sinetable", help='Base name for the output files')

    args = parser.parse_args()

    # Generate the hex table first
    generate_hex_table(args.lut_width-2, args.sine_width, args.filename)

    # Generate the Verilog file
    generate_verilog_file(args.phase_width, args.sine_width, args.filename)

