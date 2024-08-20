
module quarterwave_table #(
    parameter QLUT_WIDTH = 8,
    parameter DATA_WIDTH = 7
)(
    input  logic [QLUT_WIDTH-3:0] address, // 6-bit address signal for 64 values
    output logic signed [DATA_WIDTH-1:0] value    // 7-bit output signal
);

    always_comb begin
        unique case(address)
            6'd0: value = 7'h0;
            6'd1: value = 7'h2;
            6'd2: value = 7'h3;
            6'd3: value = 7'h5;
            6'd4: value = 7'h6;
            6'd5: value = 7'h8;
            6'd6: value = 7'hA;
            6'd7: value = 7'hB;
            6'd8: value = 7'hD;
            6'd9: value = 7'hE;
            6'd10: value = 7'h10;
            6'd11: value = 7'h11;
            6'd12: value = 7'h13;
            6'd13: value = 7'h14;
            6'd14: value = 7'h15;
            6'd15: value = 7'h17;
            6'd16: value = 7'h18;
            6'd17: value = 7'h1A;
            6'd18: value = 7'h1B;
            6'd19: value = 7'h1D;
            6'd20: value = 7'h1E;
            6'd21: value = 7'h1F;
            6'd22: value = 7'h21;
            6'd23: value = 7'h22;
            6'd24: value = 7'h23;
            6'd25: value = 7'h24;
            6'd26: value = 7'h26;
            6'd27: value = 7'h27;
            6'd28: value = 7'h28;
            6'd29: value = 7'h29;
            6'd30: value = 7'h2A;
            6'd31: value = 7'h2B;
            6'd32: value = 7'h2D;
            6'd33: value = 7'h2E;
            6'd34: value = 7'h2F;
            6'd35: value = 7'h30;
            6'd36: value = 7'h31;
            6'd37: value = 7'h32;
            6'd38: value = 7'h33;
            6'd39: value = 7'h33;
            6'd40: value = 7'h34;
            6'd41: value = 7'h35;
            6'd42: value = 7'h36;
            6'd43: value = 7'h37;
            6'd44: value = 7'h37;
            6'd45: value = 7'h38;
            6'd46: value = 7'h39;
            6'd47: value = 7'h39;
            6'd48: value = 7'h3A;
            6'd49: value = 7'h3B;
            6'd50: value = 7'h3B;
            6'd51: value = 7'h3C;
            6'd52: value = 7'h3C;
            6'd53: value = 7'h3C;
            6'd54: value = 7'h3D;
            6'd55: value = 7'h3D;
            6'd56: value = 7'h3D;
            6'd57: value = 7'h3E;
            6'd58: value = 7'h3E;
            6'd59: value = 7'h3E;
            6'd60: value = 7'h3E;
            6'd61: value = 7'h3E;
            6'd62: value = 7'h3E;
            6'd63: value = 7'h3E;

            default: value = 7'd0;
        endcase
    end

endmodule
