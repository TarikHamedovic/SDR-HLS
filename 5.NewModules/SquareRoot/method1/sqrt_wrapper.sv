module sqrt_wrapper #(
   // Parameter N must be an even number
   parameter int N = 16
) (
   input  logic [  N-1:0] num,
   output logic [N/2-1:0] result
);

  function automatic [N/2-1:0] sqrt;
     input [N-1:0] num;
     logic [N-1:0] a[N/2+1];
     logic [N/2-1:0] q[N/2+1];
     logic [N/2+1:0] left[N/2];
     logic [N/2+1:0] right[N/2];
     logic [N/2+1:0] r[N/2+1];
     integer i;
     begin

        a[0] = num;
        q[0] = 0;
        r[0] = 0;

        for (i = 0; i < N / 2; i = i + 1) begin

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

  assign result = sqrt(num);

endmodule
