/*
Performs AM Demodulation: sqrt(I^2 + Q^2)
Square root code is taken from https://verilogcodes.blogspot.com/2017/11/a-verilog-function-for-finding-square-root.html, but the code given on the site isn't the same for the given photo
The block instantiates itself N/2 times and uses a lot of resources.


TODO: use only one multiplier with TDM
TODO: minimize rounding errors of sqrt, get fractional result by scaling input

Module Description:
I - In Phase
Q - Quadrature Signal

This module performs AM demodulation by computing the square root of the sum of the squares of the I and Q input signals (i.e., sqrt(I^2 + Q^2)).
It uses two multipliers in Lattice Diamond, but here it uses the normal multiplication within an FPGA(*), which is slower, to compute the squares of the I and Q signals and then sums these squares.
The square root function is implemented as a Verilog function within the module and is purely combinatorial.

Inputs:
- clk: Clock signal.
- I_in: Signed 12-bit input signal representing the I component.
- Q_in: Signed 12-bit input signal representing the Q component.

Output:
- d_out: 12-bit output signal representing the demodulated AM signal.
*/
// TODO: Check if input is wire or reg?
module AMDemodulator #(
    parameter int WIDTH = 12
) (
    input                     clk,
    input  signed [WIDTH-1:0] I_in,
    input  signed [WIDTH-1:0] Q_in,
    output reg    [WIDTH-1:0] d_out
);

  localparam int N = 2 * WIDTH;

  reg signed [(N+1)/2:0]       d_out_d;
  reg        [N+1:0]           ISquare;

  reg signed [WIDTH-1:0]       MultDataA;
  reg signed [WIDTH-1:0]       MultDataB;
  reg signed [N-1:0]           MultResult1;

  reg signed [WIDTH:0]         MultDataC;
  reg signed [WIDTH:0]         MultDataD;
  reg signed [N-1:0]           MultResult2;

  function automatic [N/2:0] sqrt;

    input   [N:0] num;
    reg     [N:0] a         [N/2+1];
    reg     [N/2-1:0] q     [N/2+1];
    reg     [N/2+1:0] left  [N/2];
    reg     [N/2+1:0] right [N/2];
    reg     [N/2+1:0] r     [N/2+1];
    integer           i;
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
    MultDataA <= I_in;
    MultDataB <= I_in;
    MultDataC <= Q_in;
    MultDataD <= Q_in;

    MultResult1 <= MultDataA * MultDataB;
    MultResult2 <= MultDataC * MultDataD;

    // Calculate I^2 + Q^2
    ISquare <= MultResult1 + MultResult2;

    // Compute the square root of the sum of squares
    d_out_d <= sqrt(ISquare);

    // Assign the lower WIDTH bits to the output
    d_out <= d_out_d[WIDTH-1:0];
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
