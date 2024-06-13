module tb_sqrt;

  reg [31:0] num;  // Input to the sqrt function
  wire [15:0] sqrt;  // Output of the sqrt function

  // Instantiate the sqrt function
  sqrt_module uut (
    .num(num),
    .sqrt(sqrt)
  );

  initial begin
    // Initialize the input
    num = 32'd127;  // Example input

    // Run the simulation for enough time to see all iterations
    #30;

    // Display the result
    $display("Input: %d", num);
    $display("Square root: %d", sqrt);

    // Finish the simulation
    $finish;
  end

endmodule

module sqrt_module(
  input [31:0] num,
  output reg [15:0] sqrt
);
  reg [31:0] a;
  reg [15:0] q;
  reg [17:0] left, right, r;
  integer i;

  always @(num) begin
    // Initialize all the variables
    a = num;
    q = 0;
    left = 0;
    right = 0;
    r = 0;

    // Print intermediate values
    $display("Initialization");
    $display("  a: %b", a);
    $display("  q: %b", q);
    $display("  left: %b", left);
    $display("  right: %b", right);
    $display("  r: %b", r);


    // Run the calculations for 16 iterations
    for (i = 0; i < 16; i = i + 1) begin
      right = {q, r[17], 1'b1};
      left = {r[15:0], a[31:30]};
      a = {a[29:0], 2'b00};  // Left shift by 2 bits

      if (r[17] == 1) begin
        r = left + right;  // Add if r is negative
      end else begin
        r = left - right;  // Subtract if r is positive
      end

      q = {q[14:0], !r[17]};

      // Print intermediate values
      $display("Iteration %2d:", i);
      $display("  a: %b", a);
      $display("  q: %b", q);
      $display("  left: %b", left);
      $display("  right: %b", right);
      $display("  r: %b", r);

      // Delay for the next iteration
      #1;
    end

    // Final assignment of output
    sqrt = q;
  end
endmodule
