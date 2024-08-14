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
    parameter  INPUT_WIDTH = 12
) (
    input  wire                     clk,
    input  signed [INPUT_WIDTH-1:0] inphase,
    input  signed [INPUT_WIDTH-1:0] quadrature,
    output reg    [INPUT_WIDTH-1:0] amdemod_out
);

  localparam N = 2 * INPUT_WIDTH;

  reg signed [(N+1)/2:0]             amdemod_d;
  reg        [N+1:0]                 square_sum;

  reg signed [INPUT_WIDTH-1:0]       mult_i_a;
  reg signed [INPUT_WIDTH-1:0]       mult_i_b;
  reg signed [N-1:0]                 mult_result_i;

  reg signed [INPUT_WIDTH:0]         mult_q_a;
  reg signed [INPUT_WIDTH:0]         mult_q_b;
  reg signed [N-1:0]                 mult_result_q;

  function automatic [N/2:0] sqrt;

    input   [N:0] num;
    reg     [N:0] a         [N/2  :0];
    reg     [N/2-1:0] q     [N/2  :0];
    reg     [N/2+1:0] left  [N/2-1:0];
    reg     [N/2+1:0] right [N/2-1:0];
    reg     [N/2+1:0] r     [N/2  :0];
    integer            i;
    begin

      a[0] = num;
      q[0] = 0;
      r[0] = 0;

      for (i = 0; i < 16; i = i + 1) begin
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


  // Main processing block
  always @(posedge clk) begin

    // Load inputs to multipliers
    mult_i_a      <= inphase;
    mult_i_b      <= inphase;
    mult_q_a      <= quadrature;
    mult_q_b      <= quadrature;

    mult_result_i <= mult_i_a * mult_i_b;
    mult_result_q <= mult_q_a * mult_q_b;

    // Calculate I^2 + Q^2
    square_sum    <= mult_result_i + mult_result_q;

    // Compute the square root of the sum of squares
    amdemod_d     <= sqrt(square_sum);

    // Assign the lower WIDTH bits to the output
    amdemod_out   <= amdemod_d[INPUT_WIDTH-1:0];
  end

  //-----------------------------
  // For sim only
  //-----------------------------
  initial begin
    $dumpfile("AMDemod_waves.vcd");
    $dumpvars;
  end

endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18 TH: Initial Creation
 2024/5/26 TH: Revision
 2024/7/6  TH: Made it generic
*/
