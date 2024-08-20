/*
Module Description:
This module performs mixing of an RF signal with sine and cosine waves to produce two output signals: sinewave_out and cosinewave_out. The mixing process is a fundamental operation in signal processing, used to shift the frequency of the input signal.

Inputs:
- clk: Clock signal.
- arst: Asynchronous reset signal.
- rf_in: Radio Frequency input signal.
- sinewave_in: Signed 12-bit input signal representing the sine component.
- cosinewave_in: Signed 12-bit input signal representing the cosine component.

Outputs:
- rf_out: Output signal directly from RF input, delayed by one clock cycle.
- sinewave_out: Signed 12-bit output signal representing the mixed signal with the sine component.
- cosinewave_out: Signed 12-bit output signal representing the mixed signal with the cosine component.
*/

module Mixer #(
    parameter INPUT_WIDTH = 12
) (
    input                               clk,
    input                               arst,
    input  signed     [INPUT_WIDTH-1:0] sinewave_in,
    input  signed     [INPUT_WIDTH-1:0] cosinewave_in,
    input                               rf_in,
    output                              rf_out,
    output reg signed [INPUT_WIDTH-1:0] sinewave_out,
    output reg signed [INPUT_WIDTH-1:0] cosinewave_out
);

  // Internal registers to hold delayed rf_in signal
  reg rf_in_delayed_1  = 1'b1;
  reg rf_in_delayed_2  = 1'b1;

  // Delay the rf_in signal by two clock cycles
  always @(posedge clk or posedge arst) begin
    if (arst) begin
      rf_in_delayed_1 <= 1'b1;
      rf_in_delayed_2 <= 1'b1;
    end else begin
      rf_in_delayed_1 <= rf_in;
      rf_in_delayed_2 <= rf_in_delayed_1;
    end
  end

  // Assign the delayed rf_in signal to rf_out
  assign rf_out = rf_in_delayed_1;

  // Mixing process: multiply RF input with sine and cosine inputs
  always @(posedge clk or posedge arst) begin
    if (arst) begin
      sinewave_out   <= '0;
      cosinewave_out <= '0;
    end else begin
      if (rf_in_delayed_2 == 1'b0) begin
        sinewave_out   <= sinewave_in;
        cosinewave_out <= cosinewave_in;
      end else begin
        sinewave_out   <= -sinewave_in;
        cosinewave_out <= -cosinewave_in;
      end
    end
  end

  //-----------------------------
  // For simulation only
  //-----------------------------
  initial begin
    $dumpfile("mixer_waves.vcd");
    $dumpvars;
  end
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18 TH: Initial creation
 2024/5/26 TH: Revision
 2024/8/15 TH: Added arst
*/
