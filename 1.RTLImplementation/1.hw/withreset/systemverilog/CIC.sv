/*
-----------------------------------------------------------------------------
Module: CIC
Description:
This module implements a Cascaded Integrator-Comb (CIC) filter, which is commonly used for decimation (reducing the sampling rate) and interpolation (increasing the sampling rate) in digital signal processing.

Inputs:
- clk: Clock signal.
- arst: Asynchronous reset signal.
- Gain: 8-bit gain control signal.
- d_in: 12-bit signed input data signal.

Outputs:
- d_out: 12-bit signed output data signal.
- d_clk: Output clock signal for the decimated data.

Parameters:
- width: Bit width for internal registers (default is 64).
- decimation_ratio: Decimation factor (default is 16).

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
    parameter  INPUT_WIDTH      = 12,
    parameter  REGISTER_WIDTH   = 64,
    parameter  DECIMATION_RATIO = 16,
    parameter  GAIN_WIDTH       = 8
) (
    input  logic                          clk,
    input  logic                          arst,
    input  logic        [GAIN_WIDTH-1:0]  gain,
    input  logic signed [INPUT_WIDTH-1:0] data_in,
    output logic signed [INPUT_WIDTH-1:0] data_out,
    output logic                          data_clk
);

  localparam COUNT_WIDTH = $clog2(DECIMATION_RATIO);

  // Internal registers
  logic signed [REGISTER_WIDTH-1:0] integrator_tmp, integrator_d_tmp;
  logic signed [REGISTER_WIDTH-1:0] integrator1, integrator2, integrator3, integrator4, integrator5;
  logic signed [REGISTER_WIDTH-1:0] comb6, comb_d6, comb7, comb_d7, comb8, comb_d8, comb9, comb_d9, comb10;
  logic signed [REGISTER_WIDTH-1:0] scaled_output;
  logic        [COUNT_WIDTH-1   :0] count;
  logic                             valid_comb;
  logic                             decimation_clk;

  // Integrator section
  always_ff @(posedge clk or posedge arst) begin
    if (arst) begin
      integrator1    <= '0;
      integrator2    <= '0;
      integrator3    <= '0;
      integrator4    <= '0;
      integrator5    <= '0;
      integrator_tmp <= '0;
      count          <= '0;
      decimation_clk <= 1'b0;
      valid_comb     <= 1'b0;
    end else begin
      integrator1 <= data_in     + integrator1;
      integrator2 <= integrator1 + integrator2;
      integrator3 <= integrator2 + integrator3;
      integrator4 <= integrator3 + integrator4;
      integrator5 <= integrator4 + integrator5;

      // Decimation
      if (count == DECIMATION_RATIO - 1) begin
        count          <= 0;
        integrator_tmp <= integrator5;
        decimation_clk <= 1'b1;
        valid_comb     <= 1'b1;
      end else if (count == DECIMATION_RATIO >> 1) begin
        decimation_clk <= 1'b0;
        count          <= count + 1;
        valid_comb     <= 1'b0;
      end else begin
        count          <= count + 1;
        valid_comb     <= 1'b0;
      end
    end
  end

  // Comb section running at output rate
  always_ff @(posedge clk or posedge arst) begin
    if (arst) begin
      integrator_d_tmp <= '0;
      comb6            <= '0;
      comb_d6          <= '0;
      comb7            <= '0;
      comb_d7          <= '0;
      comb8            <= '0;
      comb_d8          <= '0;
      comb9            <= '0;
      comb_d9          <= '0;
      comb10           <= '0;
      scaled_output    <= '0;
      data_out         <= '0;
      data_clk         <= 1'b0;
    end else begin
      data_clk <= decimation_clk;

      if (valid_comb) begin
        // Comb section
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

        scaled_output     <= comb10;
        data_out          <= comb10 >>> (REGISTER_WIDTH - INPUT_WIDTH - gain);
      end
    end
  end

  //-----------------------------
  // For simulation only
  //-----------------------------
  initial begin
    $dumpfile("CIC_waves.vcd");
    $dumpvars;
  end
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: Initial Creation
 2024/5/26 TH: Revision
 2024/7/10 TH: Made It Generic
 2024/8/15 TH: Added arst
*/
