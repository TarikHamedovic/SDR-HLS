module LVDS(

	input wire i_clk,
	input wire i_reset,
	input wire i_LVDS_p,
	input wire i_LVDS_n,
	
	output wire o_clk,
	output reg o_LVDS

);
assign o_clk = i_clk;

always @(posedge i_clk or posedge i_reset)begin
	if(i_reset)begin
		o_LVDS <= 1'b0;
	end else begin
        o_LVDS <= (i_LVDS_p > i_LVDS_n) ? 1'b1 : 1'b0;
	end
end


endmodule