module integrator(
    input wire              i_clk,
    input wire              i_reset,
    input wire              i_ce,
    input wire signed [IW-1:0] i_data,
    output reg signed [OW-1:0] o_data,
    output reg              o_ready
);

parameter IW = 5, OW = 10;

reg signed [OW-1:0] accumulator = {OW{1'b0}};

always @(posedge i_clk or posedge i_reset) begin
    if (i_reset) begin
        accumulator <= {OW{1'b0}};
        o_data <= {OW{1'b0}};
        o_ready <= 1'b0;
    end else if (i_ce) begin
        accumulator <= accumulator + {{(OW-IW){i_data[IW-1]}}, i_data};  // Sign extend and accumulate
        o_data <= accumulator;
        o_ready <= 1'b1;
    end else begin
        o_ready <= 1'b0;  // Maintain previous output data unless reset or clock enabled
    end
end


endmodule
