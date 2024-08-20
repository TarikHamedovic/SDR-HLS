/*
-----------------------------------------------------------------------------
Module: nco_sig
Description:
This module generates sine and cosine signals based on the input phase increment.
The phase increment controls the frequency of the generated signals.

Inputs:
- clk: Clock signal.
- phase_increment: 64-bit phase increment value used to control the frequency of the output signals.

Outputs:
- phase_accumulator: 64-bit phase accumulator used to generate the sine and cosine signals.
- sinewave_out: Output sine signal.
- cosinewave_out: Output cosine signal.

Parameters:
- REGISTER_WIDTH: Bit width of the phase increment and accumulator registers (default is 64).
-----------------------------------------------------------------------------
*/

module nco_sig #(
    parameter REGISTER_WIDTH = 64
) (
    input  logic                      clk,
    input  logic [REGISTER_WIDTH-1:0] phase_increment,
    output logic [REGISTER_WIDTH-1:0] phase_accumulator,
    output logic                      sinewave_out,
    output logic                      cosinewave_out
);

  // Generate sin_out and cos_out based on phase accumulator
  always_comb sinewave_out = (phase_accumulator[REGISTER_WIDTH-1] == 1'b1) ? 1'b0 : 1'b1;
  always_comb cosinewave_out = ((phase_accumulator[REGISTER_WIDTH-1] ^ phase_accumulator[REGISTER_WIDTH-2]) == 1'b1) ? 1'b0 : 1'b1;

  // Update phase accumulator on each clock cycle
  always_ff @(posedge clk) begin
    phase_accumulator <= REGISTER_WIDTH'(phase_accumulator + phase_increment);
  end

  //============================//
  //    For simulation only     //
  //============================//
  //`ifdef SIMULATION
  initial begin
    $dumpfile("nco_sig_waves.vcd");
    $dumpvars;
  end
  //`endif
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: initial creation
 2024/5/26 TH: revision
*/
