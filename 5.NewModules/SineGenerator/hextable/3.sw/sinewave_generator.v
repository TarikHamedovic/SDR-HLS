
module sinewave_generator #(
    parameter SINE_WIDTH  = 7,
              LUT_WIDTH   = 9,
              PHASE_WIDTH = 64
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
    $readmemh("sinewave_table.hex", sine_table);
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
    