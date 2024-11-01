module comb#(
    parameter int IW = 10,
    parameter int OW = 10,
    parameter int N = 7
)(
    input logic i_clk,
    input logic i_reset,
    input logic i_ce,
    input logic signed [IW-1:0] i_data,

    output logic signed [OW-1:0] o_data,
    output logic o_ready
);

integer i;
logic signed [IW-1:0] delay [0:N-1];

always_ff @(posedge i_clk or posedge i_reset) begin
    if (i_reset) begin
        o_data <= {OW{1'b0}};
        o_ready <= 1'b0;
        for (i = 0; i < N; i++) begin
            delay[i] <= {IW{1'b0}};
        end
    end else if (i_ce) begin
        delay[0] <= i_data;
        for (i = 1; i < N; i++) begin
            delay[i] <= delay[i-1];
        end
        o_data <= {{(OW-IW){i_data[IW-1]}}, i_data} - {{(OW-IW){delay[N-1][IW-1]}}, delay[N-1]};
        o_ready <= 1'b1;
    end else begin
        o_ready <= 1'b0;
    end
end

endmodule
