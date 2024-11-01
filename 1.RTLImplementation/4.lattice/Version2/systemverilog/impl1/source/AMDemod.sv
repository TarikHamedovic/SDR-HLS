/*
Performs AM Demodulation: sqrt(I^2 + Q^2)
Square root code is taken from https://verilogcodes.blogspot.com/2017/11/a-verilog-function-for-finding-square-root.html

TODO: use only one multiplier with TDM
TODO: minimize rounding errors of sqrt, get fractional result by scaling input

Module Description:
This module performs AM demodulation by computing the square root of the sum of the squares of the in-phase (I) and quadrature (Q) input signals (i.e., sqrt(I^2 + Q^2)). It uses two multipliers to compute the squares of the I and Q signals and then sums these squares. The square root function is implemented as a Verilog function within the module.

Inputs:
- clk: Clock signal.
- inphase: Signed 12-bit input signal representing the in-phase component (I).
- quadrature: Signed 12-bit input signal representing the quadrature component (Q).

Output:
- amdemod_out: 12-bit output signal representing the demodulated AM signal.
*/
module AMDemodulator #(
    parameter INPUT_WIDTH = 12
) (
    input  logic                          clk,
    input  logic signed [INPUT_WIDTH-1:0] inphase,
    input  logic signed [INPUT_WIDTH-1:0] quadrature,
    output logic        [INPUT_WIDTH-1:0] amdemod_out
);

  localparam int N = 2 * INPUT_WIDTH;

  logic signed [(N+1)/2-1:0]       amdemod_d;
  logic        [    N   :0]       square_sum;

  logic signed [INPUT_WIDTH-1:0] mult_i_a;
  logic signed [INPUT_WIDTH-1:0] mult_i_b;
  logic signed [    N-1      :0] mult_result_i;

  logic signed [INPUT_WIDTH:0]   mult_q_a;
  logic signed [INPUT_WIDTH:0]   mult_q_b;
  logic signed [    N-1    :0]   mult_result_q;

  function automatic [N/2-1:0] sqrt;

    input [N:0] num;
    logic   [    N   :0] a    [0:N/2];
    logic   [N/2-1:0] q    [0:N/2];
    logic   [N/2  :0] left [0:N/2];
    logic   [N/2  :0] right[0:N/2];
    logic   [N/2  :0] r    [0:N/2];
    integer           i;
    begin

      a[0] = num;
      q[0] = 0;
      r[0] = 0;

      for (i = 0; i < N/2; i = i + 1) begin
        right[i] = {q[i], r[i][N/2], 1'b1};
        left[i]  = {r[i][N/2-1:0], a[i][N-1:N-2]};
        a[i+1]   = {a[i][N-3:0], 2'b00};

        if (r[i][N/2] == 1) begin
          r[i+1] = left[i] + right[i];
        end else begin
          r[i+1] = left[i] - right[i];
        end

        q[i+1] = {q[i][N/2-2:0], !r[i+1][N/2]};
      end

      sqrt = q[N/2-1];

    end

  endfunction


  // Main processing block
  always_ff @(posedge clk) begin

    // Load inputs to multipliers
    mult_i_a <= inphase;
    mult_i_b <= inphase;
    mult_q_a <= quadrature;
    mult_q_b <= quadrature;

    mult_result_i <= mult_i_a * mult_i_b;
    mult_result_q <= mult_q_a * mult_q_b;

    // Calculate I^2 + Q^2
    square_sum <= mult_result_i + mult_result_q;

    // Compute the square root of the sum of squares
    amdemod_d <= sqrt(square_sum);

    // Assign the lower WIDTH bits to the output
    amdemod_out <= amdemod_d[INPUT_WIDTH-1:0];
  end

endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
2024/4/18 TH: Initial Creation
2024/5/26 TH: Revision
2024/7/10 TH: Made it generic
*/

