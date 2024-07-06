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
// TODO: Change names for it to match entire module
module AMDemodulator #(
   parameter WIDTH = 12,
   parameter USE_TDM = 0  // 1 for TDM, 0 for non-TDM
)(
   input  logic                    clk,  
   input  logic signed [WIDTH-1:0] I_in,
   input  logic signed [WIDTH-1:0] Q_in,
   output logic        [WIDTH-1:0] d_out
);

   logic signed [15:0]        d_out_d;
   logic        [1:0 ]        state;
   logic                      NewSample;
   logic        [31:0]        ISquare;
   logic        [31:0]        QSquare;
   logic        [31:0]        SquareSum;

   logic signed [WIDTH-1:0]   MultDataA;
   logic signed [WIDTH-1:0]   MultDataB;
   logic signed [2*WIDTH-1:0] MultResult1;
   logic signed [2*WIDTH-1:0] MultResult2;

   logic        [15:0]        sqrt_result;

   // Function to calculate the square root
   function [15:0] sqrt;
      input [31:0] num;  // Declare input
      // Intermediate signals
      logic [31:0] a;
      logic [15:0] q;
      logic [17:0] left, right, r;    
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
   always_ff @(posedge clk) begin
      if (USE_TDM) begin
         // TDM Implementation
         case(state)
            2'b00: begin
               // Compute I^2
               MultDataA   <= I_in;
               MultDataB   <= I_in;
               MultResult1 <= MultDataA * MultDataB;
               ISquare     <= MultResult1;
               state       <= 2'b01;
            end
            2'b01: begin
               // Compute Q^2
               MultDataA   <= Q_in;
               MultDataB   <= Q_in;
               MultResult1 <= MultDataA * MultDataB;
               QSquare     <= MultResult1;
               state       <= 2'b10;
            end
            2'b10: begin
               // Sum I^2 and Q^2
               SquareSum   <= ISquare + QSquare;
               state       <= 2'b11;
            end
            2'b11: begin
               // Compute the square root of the sum of squares
               sqrt_result <= sqrt(SquareSum);
               d_out_d     <= sqrt_result;
               d_out       <= d_out_d[WIDTH-1:0];
               state <= 2'b00;
            end
         endcase
      end else begin
         // Non-TDM Implementation
         // Load inputs to multipliers
         MultDataA   <= I_in;
         MultDataB   <= I_in;
         MultDataC   <= Q_in;
         MultDataD   <= Q_in;

         MultResult1 <= MultDataA * MultDataB;
         MultResult2 <= MultDataC * MultDataD;

         // Calculate I^2 + Q^2
         ISquare     <= MultResult1;
         QSquare     <= MultResult2;
         SquareSum   <= ISquare + QSquare;

         // Compute the square root of the sum of squares
         d_out_d     <= sqrt(SquareSum);

         // Assign the lower 12 bits to the output
         d_out       <= d_out_d[WIDTH-1:0];
      end
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
2024/5/28 TH: Added TDM and rewritten in SV
*/
