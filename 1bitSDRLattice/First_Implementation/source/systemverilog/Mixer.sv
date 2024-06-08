/*
Module Description:
This module performs mixing of an RF signal with sine and cosine waves to produce two output signals: MixerOutSin and MixerOutCos. The mixing process is a fundamental operation in signal processing, used to shift the frequency of the input signal.

Inputs:
- clk: Clock signal.
- RFIn: Radio Frequency input signal.
- sin_in: Signed 12-bit input signal representing the sine component.
- cos_in: Signed 12-bit input signal representing the cosine component.

Outputs:
- RFOut: Output signal directly from RF input, delayed by one clock cycle.
- MixerOutSin: Signed 12-bit output signal representing the mixed signal with the sine component.
- MixerOutCos: Signed 12-bit output signal representing the mixed signal with the cosine component.
*/

module Mixer#
(  parameter WIDTH = 12
)(
   input  logic                    clk,
   input  logic signed [WIDTH-1:0] sin_in,
   input  logic signed [WIDTH-1:0] cos_in,
   input  logic                    RFIn,
   output logic                    RFOut,
   output logic signed [WIDTH-1:0] MixerOutSin,
   output logic signed [WIDTH-1:0] MixerOutCos
  );

  // Internal registers to hold delayed RFIn signal
  logic RFInR1 = 1'b1;
  logic RFInR  = 1'b1;

  // Delay the RFIn signal by two clock cycles
  always_ff @(posedge clk) begin 
    RFInR1 <= RFIn;
    RFInR  <= RFInR1;	
  end

  // Assign the delayed RFIn signal to RFOut
  always_comb RFOut = RFInR1;

  // Mixing process: multiply RF input with sine and cosine inputs
  always_ff @(posedge clk) begin
    if (RFInR == 1'b0) begin
      MixerOutSin <=  sin_in;
      MixerOutCos <=  cos_in;
    end else if(RFInR == 1'b1) begin
      MixerOutSin <= -sin_in;
      MixerOutCos <= -cos_in;				
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
 2024/4/18 TH: initial creation    
 2024/5/26 TH: revision
*/
