module sqrt_sequential #(
   // Parameter N must be an even number
    parameter int N = 32
) (
    input logic clk,
    input logic reset,
    input logic [N-1:0] num,
    input logic valid,
    output logic [N/2-1:0] res,
    output logic ready
);

  typedef enum logic [1:0] {
    IDLE   = 2'b00,
    COMP   = 2'b01,
    FINISH = 2'b10
  } sqrt_state_t;

  logic [3:0] current_count;
  sqrt_state_t sqrt_state;
  logic [N-1:0] a;
  logic [N/2+1:0] r;
  logic [N/2-1:0] q;
  logic [N/2+1:0] r_reg, left, right;

  always_ff @(posedge clk) begin
    if (reset == 1'b0) begin
      sqrt_state <= IDLE;
    end else begin
      unique case (sqrt_state)
        IDLE: begin
          if (valid) begin
            sqrt_state <= COMP;
          end
        end
        COMP: begin
          if (current_count == '1) begin
            ready      <= 1'b1;
            sqrt_state <= FINISH;
          end
        end
        FINISH: begin
          ready         <= 1'b0;
          current_count <= '0;
          q             <= '0;
          r_reg         <= '0;
          a             <= '0;
          sqrt_state    <= IDLE;
        end
        default: sqrt_state <= IDLE;
      endcase
    end
  end

  always_ff @(posedge clk) begin
    if (reset == 1'b0) begin
      current_count <= '0;
      q             <= '0;
      r_reg         <= '0;
      a             <= '0;
    end else begin
      if (valid) begin
        a <= num;
      end
      if (sqrt_state == COMP) begin
        current_count <= current_count + 4'b0001;

        a             <= a << 2;
        q             <= {q[N/2-2:0], ~r[N/2+1]};
        r_reg         <= r;
      end
    end
  end

  always_comb begin
    right = {q, r_reg[N/2+1], 1'b1};
    left = {r_reg[N/2-1:0], a[N-1:N-2]};
    r = r_reg[N/2+1] ? left + right : left - right;
  end

  assign res = q;

endmodule
