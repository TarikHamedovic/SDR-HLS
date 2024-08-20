
module sinewave_table #(
    parameter LUT_DEPTH  = 8,
    parameter DATA_WIDTH = 7
)(
    input  wire       [LUT_DEPTH-1 :0] address, // 8-bit address signal for 256 values
    output reg signed [DATA_WIDTH-1:0] value    // 7-bit output signal
);

    always @(*) begin
        case (address)
            8'd0: value = 7'h0;
            8'd1: value = 7'h1;
            8'd2: value = 7'h3;
            8'd3: value = 7'h4;
            8'd4: value = 7'h6;
            8'd5: value = 7'h7;
            8'd6: value = 7'h9;
            8'd7: value = 7'hA;
            8'd8: value = 7'hC;
            8'd9: value = 7'hD;
            8'd10: value = 7'hF;
            8'd11: value = 7'h10;
            8'd12: value = 7'h12;
            8'd13: value = 7'h13;
            8'd14: value = 7'h15;
            8'd15: value = 7'h16;
            8'd16: value = 7'h18;
            8'd17: value = 7'h19;
            8'd18: value = 7'h1A;
            8'd19: value = 7'h1C;
            8'd20: value = 7'h1D;
            8'd21: value = 7'h1F;
            8'd22: value = 7'h20;
            8'd23: value = 7'h21;
            8'd24: value = 7'h23;
            8'd25: value = 7'h24;
            8'd26: value = 7'h25;
            8'd27: value = 7'h26;
            8'd28: value = 7'h27;
            8'd29: value = 7'h29;
            8'd30: value = 7'h2A;
            8'd31: value = 7'h2B;
            8'd32: value = 7'h2C;
            8'd33: value = 7'h2D;
            8'd34: value = 7'h2E;
            8'd35: value = 7'h2F;
            8'd36: value = 7'h30;
            8'd37: value = 7'h31;
            8'd38: value = 7'h32;
            8'd39: value = 7'h33;
            8'd40: value = 7'h34;
            8'd41: value = 7'h35;
            8'd42: value = 7'h36;
            8'd43: value = 7'h36;
            8'd44: value = 7'h37;
            8'd45: value = 7'h38;
            8'd46: value = 7'h38;
            8'd47: value = 7'h39;
            8'd48: value = 7'h3A;
            8'd49: value = 7'h3A;
            8'd50: value = 7'h3B;
            8'd51: value = 7'h3B;
            8'd52: value = 7'h3C;
            8'd53: value = 7'h3C;
            8'd54: value = 7'h3D;
            8'd55: value = 7'h3D;
            8'd56: value = 7'h3D;
            8'd57: value = 7'h3E;
            8'd58: value = 7'h3E;
            8'd59: value = 7'h3E;
            8'd60: value = 7'h3E;
            8'd61: value = 7'h3E;
            8'd62: value = 7'h3E;
            8'd63: value = 7'h3E;
            8'd64: value = 7'h3F;
            8'd65: value = 7'h3E;
            8'd66: value = 7'h3E;
            8'd67: value = 7'h3E;
            8'd68: value = 7'h3E;
            8'd69: value = 7'h3E;
            8'd70: value = 7'h3E;
            8'd71: value = 7'h3E;
            8'd72: value = 7'h3D;
            8'd73: value = 7'h3D;
            8'd74: value = 7'h3D;
            8'd75: value = 7'h3C;
            8'd76: value = 7'h3C;
            8'd77: value = 7'h3B;
            8'd78: value = 7'h3B;
            8'd79: value = 7'h3A;
            8'd80: value = 7'h3A;
            8'd81: value = 7'h39;
            8'd82: value = 7'h38;
            8'd83: value = 7'h38;
            8'd84: value = 7'h37;
            8'd85: value = 7'h36;
            8'd86: value = 7'h36;
            8'd87: value = 7'h35;
            8'd88: value = 7'h34;
            8'd89: value = 7'h33;
            8'd90: value = 7'h32;
            8'd91: value = 7'h31;
            8'd92: value = 7'h30;
            8'd93: value = 7'h2F;
            8'd94: value = 7'h2E;
            8'd95: value = 7'h2D;
            8'd96: value = 7'h2C;
            8'd97: value = 7'h2B;
            8'd98: value = 7'h2A;
            8'd99: value = 7'h29;
            8'd100: value = 7'h27;
            8'd101: value = 7'h26;
            8'd102: value = 7'h25;
            8'd103: value = 7'h24;
            8'd104: value = 7'h23;
            8'd105: value = 7'h21;
            8'd106: value = 7'h20;
            8'd107: value = 7'h1F;
            8'd108: value = 7'h1D;
            8'd109: value = 7'h1C;
            8'd110: value = 7'h1A;
            8'd111: value = 7'h19;
            8'd112: value = 7'h18;
            8'd113: value = 7'h16;
            8'd114: value = 7'h15;
            8'd115: value = 7'h13;
            8'd116: value = 7'h12;
            8'd117: value = 7'h10;
            8'd118: value = 7'hF;
            8'd119: value = 7'hD;
            8'd120: value = 7'hC;
            8'd121: value = 7'hA;
            8'd122: value = 7'h9;
            8'd123: value = 7'h7;
            8'd124: value = 7'h6;
            8'd125: value = 7'h4;
            8'd126: value = 7'h3;
            8'd127: value = 7'h1;
            8'd128: value = 7'h0;
            8'd129: value = 7'h7F;
            8'd130: value = 7'h7D;
            8'd131: value = 7'h7C;
            8'd132: value = 7'h7A;
            8'd133: value = 7'h79;
            8'd134: value = 7'h77;
            8'd135: value = 7'h76;
            8'd136: value = 7'h74;
            8'd137: value = 7'h73;
            8'd138: value = 7'h71;
            8'd139: value = 7'h70;
            8'd140: value = 7'h6E;
            8'd141: value = 7'h6D;
            8'd142: value = 7'h6B;
            8'd143: value = 7'h6A;
            8'd144: value = 7'h68;
            8'd145: value = 7'h67;
            8'd146: value = 7'h66;
            8'd147: value = 7'h64;
            8'd148: value = 7'h63;
            8'd149: value = 7'h61;
            8'd150: value = 7'h60;
            8'd151: value = 7'h5F;
            8'd152: value = 7'h5D;
            8'd153: value = 7'h5C;
            8'd154: value = 7'h5B;
            8'd155: value = 7'h5A;
            8'd156: value = 7'h59;
            8'd157: value = 7'h57;
            8'd158: value = 7'h56;
            8'd159: value = 7'h55;
            8'd160: value = 7'h54;
            8'd161: value = 7'h53;
            8'd162: value = 7'h52;
            8'd163: value = 7'h51;
            8'd164: value = 7'h50;
            8'd165: value = 7'h4F;
            8'd166: value = 7'h4E;
            8'd167: value = 7'h4D;
            8'd168: value = 7'h4C;
            8'd169: value = 7'h4B;
            8'd170: value = 7'h4A;
            8'd171: value = 7'h4A;
            8'd172: value = 7'h49;
            8'd173: value = 7'h48;
            8'd174: value = 7'h48;
            8'd175: value = 7'h47;
            8'd176: value = 7'h46;
            8'd177: value = 7'h46;
            8'd178: value = 7'h45;
            8'd179: value = 7'h45;
            8'd180: value = 7'h44;
            8'd181: value = 7'h44;
            8'd182: value = 7'h43;
            8'd183: value = 7'h43;
            8'd184: value = 7'h43;
            8'd185: value = 7'h42;
            8'd186: value = 7'h42;
            8'd187: value = 7'h42;
            8'd188: value = 7'h42;
            8'd189: value = 7'h42;
            8'd190: value = 7'h42;
            8'd191: value = 7'h42;
            8'd192: value = 7'h41;
            8'd193: value = 7'h42;
            8'd194: value = 7'h42;
            8'd195: value = 7'h42;
            8'd196: value = 7'h42;
            8'd197: value = 7'h42;
            8'd198: value = 7'h42;
            8'd199: value = 7'h42;
            8'd200: value = 7'h43;
            8'd201: value = 7'h43;
            8'd202: value = 7'h43;
            8'd203: value = 7'h44;
            8'd204: value = 7'h44;
            8'd205: value = 7'h45;
            8'd206: value = 7'h45;
            8'd207: value = 7'h46;
            8'd208: value = 7'h46;
            8'd209: value = 7'h47;
            8'd210: value = 7'h48;
            8'd211: value = 7'h48;
            8'd212: value = 7'h49;
            8'd213: value = 7'h4A;
            8'd214: value = 7'h4A;
            8'd215: value = 7'h4B;
            8'd216: value = 7'h4C;
            8'd217: value = 7'h4D;
            8'd218: value = 7'h4E;
            8'd219: value = 7'h4F;
            8'd220: value = 7'h50;
            8'd221: value = 7'h51;
            8'd222: value = 7'h52;
            8'd223: value = 7'h53;
            8'd224: value = 7'h54;
            8'd225: value = 7'h55;
            8'd226: value = 7'h56;
            8'd227: value = 7'h57;
            8'd228: value = 7'h59;
            8'd229: value = 7'h5A;
            8'd230: value = 7'h5B;
            8'd231: value = 7'h5C;
            8'd232: value = 7'h5D;
            8'd233: value = 7'h5F;
            8'd234: value = 7'h60;
            8'd235: value = 7'h61;
            8'd236: value = 7'h63;
            8'd237: value = 7'h64;
            8'd238: value = 7'h66;
            8'd239: value = 7'h67;
            8'd240: value = 7'h68;
            8'd241: value = 7'h6A;
            8'd242: value = 7'h6B;
            8'd243: value = 7'h6D;
            8'd244: value = 7'h6E;
            8'd245: value = 7'h70;
            8'd246: value = 7'h71;
            8'd247: value = 7'h73;
            8'd248: value = 7'h74;
            8'd249: value = 7'h76;
            8'd250: value = 7'h77;
            8'd251: value = 7'h79;
            8'd252: value = 7'h7A;
            8'd253: value = 7'h7C;
            8'd254: value = 7'h7D;
            8'd255: value = 7'h7F;
            default: value = 7'h0;
        endcase
    end

endmodule
