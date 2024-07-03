module sqrt_sequential #(
    parameter int N = 32
) (
    input  logic clk,
    input  logic reset,
    input  logic start,
    input  logic [N-1:0] num,
    output logic done,
    output logic [N/2-1:0] result
);

  logic [N-1:0]   a;
  logic [N/2-1:0] q;
  logic [N/2+1:0] left;
  logic [N/2+1:0] right;
  logic [N/2+1:0] r;
  logic [N/2:0]   counter;

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      done   <= 1'b0;
      result <= '0;
      a <= num;
      q <= '0;
      r <= '0;
      counter <= '0;
      left <= '0;
      right <= '0;
    end else if (start && !done) begin
      if (counter == 0) begin
        a <= num;
        q <= '0;
        r <= '0;
        left <= '0;
        right <= '0;
      end

      right <= {q, r[N/2+1], 1'b1};
      left <= {r[N/2-1:0], a[N-1:N-2]};
      a <= {a[N-3:0], 2'b00};

      if (r[N/2+1] == 1'b1) begin
        r <= left + right;
      end else begin
        r <= left - right;
      end

      q <= {q[N/2-2:0], !r[N/2+1]};
      counter <= counter + 1'b1;

      if (counter == N/2) begin
        result <= q;
        done <= 1'b1;
      end
    end else if (start && done) begin
      done <= 1'b0;
      counter <= '0;
    end
  end

endmodule
