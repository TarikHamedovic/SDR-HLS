module top (
    input wire i_clk,
    input wire i_reset,
    input wire i_ce, // Clock enable for controlling operation
    input wire [19:0] i_phase, // Input phase increment
    output wire signed [12:0] o_xval,
    output wire signed [12:0] o_yval
);

    // Internal signals
    wire [19:0] phase_accum;
    wire sin_out_intermediate;
    wire cos_out_intermediate;

    // Instantiate NCO Signal Generator
    nco_sig nco_generator (
        .clk(clk),
        .phase_inc_carr(i_phase),
        .phase_accum(phase_accum),
        .sin_out(sin_out_intermediate),
        .cos_out(cos_out_intermediate)
    );

    // Convert the boolean outputs to 13-bit signed for CORDIC compatibility
    wire signed [12:0] i_xval, i_yval;
    assign i_xval = sin_out_intermediate ? 4096 : -4096; // Maximum amplitude scaling
    assign i_yval = cos_out_intermediate ? 4096 : -4096;

    // Instantiate CORDIC module
    cordic #(
    ) cordic_instance (
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_ce(i_ce),
        .i_xval(i_xval),
        .i_yval(i_yval),
        .i_phase(phase_accum),
        .o_xval(o_xval),
        .o_yval(o_yval),
        .i_aux(1'b0),  // Auxiliary input, not used in this example
        .o_aux()       // Auxiliary output, not connected
    );

endmodule