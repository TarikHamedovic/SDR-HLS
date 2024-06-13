module top 
(
   input  i_Rx_Serial,
   input clk_25mhz,
   output o_Tx_Serial,
   output [7:0] led
);
 
// Intermediate signals for UART Rx
reg       o_Rx_DV;
reg [7:0] o_Rx_Byte;
wire      o_Rx_DV1;
wire [7:0] o_Rx_Byte1;

// Intermediate signals for UART Tx
reg       i_Tx_DV;
reg [7:0] i_Tx_Byte;
wire      o_Tx_Active;
wire      o_Tx_Done;

// Assign received data to LEDs for visualization
assign led[0] = o_Rx_Byte[0];
assign led[1] = o_Rx_Byte[1];
assign led[2] = o_Rx_Byte[2];
assign led[3] = o_Rx_Byte[3];
assign led[4] = o_Rx_Byte[4];
assign led[5] = o_Rx_Byte[5];
assign led[6] = o_Rx_Byte[6];
assign led[7] = o_Rx_Byte[7];

// Instance of UART Receiver
uart_rx  #(.CLKS_PER_BIT(217)) uart_rx1 (
    .osc_clk(clk_25mhz), 
    .i_Rx_Serial(i_Rx_Serial),
    .o_Rx_DV(o_Rx_DV1),
    .o_Rx_Byte(o_Rx_Byte1)
);

// Instance of UART Transmitter
uart_tx  #(.CLKS_PER_BIT(217)) uart_tx1 (
    .osc_clk(clk_25mhz), 
    .i_Tx_DV(i_Tx_DV),
    .i_Tx_Byte(i_Tx_Byte),
    .o_Tx_Active(o_Tx_Active),
    .o_Tx_Serial(o_Tx_Serial),
    .o_Tx_Done(o_Tx_Done)
);

// Main processing
always @ (posedge clk_25mhz)
begin
    // Update Rx signals
    o_Rx_DV <= o_Rx_DV1;
    o_Rx_Byte <= o_Rx_Byte1;
    
    // If data is received, start transmitting it
    if (o_Rx_DV) begin
        i_Tx_Byte <= o_Rx_Byte;
        i_Tx_DV <= 1'b1;  // Start transmission
    end else if (o_Tx_Done) begin
        i_Tx_DV <= 1'b0;  // Transmission done
    end
end

endmodule
