module comb(
    input wire i_clk,
    input wire i_reset,
    input wire i_ce, 
    input wire signed [IW-1:0]i_data,

    output reg signed [OW-1:0] o_data,
    output reg o_ready
);

parameter IW=4, OW=12, N=7;

integer i;

reg signed[IW-1:0] delay[N-1:0];

always @(posedge i_clk or i_reset) begin
    if(i_reset) begin
        o_data <= {OW{1'b0}};
        o_ready <= 1'b0;
    end else if(i_ce) begin
        delay[0] <= i_data;
        for(i = 1; i<N; i++)begin
            delay[i] <= delay[i-1];
        end
        o_data <= {{(OW-IW){i_data[IW-1]}}, i_data} - {{(OW-IW){delay[N-1][IW-1]}}, delay[N-1]};
        o_ready <= 1'b1;
    end else begin
        o_ready <= 1'b0;
    end
end

//----------------------------- 
// For simulation only
//----------------------------- 
initial begin
    $dumpfile("comb_waves.vcd");
    $dumpvars(0, comb);
end

endmodule