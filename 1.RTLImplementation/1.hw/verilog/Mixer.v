/*
Module Description:
This module performs mixing of an RF signal with sine and cosine waves to produce two output signals: sinewave_out and cosinewave_out. The mixing process is a fundamental operation in signal processing, used to shift the frequency of the input signal.

Inputs:
- clk: Clock signal.
- rf_in: Radio Frequency input signal.
- sinewave_in: Signed 12-bit input signal representing the sine component.
- cosinewave_in: Signed 12-bit input signal representing the cosine component.

Outputs:
- rf_out: Output signal directly from RF input, delayed by one clock cycle.
- sinewave_out: Signed 12-bit output signal representing the mixed signal with the sine component.
- cosinewave_out: Signed 12-bit output signal representing the mixed signal with the cosine component.
*/

module Mixer #(
    parameter DATA_WIDTH = 12
) (
    input  wire                            clk,
    input  reg signed     [DATA_WIDTH-1:0] sinewave_in,
    input  reg signed     [DATA_WIDTH-1:0] cosinewave_in,
    input  reg                             rf_in,
    output reg                             rf_out,
    output reg signed     [DATA_WIDTH-1:0] sinewave_out,
    output reg signed     [DATA_WIDTH-1:0] cosinewave_out
);

  //=============================//
  //       Internal signals      //
  //=============================//
  reg [1:0] rf_in_d = 2'b11;

  // Delay the rf_in signal by two clock cycles
  always @(posedge clk) begin
    rf_in_d[0] <= rf_in;
    rf_in_d[1] <= rf_in_d[0];
  end

  // Assign the delayed rf_in signal to rf_out
  assign rf_out = rf_in_d[0];

  //=============================//
  //       Mixing process        //
  //=============================//
  always @(posedge clk) begin
    if (rf_in_d[1] == 1'b0) begin
      sinewave_out   <= sinewave_in;
      cosinewave_out <= cosinewave_in;
    end else if (rf_in_d[1] == 1'b1)begin
      sinewave_out   <= -sinewave_in;
      cosinewave_out <= -cosinewave_in;
    end
  end
  //============================//
  //    For simulation only     //
  //============================//
  //`ifdef SIMULATION
  initial begin
    $dumpfile("mixer_waves.vcd");
    $dumpvars;
  end
  //`endif
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18 TH: initial creation
 2024/5/26 TH: revision
*/
