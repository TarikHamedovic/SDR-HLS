module PWM#(
	parameter DATA_WIDTH = 10,
	parameter COUNTER_WIDTH = 10
)(
	input clk,
	input [DATA_WIDTH-1:0] DataIn,
	output reg PWMOut
);

reg [COUNTER_WIDTH-1:0] counter;
reg [DATA_WIDTH-1:0] DataInReg;

always @(posedge clk)
	begin
		counter <= counter + 1'b1;
		if (counter == 0)
			DataInReg <= DataIn+  10'd 512;
	
		if (counter > (DataInReg[COUNTER_WIDTH-1:0])) 
			PWMOut <= 1'b0;
		else
			PWMOut <= 1'b1;
	end
	
endmodule