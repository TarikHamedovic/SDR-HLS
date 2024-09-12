
/* Performs AM Demodulation. sqrt( I^2 + Q^2) 
Square root code is taken from https://verilogcodes.blogspot.com/2017/11/a-verilog-function-for-finding-square-root.html

TODO: use only one multiplier with TDM
TODO: minimize rounding errors of sqrt, get fractional result by scaling input
*/
module AMDemodulator#(
	parameter DATA_WIDTH = 12
) (
    input  wire                          clk,
    input  wire signed [DATA_WIDTH-1:0] inphase,
    input  wire signed [DATA_WIDTH-1:0] quadrature,
    output reg         [DATA_WIDTH-1:0] amdemod_out
); 

  reg signed [15:0] amdemod_out_d;
  reg [2*DATA_WIDTH+1:0] square_sum;

  reg signed  [DATA_WIDTH-1:0]   i_data_a;
  reg signed  [DATA_WIDTH-1:0]   i_data_b;
  wire signed [2*DATA_WIDTH-1:0] i_squared;


  reg signed  [DATA_WIDTH-1:0]   q_data_a;
  reg signed  [DATA_WIDTH-1:0]   q_data_b;
  wire signed [2*DATA_WIDTH-1:0] q_squared;

  localparam N = 2 * DATA_WIDTH + 2;

  //=============================//
  //       Sqrt function         //
  //=============================//
  function automatic [N/2-1:0] sqrt(
    input reg [N-1:0] num
  );

    reg     [  N-1:0] a     [N/2  :0];
    reg     [N/2-1:0] q     [N/2  :0];
    reg     [N/2+1:0] left  [N/2-1:0];
    reg     [N/2+1:0] right [N/2-1:0];
    reg     [N/2+1:0] r     [N/2  :0];
    integer           i;
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


  Multiplier Multiplier1 (.Clock  (clk),
                          .ClkEn  (1'b 1),
                          .Aclr   (1'b 0),
                          .DataA  (i_data_a),
                          .DataB  (i_data_b),
                          .Result (i_squared)
                         );

  Multiplier Multiplier2 (.Clock  (clk),
                          .ClkEn  (1'b1),
                          .Aclr   (1'b0),
                          .DataA  (q_data_a),
                          .DataB  (q_data_b),
                          .Result (q_squared)
                         );

/*
assign MultResult1 = MultDataA * MultDataB;
assign MultResult2 = MultDataC * MultDataD;
*/
  always@(posedge clk) begin
	
    i_data_a      <= inphase;
    i_data_b      <= inphase;
    q_data_a      <= quadrature;
    q_data_b      <= quadrature;
    square_sum    <= i_squared + q_squared;
    amdemod_out_d <= sqrt(square_sum);
    amdemod_out   <= amdemod_out_d[11:0];
  end


endmodule