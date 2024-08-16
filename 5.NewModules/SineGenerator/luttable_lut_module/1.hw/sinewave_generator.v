module sinewave_generator #(
    parameter SINE_WIDTH  = 7,
              LUT_WIDTH   = 8,
              PHASE_WIDTH = 64
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


