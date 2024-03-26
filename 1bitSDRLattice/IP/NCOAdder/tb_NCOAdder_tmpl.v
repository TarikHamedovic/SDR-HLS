//Verilog testbench template generated by SCUBA Diamond (64-bit) 3.13.0.56.2
`timescale 1 ns / 1 ps
module tb;
    reg [63:0] DataA = 64'b0;
    reg [63:0] DataB = 64'b0;
    reg Clock = 0;
    reg Reset = 0;
    wire [63:0] Result;

    integer i0 = 0, i1 = 0, i2 = 0, i3 = 0, i4 = 0;

    GSR GSR_INST (.GSR(1'b1));
    PUR PUR_INST (.PUR(1'b1));

    NCOAdder u1 (.DataA(DataA), .DataB(DataB), .Clock(Clock), .Reset(Reset), 
        .Result(Result)
    );

    initial
    begin
       DataA <= 0;
      for (i1 = 0; i1 < 200; i1 = i1 + 1) begin
        @(posedge Clock);
        #1  DataA <= DataA + 1'b1;
      end
    end
    initial
    begin
       DataB <= 0;
      for (i2 = 0; i2 < 200; i2 = i2 + 1) begin
        @(posedge Clock);
        #1  DataB <= DataB + 1'b1;
      end
    end
    always
    #5.00 Clock <= ~ Clock;

    initial
    begin
       Reset <= 1'b1;
      #100;
       Reset <= 1'b0;
    end
endmodule