/*
-----------------------------------------------------------------------------
Module: CIC
Description:
This module implements a Cascaded Integrator-Comb (CIC) filter, which is commonly used for decimation (reducing the sampling rate) and interpolation (increasing the sampling rate) in digital signal processing.

Inputs:
- clk: Clock signal.
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
    parameter int width = 64,
    parameter int decimation_ratio = 16
)(
    input wire clk,
    input wire [7:0] Gain,
    input wire signed [11:0] d_in,
    output reg signed [11:0] d_out,
    output reg d_clk
);

    // Internal registers
    reg signed [width-1:0] d_tmp, d_d_tmp;
    reg signed [width-1:0] d1, d2, d3, d4, d5;
    reg signed [width-1:0] d6, d_d6, d7, d_d7, d8, d_d8, d9, d_d9, d10;
    reg signed [width-1:0] d_scaled;
    reg [15:0] count;
    reg v_comb;  // Valid signal for comb section running at output rate
    reg d_clk_tmp;

    // Integrator section
    always @(posedge clk) begin
        d1 <= d_in + d1;
        d2 <= d1 + d2;
        d3 <= d2 + d3;
        d4 <= d3 + d4;
        d5 <= d4 + d5;

        // Decimation
        if (count == decimation_ratio - 1) begin
            count <= 16'b0;
            d_tmp <= d5;
            d_clk_tmp <= 1'b1;
            v_comb <= 1'b1;
        end else if (count == decimation_ratio >> 1) begin
            d_clk_tmp <= 1'b0;
            count <= count + 16'd1;
            v_comb <= 1'b0;
        end else begin
            count <= count + 16'd1;
            v_comb <= 1'b0;
        end
    end

    // Comb section running at output rate
    always @(posedge clk) begin
        d_clk <= d_clk_tmp;

        if (v_comb) begin
            // Comb section
            d_d_tmp <= d_tmp;
            d6 <= d_tmp - d_d_tmp;
            d_d6 <= d6;
            d7 <= d6 - d_d6;
            d_d7 <= d7;
            d8 <= d7 - d_d7;
            d_d8 <= d8;
            d9 <= d8 - d_d8;
            d_d9 <= d9;
            d10 <= d9 - d_d9;

            d_scaled <= d10;
            d_out <= d10 >>> (width - 12 - Gain);
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
 2024/5/26 TH: initial creation    
 2024/5/26 TH: revision
*/
