module top (
    input wire Clock,
    input wire ClkEn,
    input wire Aclr,
    input wire [11:0] DataA,
    input wire [11:0] DataB,
    output wire [23:0] Result
);

    // Instantiate the Multiplier module
    Multiplier multiplier_inst (
        .Clock(Clock),
        .ClkEn(ClkEn),
        .Aclr(Aclr),
        .DataA(DataA),
        .DataB(DataB),
        .Result(Result)
    );

endmodule

