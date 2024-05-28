module decimator(
    input wire i_clk,
    input wire i_reset,
    input wire i_ce,
    input wire signed[W-1:0] i_data,

    output reg signed[W-1:0] o_data,
    output reg o_ready

);

    parameter W=5, R=5;
    parameter RW=32;

    reg[RW-1:0] decimator_counter = {RW{1'b0}};

    always @(posedge i_clk or posedge i_reset)begin
        
        if(i_reset)begin
           o_data <= {W{1'b0}};
           o_ready <= 1'b0; 
        end else if(i_ce) begin
           decimator_counter <= decimator_counter + 1'b1; 
        end

        if(decimator_counter > (R - 1))begin
            decimator_counter <= {RW{1'b0}};
            o_data <= i_data;
            o_ready <= 1'b1;
        end else begin
            o_ready <= 1'b0;
        end        
    end

endmodule