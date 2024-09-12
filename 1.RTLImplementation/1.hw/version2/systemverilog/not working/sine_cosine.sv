module sine_cosine # (
            parameter                            DATA_WIDTH  = 16, // width of sine cosine output
            parameter                            QLUT_DEPTH  = 11  // width theta input (4 * LUT)
)
(
    input   logic                                clk,
    input   logic                                arst,
    input   logic           [QLUT_DEPTH -1:0]    theta,
    output  logic signed    [DATA_WIDTH -1:0]    sinewave_out,
    output  logic signed    [DATA_WIDTH -1:0]    cosinewave_out
);
            logic          [QLUT_DEPTH-1:0]      theta_reg;
            logic          [1:0]                 theta_sign[1:0];
            logic signed   [QLUT_DEPTH-1:0]      sinewave_data, cosinewave_data;
            logic          [QLUT_DEPTH-3:0]      sinewave_address, cosinewave_address;

  quarterwave_table #( .QLUT_DEPTH(QLUT_DEPTH), .DATA_WIDTH(DATA_WIDTH) ) sinewave_inst (
      .address(sinewave_address),
      .value  (sinewave_data)
  );

    quarterwave_table #( .QLUT_DEPTH(QLUT_DEPTH), .DATA_WIDTH(DATA_WIDTH) ) cosinewave_inst (
      .address(cosinewave_address),
      .value  (cosinewave_data)
  );

    always_ff @ (posedge clk or posedge arst) begin
        if (arst == 1'b1) begin
            theta_reg          <= {QLUT_DEPTH{1'b0}};
            sinewave_address   <= {QLUT_DEPTH-2{1'b0}};
            cosinewave_address <= {QLUT_DEPTH-2{1'b0}};
            sinewave_out       <= {DATA_WIDTH{1'b0}};
            cosinewave_out     <= {DATA_WIDTH{1'b0}};
            theta_sign[0]      <= 2'b00;
            theta_sign[1]      <= 2'b00;
        end
        else begin
            theta_reg          <= theta;

            theta_sign[0]      <= theta_reg[QLUT_DEPTH-1:QLUT_DEPTH-2];
            theta_sign[1]      <= theta_sign[0];

            sinewave_address   <= {QLUT_DEPTH-2{ theta_reg[QLUT_DEPTH-2]}} ^ theta_reg[QLUT_DEPTH-3:0];
            cosinewave_address <= {QLUT_DEPTH-2{~theta_reg[QLUT_DEPTH-2]}} ^ theta_reg[QLUT_DEPTH-3:0];

            sinewave_out       <= theta_sign[1][1] ? -sinewave_data   : sinewave_data;
            cosinewave_out     <= ^theta_sign[1]   ? -cosinewave_data : cosinewave_data;
        end
    end
endmodule
