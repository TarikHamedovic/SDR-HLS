
/*
Performs AM Demodulation: sqrt(I^2 + Q^2)
Square root code is taken from https://verilogcodes.blogspot.com/2017/11/a-verilog-function-for-finding-square-root.html

TODO: use only one multiplier with TDM
TODO: minimize rounding errors of sqrt, get fractional result by scaling input

Module Description:
This module performs AM demodulation by computing the square root of the sum of the squares of the I and Q input signals (i.e., sqrt(I^2 + Q^2)). It uses two multipliers to compute the squares of the I and Q signals and then sums these squares. The square root function is implemented as a Verilog function within the module.

Inputs:
- clk: Clock signal.
- I_in: Signed 12-bit input signal representing the I component.
- Q_in: Signed 12-bit input signal representing the Q component.

Output:
- d_out: 12-bit output signal representing the demodulated AM signal.
*/

module AMDemodulator #( // TODO: Change name so it matches the file name
  parameter int WIDTH = 12
)(
  input                     clk,
  input  signed [WIDTH-1:0] I_in,
  input  signed [WIDTH-1:0] Q_in,
  output reg    [WIDTH-1:0] d_out
);

  reg signed [15:0]        d_out_d;
  reg        [1:0]         state;
  reg                      NewSample;
  reg        [31:0]        ISquare;
  reg        [15:0]        QSquare;
  reg        [15:0]        SquareSum;

  reg signed [WIDTH-1:0]   MultDataA;
  reg signed [WIDTH-1:0]   MultDataB;
  reg signed [2*WIDTH-1:0] MultResult1;

  reg signed [WIDTH:0]     MultDataC;
  reg signed [WIDTH:0]     MultDataD;
  reg signed [2*WIDTH-1:0] MultResult2;

  // Function to calculate the square root
  function [15:0] sqrt;
    input [31:0] num;  // Declare input
    // Intermediate signals
    reg [31:0] a;
    reg [15:0] q;
    reg [17:0] left, right, r;
    integer i;
    begin
      // Initialize all the variables
      a = num;
      q = 0;
      i = 0;
      left = 0;   // Input to adder/subtractor
      right = 0;  // Input to adder/subtractor
      r = 0;  // Remainder

      // Run the calculations for 16 iterations
      for (i = 0; i < 16; i = i + 1) begin
        right = {q, r[17], 1'b1};
        left = {r[15:0], a[31:30]};
        a = {a[29:0], 2'b00};  // Left shift by 2 bits
        if (r[17] == 1)  // Add if r is negative
          r = left + right;
        else  // Subtract if r is positive
          r = left - right;
        q = {q[14:0], !r[17]};
      end
      sqrt = q;  // Final assignment of output
    end
  endfunction // End of Function


  // Main processing block
  always @(posedge clk) begin
    // Load inputs to multipliers
    MultDataA  <= I_in;
    MultDataB  <= I_in;
    MultDataC  <= Q_in;
    MultDataD  <= Q_in;

    MultResult1 <= MultDataA*MultDataB;
    MultResult2 <= MultDataC*MultDataD;

    // Calculate I^2 + Q^2
    ISquare     <= MultResult1 + MultResult2;

    // Compute the square root of the sum of squares
    d_out_d     <= sqrt(ISquare);

    // Assign the lower 12 bits to the output
    d_out       <= d_out_d[WIDTH-1:0];
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
 2024/4/18 TH: initial creation
 2024/5/26 TH: revision
*/