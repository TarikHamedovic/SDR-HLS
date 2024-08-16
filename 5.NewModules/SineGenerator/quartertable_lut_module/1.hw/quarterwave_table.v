
module quarterwave_table #(
    parameter LUT_WIDTH = 8,
    parameter SINE_WIDTH = 7
)(
    input logic [LUT_WIDTH-3:0] address, // 6-bit address signal for 64 values
    output logic signed [SINE_WIDTH-1:0] value    // 7-bit output signal
);

    logic signed [SINE_WIDTH-1:0] quarterwave_table [64];

    assign value = quarterwave_table[address];

    initial begin
        quarterwave_table[0] = 7'h0;
        quarterwave_table[1] = 7'h2;
        quarterwave_table[2] = 7'h3;
        quarterwave_table[3] = 7'h5;
        quarterwave_table[4] = 7'h6;
        quarterwave_table[5] = 7'h8;
        quarterwave_table[6] = 7'hA;
        quarterwave_table[7] = 7'hB;
        quarterwave_table[8] = 7'hD;
        quarterwave_table[9] = 7'hE;
        quarterwave_table[10] = 7'h10;
        quarterwave_table[11] = 7'h11;
        quarterwave_table[12] = 7'h13;
        quarterwave_table[13] = 7'h14;
        quarterwave_table[14] = 7'h15;
        quarterwave_table[15] = 7'h17;
        quarterwave_table[16] = 7'h18;
        quarterwave_table[17] = 7'h1A;
        quarterwave_table[18] = 7'h1B;
        quarterwave_table[19] = 7'h1D;
        quarterwave_table[20] = 7'h1E;
        quarterwave_table[21] = 7'h1F;
        quarterwave_table[22] = 7'h21;
        quarterwave_table[23] = 7'h22;
        quarterwave_table[24] = 7'h23;
        quarterwave_table[25] = 7'h24;
        quarterwave_table[26] = 7'h26;
        quarterwave_table[27] = 7'h27;
        quarterwave_table[28] = 7'h28;
        quarterwave_table[29] = 7'h29;
        quarterwave_table[30] = 7'h2A;
        quarterwave_table[31] = 7'h2B;
        quarterwave_table[32] = 7'h2D;
        quarterwave_table[33] = 7'h2E;
        quarterwave_table[34] = 7'h2F;
        quarterwave_table[35] = 7'h30;
        quarterwave_table[36] = 7'h31;
        quarterwave_table[37] = 7'h32;
        quarterwave_table[38] = 7'h33;
        quarterwave_table[39] = 7'h33;
        quarterwave_table[40] = 7'h34;
        quarterwave_table[41] = 7'h35;
        quarterwave_table[42] = 7'h36;
        quarterwave_table[43] = 7'h37;
        quarterwave_table[44] = 7'h37;
        quarterwave_table[45] = 7'h38;
        quarterwave_table[46] = 7'h39;
        quarterwave_table[47] = 7'h39;
        quarterwave_table[48] = 7'h3A;
        quarterwave_table[49] = 7'h3B;
        quarterwave_table[50] = 7'h3B;
        quarterwave_table[51] = 7'h3C;
        quarterwave_table[52] = 7'h3C;
        quarterwave_table[53] = 7'h3C;
        quarterwave_table[54] = 7'h3D;
        quarterwave_table[55] = 7'h3D;
        quarterwave_table[56] = 7'h3D;
        quarterwave_table[57] = 7'h3E;
        quarterwave_table[58] = 7'h3E;
        quarterwave_table[59] = 7'h3E;
        quarterwave_table[60] = 7'h3E;
        quarterwave_table[61] = 7'h3E;
        quarterwave_table[62] = 7'h3E;
        quarterwave_table[63] = 7'h3E;

    end

endmodule
