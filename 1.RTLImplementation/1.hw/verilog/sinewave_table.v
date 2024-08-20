
module sinewave_table #(
    parameter LUT_WIDTH = 8,
    parameter SINE_WIDTH = 7
)(
    input logic [LUT_WIDTH-1:0] address, // 8-bit address signal for 256 values
    output logic signed [SINE_WIDTH-1:0] value    // 7-bit output signal
);

    // LUT with 256 predefined values for the 1st quarter period of sine
    logic signed [SINE_WIDTH-1:0] sinewave_table [256];

    assign value = sinewave_table[address];

    initial begin
        sinewave_table[0] = 7'h0;
        sinewave_table[1] = 7'h1;
        sinewave_table[2] = 7'h3;
        sinewave_table[3] = 7'h4;
        sinewave_table[4] = 7'h6;
        sinewave_table[5] = 7'h7;
        sinewave_table[6] = 7'h9;
        sinewave_table[7] = 7'hA;
        sinewave_table[8] = 7'hC;
        sinewave_table[9] = 7'hD;
        sinewave_table[10] = 7'hF;
        sinewave_table[11] = 7'h10;
        sinewave_table[12] = 7'h12;
        sinewave_table[13] = 7'h13;
        sinewave_table[14] = 7'h15;
        sinewave_table[15] = 7'h16;
        sinewave_table[16] = 7'h18;
        sinewave_table[17] = 7'h19;
        sinewave_table[18] = 7'h1A;
        sinewave_table[19] = 7'h1C;
        sinewave_table[20] = 7'h1D;
        sinewave_table[21] = 7'h1F;
        sinewave_table[22] = 7'h20;
        sinewave_table[23] = 7'h21;
        sinewave_table[24] = 7'h23;
        sinewave_table[25] = 7'h24;
        sinewave_table[26] = 7'h25;
        sinewave_table[27] = 7'h26;
        sinewave_table[28] = 7'h27;
        sinewave_table[29] = 7'h29;
        sinewave_table[30] = 7'h2A;
        sinewave_table[31] = 7'h2B;
        sinewave_table[32] = 7'h2C;
        sinewave_table[33] = 7'h2D;
        sinewave_table[34] = 7'h2E;
        sinewave_table[35] = 7'h2F;
        sinewave_table[36] = 7'h30;
        sinewave_table[37] = 7'h31;
        sinewave_table[38] = 7'h32;
        sinewave_table[39] = 7'h33;
        sinewave_table[40] = 7'h34;
        sinewave_table[41] = 7'h35;
        sinewave_table[42] = 7'h36;
        sinewave_table[43] = 7'h36;
        sinewave_table[44] = 7'h37;
        sinewave_table[45] = 7'h38;
        sinewave_table[46] = 7'h38;
        sinewave_table[47] = 7'h39;
        sinewave_table[48] = 7'h3A;
        sinewave_table[49] = 7'h3A;
        sinewave_table[50] = 7'h3B;
        sinewave_table[51] = 7'h3B;
        sinewave_table[52] = 7'h3C;
        sinewave_table[53] = 7'h3C;
        sinewave_table[54] = 7'h3D;
        sinewave_table[55] = 7'h3D;
        sinewave_table[56] = 7'h3D;
        sinewave_table[57] = 7'h3E;
        sinewave_table[58] = 7'h3E;
        sinewave_table[59] = 7'h3E;
        sinewave_table[60] = 7'h3E;
        sinewave_table[61] = 7'h3E;
        sinewave_table[62] = 7'h3E;
        sinewave_table[63] = 7'h3E;
        sinewave_table[64] = 7'h3F;
        sinewave_table[65] = 7'h3E;
        sinewave_table[66] = 7'h3E;
        sinewave_table[67] = 7'h3E;
        sinewave_table[68] = 7'h3E;
        sinewave_table[69] = 7'h3E;
        sinewave_table[70] = 7'h3E;
        sinewave_table[71] = 7'h3E;
        sinewave_table[72] = 7'h3D;
        sinewave_table[73] = 7'h3D;
        sinewave_table[74] = 7'h3D;
        sinewave_table[75] = 7'h3C;
        sinewave_table[76] = 7'h3C;
        sinewave_table[77] = 7'h3B;
        sinewave_table[78] = 7'h3B;
        sinewave_table[79] = 7'h3A;
        sinewave_table[80] = 7'h3A;
        sinewave_table[81] = 7'h39;
        sinewave_table[82] = 7'h38;
        sinewave_table[83] = 7'h38;
        sinewave_table[84] = 7'h37;
        sinewave_table[85] = 7'h36;
        sinewave_table[86] = 7'h36;
        sinewave_table[87] = 7'h35;
        sinewave_table[88] = 7'h34;
        sinewave_table[89] = 7'h33;
        sinewave_table[90] = 7'h32;
        sinewave_table[91] = 7'h31;
        sinewave_table[92] = 7'h30;
        sinewave_table[93] = 7'h2F;
        sinewave_table[94] = 7'h2E;
        sinewave_table[95] = 7'h2D;
        sinewave_table[96] = 7'h2C;
        sinewave_table[97] = 7'h2B;
        sinewave_table[98] = 7'h2A;
        sinewave_table[99] = 7'h29;
        sinewave_table[100] = 7'h27;
        sinewave_table[101] = 7'h26;
        sinewave_table[102] = 7'h25;
        sinewave_table[103] = 7'h24;
        sinewave_table[104] = 7'h23;
        sinewave_table[105] = 7'h21;
        sinewave_table[106] = 7'h20;
        sinewave_table[107] = 7'h1F;
        sinewave_table[108] = 7'h1D;
        sinewave_table[109] = 7'h1C;
        sinewave_table[110] = 7'h1A;
        sinewave_table[111] = 7'h19;
        sinewave_table[112] = 7'h18;
        sinewave_table[113] = 7'h16;
        sinewave_table[114] = 7'h15;
        sinewave_table[115] = 7'h13;
        sinewave_table[116] = 7'h12;
        sinewave_table[117] = 7'h10;
        sinewave_table[118] = 7'hF;
        sinewave_table[119] = 7'hD;
        sinewave_table[120] = 7'hC;
        sinewave_table[121] = 7'hA;
        sinewave_table[122] = 7'h9;
        sinewave_table[123] = 7'h7;
        sinewave_table[124] = 7'h6;
        sinewave_table[125] = 7'h4;
        sinewave_table[126] = 7'h3;
        sinewave_table[127] = 7'h1;
        sinewave_table[128] = 7'h0;
        sinewave_table[129] = 7'h7F;
        sinewave_table[130] = 7'h7D;
        sinewave_table[131] = 7'h7C;
        sinewave_table[132] = 7'h7A;
        sinewave_table[133] = 7'h79;
        sinewave_table[134] = 7'h77;
        sinewave_table[135] = 7'h76;
        sinewave_table[136] = 7'h74;
        sinewave_table[137] = 7'h73;
        sinewave_table[138] = 7'h71;
        sinewave_table[139] = 7'h70;
        sinewave_table[140] = 7'h6E;
        sinewave_table[141] = 7'h6D;
        sinewave_table[142] = 7'h6B;
        sinewave_table[143] = 7'h6A;
        sinewave_table[144] = 7'h68;
        sinewave_table[145] = 7'h67;
        sinewave_table[146] = 7'h66;
        sinewave_table[147] = 7'h64;
        sinewave_table[148] = 7'h63;
        sinewave_table[149] = 7'h61;
        sinewave_table[150] = 7'h60;
        sinewave_table[151] = 7'h5F;
        sinewave_table[152] = 7'h5D;
        sinewave_table[153] = 7'h5C;
        sinewave_table[154] = 7'h5B;
        sinewave_table[155] = 7'h5A;
        sinewave_table[156] = 7'h59;
        sinewave_table[157] = 7'h57;
        sinewave_table[158] = 7'h56;
        sinewave_table[159] = 7'h55;
        sinewave_table[160] = 7'h54;
        sinewave_table[161] = 7'h53;
        sinewave_table[162] = 7'h52;
        sinewave_table[163] = 7'h51;
        sinewave_table[164] = 7'h50;
        sinewave_table[165] = 7'h4F;
        sinewave_table[166] = 7'h4E;
        sinewave_table[167] = 7'h4D;
        sinewave_table[168] = 7'h4C;
        sinewave_table[169] = 7'h4B;
        sinewave_table[170] = 7'h4A;
        sinewave_table[171] = 7'h4A;
        sinewave_table[172] = 7'h49;
        sinewave_table[173] = 7'h48;
        sinewave_table[174] = 7'h48;
        sinewave_table[175] = 7'h47;
        sinewave_table[176] = 7'h46;
        sinewave_table[177] = 7'h46;
        sinewave_table[178] = 7'h45;
        sinewave_table[179] = 7'h45;
        sinewave_table[180] = 7'h44;
        sinewave_table[181] = 7'h44;
        sinewave_table[182] = 7'h43;
        sinewave_table[183] = 7'h43;
        sinewave_table[184] = 7'h43;
        sinewave_table[185] = 7'h42;
        sinewave_table[186] = 7'h42;
        sinewave_table[187] = 7'h42;
        sinewave_table[188] = 7'h42;
        sinewave_table[189] = 7'h42;
        sinewave_table[190] = 7'h42;
        sinewave_table[191] = 7'h42;
        sinewave_table[192] = 7'h41;
        sinewave_table[193] = 7'h42;
        sinewave_table[194] = 7'h42;
        sinewave_table[195] = 7'h42;
        sinewave_table[196] = 7'h42;
        sinewave_table[197] = 7'h42;
        sinewave_table[198] = 7'h42;
        sinewave_table[199] = 7'h42;
        sinewave_table[200] = 7'h43;
        sinewave_table[201] = 7'h43;
        sinewave_table[202] = 7'h43;
        sinewave_table[203] = 7'h44;
        sinewave_table[204] = 7'h44;
        sinewave_table[205] = 7'h45;
        sinewave_table[206] = 7'h45;
        sinewave_table[207] = 7'h46;
        sinewave_table[208] = 7'h46;
        sinewave_table[209] = 7'h47;
        sinewave_table[210] = 7'h48;
        sinewave_table[211] = 7'h48;
        sinewave_table[212] = 7'h49;
        sinewave_table[213] = 7'h4A;
        sinewave_table[214] = 7'h4A;
        sinewave_table[215] = 7'h4B;
        sinewave_table[216] = 7'h4C;
        sinewave_table[217] = 7'h4D;
        sinewave_table[218] = 7'h4E;
        sinewave_table[219] = 7'h4F;
        sinewave_table[220] = 7'h50;
        sinewave_table[221] = 7'h51;
        sinewave_table[222] = 7'h52;
        sinewave_table[223] = 7'h53;
        sinewave_table[224] = 7'h54;
        sinewave_table[225] = 7'h55;
        sinewave_table[226] = 7'h56;
        sinewave_table[227] = 7'h57;
        sinewave_table[228] = 7'h59;
        sinewave_table[229] = 7'h5A;
        sinewave_table[230] = 7'h5B;
        sinewave_table[231] = 7'h5C;
        sinewave_table[232] = 7'h5D;
        sinewave_table[233] = 7'h5F;
        sinewave_table[234] = 7'h60;
        sinewave_table[235] = 7'h61;
        sinewave_table[236] = 7'h63;
        sinewave_table[237] = 7'h64;
        sinewave_table[238] = 7'h66;
        sinewave_table[239] = 7'h67;
        sinewave_table[240] = 7'h68;
        sinewave_table[241] = 7'h6A;
        sinewave_table[242] = 7'h6B;
        sinewave_table[243] = 7'h6D;
        sinewave_table[244] = 7'h6E;
        sinewave_table[245] = 7'h70;
        sinewave_table[246] = 7'h71;
        sinewave_table[247] = 7'h73;
        sinewave_table[248] = 7'h74;
        sinewave_table[249] = 7'h76;
        sinewave_table[250] = 7'h77;
        sinewave_table[251] = 7'h79;
        sinewave_table[252] = 7'h7A;
        sinewave_table[253] = 7'h7C;
        sinewave_table[254] = 7'h7D;
        sinewave_table[255] = 7'h7F;

    end

endmodule
