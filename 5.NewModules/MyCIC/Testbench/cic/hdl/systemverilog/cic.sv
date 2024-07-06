module cic#(
    parameter int IW = 10,
    parameter int OW = 10,
    parameter int R = 10,
    parameter int M = 3
)(
    input logic i_clk,
    input logic i_reset,
    input logic i_ce,
    input logic signed [IW-1:0] i_data,

    output logic signed [OW-1:0] o_data,
    output logic o_ready

);

    //-----------------------------
    //
    //  INTEGRATOR
    //
    //-----------------------------
    logic signed[OW-1:0] integrator_data[M+1];
    logic integrator_ready[M+1];
    assign integrator_data[0] = {{(OW-IW){i_data[IW-1]}}, i_data};
    assign integrator_ready[0] = i_ce;

    genvar i;
    generate
        for(i = 1; i < M; i++) begin : gen_integrator
            integrator#(
                .IW(IW),
                .OW(OW) )
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

    //-----------------------------
    //
    //  DECIMATOR
    //
    //-----------------------------
    logic decimator_ready;
    logic [OW-1:0] decimator_data;

    decimator#(
        .W(OW),
        .R(R))
    decimator_inst(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_ce(i_ce),
        .i_data(integrator_data[M]),

        .o_data(decimator_data),
        .o_ready(decimator_ready)
    );

    //-----------------------------
    //
    //  COMB
    //
    //-----------------------------
     logic signed[OW-1:0] comb_data[M+1];
     logic comb_ready[M+1];
     assign comb_data[0] = decimator_data;
     assign comb_ready[0] = decimator_ready;

     genvar j;
     generate
         for(j = 1; j < M; j++) begin : gen_combo
              comb#(
                  .IW(OW),
                  .OW(OW),
                  .N(1*R/R)
              )comb_inst(
                  .i_clk(i_clk),
                  .i_reset(i_reset),
                  .i_ce(comb_ready[j-1]),
                  .i_data(comb_data[j-1]),

                  .o_data(comb_data[j]),
                  .o_ready(comb_ready[j])
              );
         end
     endgenerate

    assign o_data = comb_data[M];
    assign o_ready = comb_ready[M];

    //-----------------------------
    // For simulation only
    //-----------------------------
    initial begin
        $dumpfile("cic_waves.vcd");
        $dumpvars(0, cic);
    end

endmodule