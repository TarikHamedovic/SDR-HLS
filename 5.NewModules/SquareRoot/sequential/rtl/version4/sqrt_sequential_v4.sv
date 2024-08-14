module sqrt_sequential #(
    // Parameter N must be an even number
    parameter int N = 16
) (
    input logic clk,
    input logic reset_n,
    input logic [N-1:0] num,
    output logic [N/2-1:0] res,

    // TODO: Change names to num_vld, num_rdy res_vld, res_rdy
    input logic i_valid,
    output logic o_ready,

    output logic o_valid,
    input logic i_ready
);

  typedef enum logic {
    COMP   = 1'b0,
    FINISH = 1'b1
  } sqrt_state_t;

  localparam int COUNTWIDTH = $clog2(N / 2);
  logic [COUNTWIDTH-1:0] current_count;
  sqrt_state_t sqrt_state;
  logic [N-1:0] a;
  logic [N/2+1:0] r;
  logic [N/2-1:0] q;
  logic [N/2+1:0] r_reg, left, right;
  logic temp;
  always_ff @(posedge clk) begin
    if (reset_n == 1'b0) begin
      o_valid       <= 1'b0;
      o_ready       <= 1'b0;
      current_count <= '0;
      q             <= '0;
      r_reg         <= '0;
      a             <= '0;
      sqrt_state <= COMP;
    end else begin
      unique case (sqrt_state)
        COMP: begin
          if(i_valid == 1'b1)begin
             o_ready <= 1'b1;
             a <= num;
          end

          if (current_count == '1) begin
            temp <= 1'b1;
          end

          if (temp == 1'b1) begin
            o_valid    <= 1'b1;
            sqrt_state <= FINISH;
          end else begin
            current_count <= current_count + 1'b1;
            a             <= a << 2;
            q             <= {q[N/2-2:0], ~r[N/2+1]};
            r_reg         <= r;
            o_ready       <= 1'b0;
          end

        end
        FINISH: begin
          if(i_ready == 1'b1) begin
             res <= q;
          end
          o_valid       <= 1'b0;
          current_count <= '0;
          q             <= '0;
          r_reg         <= '0;
          a             <= '0;
          temp          <= 1'b0;
            sqrt_state    <= COMP;
        end
        default: sqrt_state <= COMP;
      endcase
    end
  end

  always_comb begin
    right = {q, r_reg[N/2+1], 1'b1};
    left = {r_reg[N/2-1:0], a[N-1:N-2]};
    r = r_reg[N/2+1] ? left + right : left - right;
  end

  //-----------------------------
  // For simulation only
  //-----------------------------
  initial begin
    $dumpfile("sqrt_sequential.vcd");
    $dumpvars(0, sqrt_sequential);
  end

endmodule


