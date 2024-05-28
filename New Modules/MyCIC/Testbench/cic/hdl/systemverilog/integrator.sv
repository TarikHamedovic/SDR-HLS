module integrator #(
    parameter int IW = 5,   // Input width
    parameter int OW = 10    // Output width
)(
    input logic              i_clk,
    input logic              i_reset,
    input logic              i_ce,
    input logic signed [IW-1:0] i_data,
    
    output logic signed [OW-1:0] o_data,
    output logic             o_ready
);

logic signed [OW-1:0] accumulator = '0;  // Initial value with zero

always_ff @(posedge i_clk or posedge i_reset) begin
    if (i_reset) begin
        accumulator <= '0; // Reset accumulator to zero
        o_data <= '0;      // Reset output data to zero
        o_ready <= 1'b0;     // Reset auxiliary output to zero
    end else if (i_ce) begin
        accumulator <= accumulator + {{(OW-IW){i_data[IW-1]}}, i_data};  // Sign extend and accumulate
        o_data <= accumulator;  // Update output data
        o_ready <= 1'b1;          
    end else begin
        o_ready <= 1'b0;  
    end
end

//----------------------------- 
// For simulation only
//----------------------------- 
initial begin
    $dumpfile("integrator_waves.vcd");
    $dumpvars(0, integrator);
end

endmodule

