/*
-----------------------------------------------------------------------------
Module: CIC
Description:
This module implements a Cascaded Integrator-Comb (CIC) filter, commonly used for decimation (reducing the sampling rate) and interpolation (increasing the sampling rate) in digital signal processing. The filter consists of a series of integrators followed by a comb section, with decimation occurring between the two stages.

Inputs:
- clk: Clock signal.
- gain: 8-bit gain control signal.
- data_in: 12-bit signed input data signal.

Outputs:
- data_out: 12-bit signed output data signal.
- data_clk: Output clock signal for the decimated data.

Parameters:
- DATA_WIDTH: Bit width of the input and output data (default is 12).
- REGISTER_WIDTH: Bit width for internal registers (default is 64).
- DECIMATION_RATIO: Decimation factor (default is 16).
- GAIN_WIDTH: Bit width of the gain control signal (default is 8).

Bit Width Calculation to Avoid Overflow:
For a Q-stage CIC decimation-by-D filter (diff delay = 1), overflow errors are avoided if the number of integrator and comb register bit widths is at least:

    register bit widths = number of bits in x(n) + {Q * log2(D)}

Where:
- x(n) is the input to the CIC filter.
- {k} means rounding up to the next larger integer if k is not an integer.

For example, if a 3-stage CIC decimation filter accepts one-bit binary input words from a sigma-delta A/D converter and the decimation factor is D = 64, binary overflow errors are avoided if the three integrator and three comb registers' bit widths are no less than:

    register bit widths = 1 + {3 * log2(64)} = 1 + 18 = 19 bits.

For a 5-stage CIC decimation filter with a decimation factor of 16384 (14 bits):

    register bit widths = 1 + 5 * 14 = 71 bits.

-----------------------------------------------------------------------------
*/

module CIC #(
    parameter  DATA_WIDTH       = 12,
    parameter  REGISTER_WIDTH   = 64,
    parameter  DECIMATION_RATIO = 16,
    parameter  GAIN_WIDTH       = 8
) (
    input  logic                         clk,
    input  logic        [GAIN_WIDTH-1:0] gain,
    input  logic signed [DATA_WIDTH-1:0] data_in,
    output logic signed [DATA_WIDTH-1:0] data_out,
    output logic                         data_clk
);

  typedef logic signed [REGISTER_WIDTH-1:0] s_register_t;
  localparam COUNT_WIDTH = $clog2(DECIMATION_RATIO);

  //=============================//
  //       Internal signals      //
  //=============================//
  s_register_t                      integrator_tmp, integrator_d_tmp;
  s_register_t                      integrator1, integrator2, integrator3, integrator4, integrator5;
  s_register_t                      comb6, comb_d6, comb7, comb_d7, comb8, comb_d8, comb9, comb_d9, comb10;
  logic                             valid_comb;
  logic                             decimation_clk;
  logic        [COUNT_WIDTH-1:0]    count;

  //=============================//
  //    Integrator section       //
  //=============================//
  always_ff @(posedge clk) begin

    integrator1 <= integrator1 + s_register_t'(data_in);
    integrator2 <= integrator1 + integrator2;
    integrator3 <= integrator2 + integrator3;
    integrator4 <= integrator3 + integrator4;
    integrator5 <= integrator4 + integrator5;

    //=============================//
    //        Decimation           //
    //=============================//
    if (count == COUNT_WIDTH'(DECIMATION_RATIO - 1)) begin
      count          <= '0;
      integrator_tmp <= integrator5;
      decimation_clk <= 1'b1;
      valid_comb     <= 1'b1;
    end else if (count == COUNT_WIDTH'(DECIMATION_RATIO >> 1)) begin
      decimation_clk <= 1'b0;
      count          <= count + 1'b1;
      valid_comb     <= 1'b0;
    end else begin
      count          <= count + 1'b1;
      valid_comb     <= 1'b0;
    end
  end

  //=============================//
  //       Comb section          //
  //=============================//
  always_ff @(posedge clk) begin
    data_clk <= decimation_clk;

    if (valid_comb == 1'b1) begin
      integrator_d_tmp  <= integrator_tmp;
      comb6             <= integrator_tmp - integrator_d_tmp;
      comb_d6           <= comb6;
      comb7             <= comb6 - comb_d6;
      comb_d7           <= comb7;
      comb8             <= comb7 - comb_d7;
      comb_d8           <= comb8;
      comb9             <= comb8 - comb_d8;
      comb_d9           <= comb9;
      comb10            <= comb9 - comb_d9;
    end
  end

  always_comb data_out = DATA_WIDTH'(comb10 >>> (REGISTER_WIDTH - DATA_WIDTH - gain));

  //============================//
  //    For simulation only     //
  //============================//
  //`ifdef SIMULATION
  initial begin
    $dumpfile("CIC_waves.vcd");
    $dumpvars;
  end
//`endif
endmodule


/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: Initial Creation
 2024/5/26 TH: Revision
 2024/7/10 TH: Made It Generic
*/
