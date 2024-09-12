module sqrt_sequential #(
    // Parameter N must be an even number
    parameter int N = 16
) (
    input  logic clk,
    input  logic reset_n,

    input  logic num_vld,
    output logic num_rdy,
    input  logic [N-1:0] num,

    output logic res_vld,
    input  logic res_rdy,
    output logic [N/2-1:0] res
);

  //(num_vld && res_vld) ----> && num_rdy ---> primi podatak

  //res_vld && res_rdy ----> poslao


  typedef enum logic [1:0] {
    IDLE      = 2'b00,
    COMP      = 2'b01,
    FINISH    = 2'b11
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
      num_rdy       <= 1'b0;
      res_vld       <= 1'b0;
      current_count <= '0;
      q             <= '0;
      r_reg         <= '0;
      a             <= '0;
      sqrt_state    <= IDLE;
    end else begin
      unique case (sqrt_state)

        IDLE: begin
          num_rdy <= 1'b1;
          res_vld <= 1'b0;
          current_count <= '0;
          q             <= '0;
          r_reg         <= '0;
          if (num_vld == 1'b1) begin
            a           <= num;
            sqrt_state  <= COMP;
          end
        end

        COMP: begin
          num_rdy       <= 1'b0;
          if (current_count == '1) begin
            sqrt_state  <= FINISH;
          end
          current_count <= current_count + 1'b1;
          a             <= a << 2;
          q             <= {q[N/2-2:0], ~r[N/2+1]};
          r_reg         <= r;
        end

        FINISH: begin
          res           <= q;
          res_vld       <= 1'b1;
          if (res_rdy == 1'b1) begin
            sqrt_state  <= IDLE;
          end
        end
        default: sqrt_state <= IDLE;
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


/*
J: Ako imas vremena, zarad ucenja, razmisli kako bi napravio hibridno rjesenje, tako rezultate dobijes nakon 8, 4, ili 2 kloka. To je vezano za onaj gore loop folding/unfolding
*/
