module top_rx_only
(
    input  i_Rx_Serial,
    input  clk_25mhz,
    output [7:0] led
);

// Intermediate signals for UART Rx
wire      o_Rx_DV1;
wire [7:0] o_Rx_Byte1;

// Assign received data to LEDs for visualization
assign led[0] = o_Rx_Byte1[0];
assign led[1] = o_Rx_Byte1[1];
assign led[2] = o_Rx_Byte1[2];
assign led[3] = o_Rx_Byte1[3];
assign led[4] = o_Rx_Byte1[4];
assign led[5] = o_Rx_Byte1[5];
assign led[6] = o_Rx_Byte1[6];
assign led[7] = o_Rx_Byte1[7];

// Instance of UART Receiver
uart_rx  #(.CLKS_PER_BIT(217)) uart_rx1 (
    .osc_clk(clk_25mhz), 
    .i_Rx_Serial(i_Rx_Serial),
    .o_Rx_DV(o_Rx_DV1),
    .o_Rx_Byte(o_Rx_Byte1)
);

endmodule

