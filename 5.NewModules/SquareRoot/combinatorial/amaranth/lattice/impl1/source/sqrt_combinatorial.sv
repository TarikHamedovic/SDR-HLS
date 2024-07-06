module sqrt_combinatorial #(
   // Parameter N must be an even number
   parameter int N = 32
) (
   input  logic [N-1:0] num,
   output logic [N/2-1:0] result
);

  logic [N-1:0] a[N/2+1];
  logic [N/2-1:0] q[N/2+1];
  logic [N/2+1:0] left[N/2];
  logic [N/2+1:0] right[N/2];
  logic [N/2+1:0] r[N/2+1];

  always_comb begin
     // Initialize all variables
     a[0] = num;
     q[0] = 0;
     r[0] = 0;

     for (int i = 0; i < N / 2; i = i + 1) begin
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
  end

  assign result = q[N/2];

  //-----------------------------
  // For simulation only
  //-----------------------------
  initial begin
     $dumpfile("sqrt_combinatorial.vcd");
     $dumpvars(0, sqrt_combinatorial);
  end

endmodule

