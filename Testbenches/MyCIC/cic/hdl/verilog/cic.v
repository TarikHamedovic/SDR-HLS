module cic(
    input wire i_clk,
    input wire i_reset,
    input wire i_ce,
    input wire signed[IW-1:0] i_data,
    
    output reg signed[OW-1:0] o_data,
    output reg o_ready
);


    parameter IW=2, OW=128, R=100, M=10;

    // INTEGRATOR //
    wire signed [OW-1:0] integrator_data[0:M];
    wire integrator_ready [0:M];
    assign integrator_data[0] = {{(OW-IW){i_data[IW-1]}}, i_data};
    assign integrator_ready[0] = i_ce;

    genvar i;
    generate
        for(i = 1; i < M; i++)begin
        
            integrator#(
                .IW(IW),
                .OW(OW))
            integrator_inst(
                .i_clk(i_clk),
                .i_reset(i_reset),
                .i_ce(integrator_ready[i-1]),
                .i_data(integrator_data[i-1]),

                .o_data(integrator_data[i]),
                .o_ready(integrator_ready[i])
            );
        end
    endgenerate

    // DECIMATOR //
    wire decimator_ready;
    wire signed [OW-1:0] decimator_data;
    decimator #(.W(OW),
                .R(R))

    decimator_inst(
        .i_clk(i_clk),
        .i_data(integrator_data[M]),
        .i_ce(integrator_ready[M]),
        .o_data(decimator_data),
        .o_ready(decimator_ready)
    );

    // COMB //
    wire signed [OW-1:0] comb_data[0:M];
    wire comb_ready [0:M];
    assign comb_data[0] = decimator_data;
    assign comb_ready[0] = decimator_ready;
    genvar j;
    generate
    for(j = 1; j < M; j++) begin
        comb #(
             .IW(OW),
             .OW(OW),
             .N(1*R/R))
        comb_0 (
                .i_clk(i_clk),
                .i_data(comb_data[j-1]),
                .i_ce(comb_ready[j-1]),
                .o_data(comb_data[j]),
                .o_ready(comb_ready[j])
            );
    end
    endgenerate

    assign o_data = comb_data[M];
    assign o_ready = comb_ready[M];

    initial begin
    $dumpfile ("cic.vcd");
    $dumpvars (0, cic);
    end
    
endmodule