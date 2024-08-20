/*
-----------------------------------------------------------------------------
Module: nco_sig
Description:
This module generates sine and cosine signals based on the input phase increment.
The phase increment controls the frequency of the generated signals.

Inputs:
- clk: Clock signal.
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
    input  logic             clk,
    input  logic [WIDTH-1:0] phase_inc_carr,
    output logic             sinewave_out,
    output logic             cosinewave_out,
    output logic [WIDTH-1:0] phase_accum
);

  // Internal state parameter
  localparameter IDLE_nco = 0, START_nco = 1;
  logic state_nco_carr = IDLE_nco;

  // Generate sin_out and cos_out based on phase accumulator
  always_comb sin_out = (phase_accum[WIDTH-1] == 1'b1) ? 1'b0 : 1'b1;
  always_comb cos_out = ((phase_accum[WIDTH-1] ^ phase_accum[WIDTH-2]) == 1'b1) ? 1'b0 : 1'b1;

  // Update phase accumulator on each clock cycle
  always_ff @(posedge clk) begin
    phase_accum <= phase_accum + phase_inc_carr;  // TODO: Maybe add typedef definition
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
 2024/5/26 TH: initial creation
 2024/5/26 TH: revision
*/
