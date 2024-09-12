/*
-----------------------------------------------------------------------------
Module: AMDemodulator
Description:
This module performs AM demodulation by computing the square root of the sum of the squares of the in-phase (I) and quadrature (Q) input signals (i.e., sqrt(I^2 + Q^2)). It uses two multipliers to compute the squares of the I and Q signals and then sums these squares. The square root function is implemented as a Verilog function within the module.

Inputs:
- clk: Clock signal.
- arst: Asynchronous reset signal
- inphase: Signed 12-bit input signal representing the in-phase component (I).
- quadrature: Signed 12-bit input signal representing the quadrature component (Q).

Output:
- amdemod_out: 12-bit output signal representing the demodulated AM signal.

Parameters:
- DATA_WIDTH: Bit width of the input/output data (default is 12).

Notes:
- The square root function expects even bit-width inputs, so the sum of squares is adjusted by adding extra unused bits for proper operation.

*/
module AMDemodulator #(
    parameter DATA_WIDTH = 12
) (
    input  logic                         clk,
    input  logic                         arst,
    input  logic signed [DATA_WIDTH-1:0] inphase,
    input  logic signed [DATA_WIDTH-1:0] quadrature,
    output logic        [DATA_WIDTH-1:0] amdemod_out
);


  // NOTE: 1 bit is added because the sqrt function only works with even numbers, that is why sqrt_sum
  //       has 1 extra unused bit
  localparam int N = 2 * DATA_WIDTH + 2; // NOTE:`int` may cause problems with Lattice Diamond

  logic        [2*DATA_WIDTH  :0]   square_sum;
  logic signed [2*DATA_WIDTH-1:0]   mult_result_i;
  logic signed [2*DATA_WIDTH-1:0]   mult_result_q;

  //=============================//
  //       Sqrt function         //
  //=============================//
  function automatic [N/2-1:0] sqrt(
    input logic [N-1:0] num
  );

    logic   [  N-1:0] a    [N/2+1];
    logic   [N/2-1:0] q    [N/2+1];
    logic   [N/2+1:0] left [  N/2];
    logic   [N/2+1:0] right[  N/2];
    logic   [N/2+1:0] r    [N/2+1];
    integer            i;
    begin

      a[0] = num;
      q[0] = 0;
      r[0] = 0;

      for (i = 0; i < N/2; i = i + 1) begin
        right[i] = {q[i], r[i][N/2+1], 1'b1};
        left[i]  = {r[i][N/2-1:0], a[i][N-1:N-2]};
        a[i+1]   = {a[i][N-3:0], 2'b00};

        if (r[i][N/2+1] == 1) begin
          r[i+1] = left[i] + right[i];
        end else begin
          r[i+1] = left[i] - right[i];
        end

        q[i+1] = {q[i][N/2-2:0], !r[i+1][N/2+1]};
      end

      sqrt = q[N/2];

    end

  endfunction


  //=============================//
  //    Main processing block    //
  //=============================//
  always_ff @(posedge clk or posedge arst) begin
    if(arst == 1'b1) begin
      mult_result_i <= '0;
      mult_result_q <= '0;
      square_sum    <= '0;
    end else begin
      // Load multiplication results
      mult_result_i <= inphase    * inphase;
      mult_result_q <= quadrature * quadrature;

      // Calculate I^2 + Q^2
      square_sum <= {1'b0, mult_result_i + mult_result_q}; // TODO: Create Issue because it needs to be 1'b0
    end
  end

  always_comb begin
    // Compute the square root of the sum of squares
      amdemod_out = DATA_WIDTH'(sqrt({1'b0, square_sum}));
  end

  //=============================//
  //       For sim only          //
  //=============================//
  `ifdef SIMULATION
  initial begin
    $dumpfile("AMDemod_waves.vcd");
    $dumpvars;
  end
 `endif
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
2024/4/18 TH: Initial Creation
2024/5/26 TH: Revision
2024/7/10 TH: Made it generic
2024/8/19 TH: Removed unecessary parts
*/
