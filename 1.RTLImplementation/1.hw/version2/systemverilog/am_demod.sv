module am_demod # (
            parameter                         DATA_WIDTH = 12
)
(
    input   wire                              clk,
    input   logic                             arst,
    input   logic                             in_valid,
    input   logic signed [DATA_WIDTH-1:0]     inphase,
    input   logic signed [DATA_WIDTH-1:0]     quadrature,
    output  logic                             demod_valid,
    output  logic signed [DATA_WIDTH-1:0]     demod
);

          //logic signed [2 * DATA_WIDTH-1:0] i_squared, q_squared;
            logic        [2 * DATA_WIDTH:0]   square_sum;
            logic        [DATA_WIDTH:0]       sqrt_result;
            logic signed [DATA_WIDTH-1:0]     demod_d;
            logic        [3:0]                demod_valid_pipe;

  localparam N = 2 * DATA_WIDTH + 2;
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

    always_ff @ (posedge clk or posedge arst) begin
        if (arst == 1'b1) begin
            square_sum    <= '0;
        end
        else begin

            square_sum    <= inphase * inphase + quadrature * quadrature;

            sqrt_result   <= sqrt({1'b0, square_sum});

            demod_d       <= sqrt_result[DATA_WIDTH-1:0];

            demod         <= demod_d;

            {demod_valid, demod_valid_pipe} <= {demod_valid_pipe, in_valid};
        end
    end

endmodule
