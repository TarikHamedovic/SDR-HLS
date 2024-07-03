module decimator #(
    parameter int W = 10,  // Width of the data
    parameter int R = 5,  // Decimation ratio
    parameter int RW = 5 // Width of the counter
)(
    input logic i_clk,
    input logic i_reset,
    input logic i_ce,
    input logic signed [W-1:0] i_data,

    output logic signed [W-1:0] o_data,
    output logic o_ready
);

    logic [RW-1:0] decimator_counter = 0; // Initializing counter to 0

    always_ff @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            o_data <= {W{1'b0}};
            o_ready <= 1'b0;
            decimator_counter <= 0;
        end else if (i_ce) begin
            decimator_counter <= decimator_counter + 1'b1;
            
            if (decimator_counter >= R) begin
                decimator_counter <= 0;
                o_data <= i_data;
                o_ready <= 1'b1;
            end else begin
                o_ready <= 1'b0;
            end
        end
    end
endmodule

