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
    parameter INPUT_WIDTH       = 12,
    parameter WIDTH             = 64,
    parameter DECIMATION_RATIO  = 16,
    parameter GAIN_WIDTH        = 8,
    parameter N_STAGES          = 5
) (
    input  wire                          clk,
    input  wire                          arst,       // Asynchronous reset signal
    input  wire        [GAIN_WIDTH-1:0]  Gain,
    input  wire signed [INPUT_WIDTH-1:0] d_in,
    output reg  signed [INPUT_WIDTH-1:0] d_out,
    output reg                           d_clk
);

  localparam COUNT_WIDTH = $clog2(DECIMATION_RATIO);

  //====================//
  // Internal registers //
  //====================//
  reg signed [WIDTH-1:0]       integrator [N_STAGES];
  reg signed [WIDTH-1:0]       comb       [N_STAGES];
  reg signed [WIDTH-1:0]       comb_delay [N_STAGES];
  reg        [COUNT_WIDTH-1:0] count;
  reg                          v_comb;
  reg                          d_clk_tmp;
  reg signed [WIDTH-1:0]       d_tmp;

  //====================//
  // Integrator section //
  //====================//
  always @(posedge clk or posedge arst) begin
    if (arst) begin
      for (int i = 0; i < N_STAGES; i++) begin
        integrator[i] <= '0;
      end
      count      <= '0;
      d_clk_tmp  <= 1'b0;
      v_comb     <= 1'b0;
    end else begin
      integrator[0] <= d_in + integrator[0];
      for (int i = 1; i < N_STAGES; i++) begin
        integrator[i] <= integrator[i-1] + integrator[i];
      end
      // Decimation
      if (count == DECIMATION_RATIO-1) begin
        count      <= '0;
        d_tmp      <= integrator[N_STAGES-1];
        d_clk_tmp  <= 1'b1;
        v_comb     <= 1'b1;
      end else if (count == DECIMATION_RATIO >> 1) begin
        d_clk_tmp  <= 1'b0;
        count      <= count + 1;
        v_comb     <= 1'b0;
      end else begin
        count      <= count + 1;
        v_comb     <= 1'b0;
      end
    end
  end

  //====================//
  //    Comb section    //
  //====================//
  always @(posedge clk or posedge arst) begin
    if (arst) begin
      for (int i = 0; i < N_STAGES; i++) begin
        comb[i]       <= '0;
        comb_delay[i] <= '0;
      end
      d_out    <= '0;
      d_clk    <= 1'b0;
      d_tmp    <= '0;
    end else begin
      d_clk <= d_clk_tmp;

      if (v_comb) begin
        comb_delay[0]   <= d_tmp;
        comb[0]         <= d_tmp - comb_delay[0];
        for (int i = 1; i < N_STAGES; i++) begin
          comb_delay[i] <= comb[i-1];
          comb[i]       <= comb[i-1] - comb_delay[i];
        end

        d_out <= comb[N_STAGES-1] >>> (WIDTH - INPUT_WIDTH - Gain);
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
 2024/7/10 TH: Made it Generic
 2024/8/15 TH: Added arst and comments
*/
