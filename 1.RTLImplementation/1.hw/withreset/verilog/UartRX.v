module uart_rx #(
    parameter CLKS_PER_BIT = 1181
) (
    input osc_clk,
    input i_Rx_Serial,
    input arst,  // Asynchronous reset input
    output reg o_Rx_DV,
    output reg [7:0] o_Rx_Byte
);

  localparam s_IDLE = 3'b000;
  localparam s_RX_START_BIT = 3'b001;
  localparam s_RX_DATA_BITS = 3'b010;
  localparam s_RX_STOP_BIT = 3'b011;
  localparam s_CLEANUP = 3'b100;

  reg        r_Rx_Data_R = 1'b1;
  reg        r_Rx_Data = 1'b1;
  reg [ 7:0] UartClk = 8'b0;

  reg [15:0] r_Clock_Count = 0;
  reg [ 2:0] r_Bit_Index = 0;  // 8 bits total
  reg [ 7:0] r_Rx_Byte = 0;
  reg        r_Rx_DV = 0;
  reg [ 2:0] r_SM_Main = 0;
  reg        r_Rx_DV_last;


  // Clock generation and data valid signal control
  always @(posedge osc_clk or posedge arst) begin
    if (arst == 1'b1) begin
      UartClk <= 8'b0;
      r_Rx_DV_last <= 1'b0;
      o_Rx_DV <= 1'b0;
    end else begin
      UartClk <= UartClk + 1'b1;
      o_Rx_DV <= r_Rx_DV && !r_Rx_DV_last;
      r_Rx_DV_last <= r_Rx_DV;
    end
  end

  // Double-register the incoming data
  always @(posedge osc_clk or posedge arst) begin
  //always @(posedge UartClk[2] or posedge arst) begin
    if (arst == 1'b1) begin
      r_Rx_Data_R <= 1'b1;
      r_Rx_Data   <= 1'b1;
    end else begin
      r_Rx_Data_R <= i_Rx_Serial;
      r_Rx_Data   <= r_Rx_Data_R;
    end
  end

  // RX state machine
  always @(posedge osc_clk or posedge arst) begin
  //always @(posedge UartClk[2] or posedge arst) begin
    if (arst == 1'b1) begin
      r_SM_Main <= s_IDLE;
      r_Rx_DV <= 1'b0;
      r_Clock_Count <= 0;
      r_Bit_Index <= 0;
      r_Rx_Byte <= 0;
    end else begin
      case (r_SM_Main)
        s_IDLE: begin
          r_Rx_DV <= 1'b0;
          r_Clock_Count <= 0;
          r_Bit_Index <= 0;
          if (r_Rx_Data == 1'b0)  // Start bit detected
            r_SM_Main <= s_RX_START_BIT;
          else r_SM_Main <= s_IDLE;
        end

        s_RX_START_BIT: begin
          if (r_Clock_Count == (CLKS_PER_BIT - 1) / 2) begin
            if (r_Rx_Data == 1'b0) begin
              r_Clock_Count <= 0;  // Reset counter, found the middle
              r_SM_Main <= s_RX_DATA_BITS;
            end else begin
              r_SM_Main <= s_IDLE;
            end
          end else begin
            r_Clock_Count <= r_Clock_Count + 1'b1;
            r_SM_Main <= s_RX_START_BIT;
          end
        end

        s_RX_DATA_BITS: begin
          if (r_Clock_Count < CLKS_PER_BIT - 1) begin
            r_Clock_Count <= r_Clock_Count + 1'b1;
            r_SM_Main <= s_RX_DATA_BITS;
          end else begin
            r_Clock_Count <= 0;
            r_Rx_Byte[r_Bit_Index] <= r_Rx_Data;

            // Check if we have received all bits
            if (r_Bit_Index < 7) begin
              r_Bit_Index <= r_Bit_Index + 1'b1;
              r_SM_Main   <= s_RX_DATA_BITS;
            end else begin
              r_Bit_Index <= 0;
              r_SM_Main   <= s_RX_STOP_BIT;
            end
          end
        end

        s_RX_STOP_BIT: begin
          if (r_Clock_Count < CLKS_PER_BIT - 1) begin
            r_Clock_Count <= r_Clock_Count + 1'b1;
            r_SM_Main <= s_RX_STOP_BIT;
          end else begin
            r_Rx_DV <= 1'b1;
            o_Rx_Byte <= r_Rx_Byte;
            r_Clock_Count <= 0;
            r_SM_Main <= s_CLEANUP;
          end
        end

        s_CLEANUP: begin
          r_SM_Main <= s_IDLE;
          r_Rx_DV   <= 1'b0;
        end

        default: r_SM_Main <= s_IDLE;
      endcase
    end
  end

endmodule
