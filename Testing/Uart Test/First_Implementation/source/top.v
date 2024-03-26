module top 
(
   input  i_Rx_Serial,
   input clk_25mhz,	
   // output o_Tx_Serial,
   output [7:0] led
);
 

reg[7:0] test;

reg o_Rx_DV;
reg[7:0] o_Rx_Byte;
wire o_Rx_DV1;
wire[7:0] o_Rx_Byte1;


assign led[0] = o_Rx_Byte[0];
assign led[1] = o_Rx_Byte[1];
assign led[2] = o_Rx_Byte[2];
assign led[3] = o_Rx_Byte[3];
assign led[4] = o_Rx_Byte[4];
assign led[5] = o_Rx_Byte[5];
assign led[6] = o_Rx_Byte[6];
assign led[7] = o_Rx_Byte[7];

// CLKS_PER_BIT(27) -> (25 MHz / 8) / 115200 ~ 27 bits @ 25MHz 
// In the UART Module the process is done with always(UartClk[2]) so the clock is effectively divided by 2^3 = 8
uart_rx  #(.CLKS_PER_BIT(27))  uart_rx1 (
	.osc_clk (clk_25mhz), 
	.i_Rx_Serial (i_Rx_Serial),
	.o_Rx_DV  (o_Rx_DV1),
	.o_Rx_Byte (o_Rx_Byte1)
);

always @ (posedge clk_25mhz)
	begin
	
	o_Rx_DV <= o_Rx_DV1;
    o_Rx_Byte <= o_Rx_Byte1;
	
	if (o_Rx_DV)
	begin	
	
 		case (o_Rx_Byte)
    		7'd48  : test <= 7'b0000000; // Input: 0
    		49  : test  <= 7'b00000001; // Input 1 
			50  : test <= 7'b00000010; // Input: 2
			51  : test <= 7'b00000011; // Input: 3
 		endcase
	end
end

endmodule
