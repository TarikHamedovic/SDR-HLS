
module quarterwave_table #(
    parameter QLUT_DEPTH = 8,
    parameter DATA_WIDTH = 12
)(
    input  reg        [QLUT_DEPTH-3:0] address, // 6-bit address signal for 64 values
    output reg signed [DATA_WIDTH-1:0] value    // 12-bit output signal
);

    always_comb begin
        unique case(address)
            6'd0: value = 12'h19;
            6'd1: value = 12'h4B;
            6'd2: value = 12'h7D;
            6'd3: value = 12'hAF;
            6'd4: value = 12'hE1;
            6'd5: value = 12'h113;
            6'd6: value = 12'h145;
            6'd7: value = 12'h176;
            6'd8: value = 12'h1A7;
            6'd9: value = 12'h1D8;
            6'd10: value = 12'h209;
            6'd11: value = 12'h23A;
            6'd12: value = 12'h26A;
            6'd13: value = 12'h299;
            6'd14: value = 12'h2C9;
            6'd15: value = 12'h2F8;
            6'd16: value = 12'h326;
            6'd17: value = 12'h354;
            6'd18: value = 12'h381;
            6'd19: value = 12'h3AE;
            6'd20: value = 12'h3DB;
            6'd21: value = 12'h406;
            6'd22: value = 12'h431;
            6'd23: value = 12'h45C;
            6'd24: value = 12'h486;
            6'd25: value = 12'h4AF;
            6'd26: value = 12'h4D7;
            6'd27: value = 12'h4FF;
            6'd28: value = 12'h525;
            6'd29: value = 12'h54B;
            6'd30: value = 12'h571;
            6'd31: value = 12'h595;
            6'd32: value = 12'h5B9;
            6'd33: value = 12'h5DB;
            6'd34: value = 12'h5FD;
            6'd35: value = 12'h61E;
            6'd36: value = 12'h63E;
            6'd37: value = 12'h65D;
            6'd38: value = 12'h67B;
            6'd39: value = 12'h697;
            6'd40: value = 12'h6B3;
            6'd41: value = 12'h6CE;
            6'd42: value = 12'h6E8;
            6'd43: value = 12'h701;
            6'd44: value = 12'h718;
            6'd45: value = 12'h72F;
            6'd46: value = 12'h745;
            6'd47: value = 12'h759;
            6'd48: value = 12'h76C;
            6'd49: value = 12'h77E;
            6'd50: value = 12'h78F;
            6'd51: value = 12'h79F;
            6'd52: value = 12'h7AE;
            6'd53: value = 12'h7BB;
            6'd54: value = 12'h7C7;
            6'd55: value = 12'h7D2;
            6'd56: value = 12'h7DC;
            6'd57: value = 12'h7E5;
            6'd58: value = 12'h7EC;
            6'd59: value = 12'h7F2;
            6'd60: value = 12'h7F7;
            6'd61: value = 12'h7FB;
            6'd62: value = 12'h7FD;
            6'd63: value = 12'h7FE;

            default: value = 12'd0;
        endcase
    end

endmodule
