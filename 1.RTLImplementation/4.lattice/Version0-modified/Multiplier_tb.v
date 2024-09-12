`timescale 1 ns / 1 ps

module Multiplier_tb;

// Testbench signals
reg Clock;
reg ClkEn;
reg Aclr;
reg [11:0] DataA;
reg [11:0] DataB;
wire [23:0] Result;

// Instantiate the Multiplier module
Multiplier uut (
    .Clock(Clock),
    .ClkEn(ClkEn),
    .Aclr(Aclr),
    .DataA(DataA),
    .DataB(DataB),
    .Result(Result)
);

// Clock generation
initial begin
    Clock = 0;
    forever #5 Clock = ~Clock;  // Clock period of 10ns
end

// Test stimulus
initial begin
    // Initialize inputs
    ClkEn = 1;
    Aclr = 0;
    DataA = 12'b0;
    DataB = 12'b0;

    // Apply reset
    #10 Aclr = 1;
    #10 Aclr = 0;

    // Apply first test vector
    #10 DataA = 12'd15;  // Set DataA to 15
         DataB = 12'd3;   // Set DataB to 3

    // Apply second test vector
    #20 DataA = 12'd25;  // Set DataA to 25
         DataB = 12'd4;   // Set DataB to 4

    // Apply third test vector
    #20 DataA = 12'd50;  // Set DataA to 50
         DataB = 12'd2;   // Set DataB to 2

    // End of simulation
    #30 $finish;
end

// Monitor output
initial begin
    $monitor("Time = %0d, ClkEn = %b, Aclr = %b, DataA = %d, DataB = %d, Result = %d", 
             $time, ClkEn, Aclr, DataA, DataB, Result);
end

endmodule
