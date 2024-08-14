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

  typedef enum logic [1:0] {
    IDLE   = 2'b00,
    COMP   = 2'b01,
    FINISH = 2'b10
  } sqrt_state_t;

  localparam int COUNTWIDTH = $clog2(N / 2);
  logic [COUNTWIDTH-1:0] current_count;
  sqrt_state_t sqrt_state;
  logic [N-1:0] a;
  logic [N/2+1:0] r;
  logic [N/2-1:0] q;
  logic [N/2+1:0] r_reg, left, right;

  always_ff @(posedge clk) begin
    if (reset_n == 1'b0) begin
      sqrt_state <= IDLE;
      o_valid <= 1'b0;
    end else begin
      unique case (sqrt_state)
        IDLE: begin
          if (i_valid && o_ready) begin
            sqrt_state <= COMP;
          end
        end
        COMP: begin
          if (current_count == '1) begin
            o_valid    <= 1'b1;
            sqrt_state <= FINISH;
          end
        end
        FINISH: begin
          o_valid    <= 1'b0;
          sqrt_state <= IDLE;
        end
        default: sqrt_state <= IDLE;
      endcase
    end
  end

  always_ff @(posedge clk) begin
    if (reset_n == 1'b0) begin
      current_count <= '0;
      q             <= '0;
      r_reg         <= '0;
      a             <= '0;
      o_ready       <= 1'b0;
    end else begin

      if (i_valid && o_ready) begin
        a <= num;
      end

      if (sqrt_state == IDLE) begin
        o_ready <= 1'b1;
      end

      if (sqrt_state == COMP) begin
        current_count <= current_count + 1'b1;
        a             <= a << 2;
        q             <= {q[N/2-2:0], ~r[N/2+1]};
        r_reg         <= r;
        o_ready       <= 1'b0;
      end

      if (sqrt_state == FINISH) begin
        current_count <= '0;
        q             <= '0;
        r_reg         <= '0;
        a             <= '0;
      end

      if(o_valid && i_ready) begin
        res <= q;
      end

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

