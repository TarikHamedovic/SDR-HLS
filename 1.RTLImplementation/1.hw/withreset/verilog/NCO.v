/*
-----------------------------------------------------------------------------
Module: nco_sig
Description:
This module generates sine and cosine signals based on the input phase increment.
The phase increment controls the frequency of the generated signals.

Inputs:
- clk: Clock signal.
- arst: Asynchronous reset signal.
- phase_inc_carr: 64-bit phase increment value used to control the frequency of the output signals.

Outputs:
- sin_out: Output sine signal.
- cos_out: Output cosine signal.
- phase_accum: 64-bit phase accumulator used to generate the sine and cosine signals.
-----------------------------------------------------------------------------
*/

module nco_sig #(
    parameter WIDTH = 64
) (
    input                  clk,
    input                  arst,
    input      [WIDTH-1:0] phase_inc_carr,
    output                 sin_out,
    output                 cos_out,
    output reg [WIDTH-1:0] phase_accum
);

  // Generate sin_out and cos_out based on phase accumulator
  assign sin_out = (phase_accum[WIDTH-1] == 1'b1) ? 1'b0 : 1'b1;
  assign cos_out = ((phase_accum[WIDTH-1] ^ phase_accum[WIDTH-2]) == 1'b1) ? 1'b0 : 1'b1;

  // Update phase accumulator on each clock cycle or reset
  always @(posedge clk or posedge arst) begin
    if (arst) begin
      phase_accum <= '0;
    end else begin
      phase_accum <= phase_accum + phase_inc_carr;
    end
  end

  //-----------------------------
  // For simulation only
  //-----------------------------
  initial begin
    $dumpfile("nco_sig_waves.vcd");
    $dumpvars;
  end
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: Initial creation
 2024/5/26 TH: Revision
 2024/8/15 TH: Added arst
*/
