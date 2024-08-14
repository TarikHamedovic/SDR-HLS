module top_tx_only
(
   input clk_25mhz,
   output o_Tx_Serial,
   output [7:0] led
);

// ASCII value for '0'
localparam [7:0] ASCII_ZERO = 8'h30;

// Intermediate signals for UART Tx
reg       i_Tx_DV;
reg [7:0] i_Tx_Byte;
wire      o_Tx_Active;
wire      o_Tx_Done;

// Assign fixed value '0' to LEDs for visualization
assign led[0] = ASCII_ZERO[0];
assign led[1] = ASCII_ZERO[1];
assign led[2] = ASCII_ZERO[2];
assign led[3] = ASCII_ZERO[3];
assign led[4] = ASCII_ZERO[4];
assign led[5] = ASCII_ZERO[5];
assign led[6] = ASCII_ZERO[6];
assign led[7] = ASCII_ZERO[7];

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
    // Transmit ASCII '0' continuously
    i_Tx_Byte <= ASCII_ZERO;
    if (!o_Tx_Done) begin
        i_Tx_DV <= 1'b1;  // Start transmission
    end else begin
        i_Tx_DV <= 1'b0;  // Transmission done
    end
end

endmodule
