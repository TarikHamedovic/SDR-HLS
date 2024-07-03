module square_root
    #(parameter N = 10)
    (   input Clock,  // Clock
        input reset,  // Asynchronous active high reset.
        input [N-1:0] num_in,   // Number for which we want to find square root.
        output reg done,     // This signal goes high when output is ready.
        output reg [N/2-1:0] sq_root  // Square root of 'num_in'.
    );

    reg [N-1:0] a;   // Original input.
    reg [N/2+1:0] left, right;  // Input to adder/subtractor. 'r' remainder.
    reg signed [N/2+1:0] r;
    reg [N/2-1:0] q;    // Result.
    integer i;  // Index of the loop.

    // Sequential logic: non-blocking assignments
    always @(posedge Clock or posedge reset) begin
        if (reset) begin  // Reset the variables.
            done <= 0;
            sq_root <= 0;
            i <= 0;
        end else begin
            if (i == 0) begin  // Before we start the first clock cycle, get the 'input' to the variable 'a'.
                done <= 0;  // Reset 'done' signal.
                i <= i + 1;  // Increment the loop index.
                a <= num_in;
            end else if (i < N/2) begin  // Keep incrementing the loop index.
                i <= i + 1;  
            end else if (i == N/2) begin  // This means the max value of loop index has been reached.
                done <= 1;  // Make 'done' high because output is ready.
                i <= 0;  // Reset loop index for beginning the next cycle.
                sq_root <= q;  // Assign 'q' to the output port.
            end
        end
    end

    // Combinational logic: blocking assignments
    always @* begin

        right = {q, r[N/2+1], 1'b1};
        left = {r[N/2-1:0], a[N-1:N-2]};
        a = {a[N-3:0], 2'b0};  // Shifting left by 2 bits.

        if (r[N/2+1] == 1) begin  // Add or subtract as per this bit.
            r = left + right;
        end else begin
            r = left - right;
        end

        q = {q[N/2-2:0], ~r[N/2+1]};

        if (i == N/2) begin
            // Reset other signals for using in the next cycle.
            left = 0;
            right = 0;
            r = 0;
            q = 0;
        end
    end

endmodule
