module simpleSine(
    clk,
    rst,
    sample_clock_ce,
    phase_inc_carrGen,
    sinewave
);

parameter SB = 12, // SINE_BITS
          LB = 8, // LUT_BITS
          PB = 64; // PHASE_BITS
input clk;
input wire rst;
input wire sample_clock_ce;
input reg signed[PB-1:0] phase_inc_carrGen;
output reg signed[SB-1:0] sinewave;

reg [PB-1:0] phase = 0;

always @(posedge clk or posedge rst) begin
    if (rst)
        phase <= 0;
    else if (sample_clock_ce)
        phase <= phase + phase_inc_carrGen;
end

always @(posedge clk) begin
    if(sample_clock_ce) begin
        case(phase[(PB-1):(PB-LB)])
        8'h00: sinewave <= 12'h000;
        8'h01: sinewave <= 12'h032;
        8'h02: sinewave <= 12'h064;
        8'h03: sinewave <= 12'h096;
        8'h04: sinewave <= 12'h0C8;
        8'h05: sinewave <= 12'h0FA;
        8'h06: sinewave <= 12'h12C;
        8'h07: sinewave <= 12'h15D;
        8'h08: sinewave <= 12'h18F;
        8'h09: sinewave <= 12'h1C0;
        8'h0A: sinewave <= 12'h1F1;
        8'h0B: sinewave <= 12'h221;
        8'h0C: sinewave <= 12'h252;
        8'h0D: sinewave <= 12'h282;
        8'h0E: sinewave <= 12'h2B1;
        8'h0F: sinewave <= 12'h2E0;
        8'h10: sinewave <= 12'h30F;
        8'h11: sinewave <= 12'h33D;
        8'h12: sinewave <= 12'h36B;
        8'h13: sinewave <= 12'h398;
        8'h14: sinewave <= 12'h3C4;
        8'h15: sinewave <= 12'h3F0;
        8'h16: sinewave <= 12'h41C;
        8'h17: sinewave <= 12'h447;
        8'h18: sinewave <= 12'h471;
        8'h19: sinewave <= 12'h49A;
        8'h1A: sinewave <= 12'h4C3;
        8'h1B: sinewave <= 12'h4EB;
        8'h1C: sinewave <= 12'h512;
        8'h1D: sinewave <= 12'h539;
        8'h1E: sinewave <= 12'h55E;
        8'h1F: sinewave <= 12'h583;
        8'h20: sinewave <= 12'h5A7;
        8'h21: sinewave <= 12'h5CA;
        8'h22: sinewave <= 12'h5EC;
        8'h23: sinewave <= 12'h60E;
        8'h24: sinewave <= 12'h62E;
        8'h25: sinewave <= 12'h64D;
        8'h26: sinewave <= 12'h66C;
        8'h27: sinewave <= 12'h689;
        8'h28: sinewave <= 12'h6A6;
        8'h29: sinewave <= 12'h6C1;
        8'h2A: sinewave <= 12'h6DB;
        8'h2B: sinewave <= 12'h6F5;
        8'h2C: sinewave <= 12'h70D;
        8'h2D: sinewave <= 12'h724;
        8'h2E: sinewave <= 12'h73A;
        8'h2F: sinewave <= 12'h74F;
        8'h30: sinewave <= 12'h763;
        8'h31: sinewave <= 12'h775;
        8'h32: sinewave <= 12'h787;
        8'h33: sinewave <= 12'h797;
        8'h34: sinewave <= 12'h7A6;
        8'h35: sinewave <= 12'h7B4;
        8'h36: sinewave <= 12'h7C1;
        8'h37: sinewave <= 12'h7CD;
        8'h38: sinewave <= 12'h7D7;
        8'h39: sinewave <= 12'h7E0;
        8'h3A: sinewave <= 12'h7E8;
        8'h3B: sinewave <= 12'h7EF;
        8'h3C: sinewave <= 12'h7F5;
        8'h3D: sinewave <= 12'h7F9;
        8'h3E: sinewave <= 12'h7FC;
        8'h3F: sinewave <= 12'h7FE;
        8'h40: sinewave <= 12'h7FF;
        8'h41: sinewave <= 12'h7FE;
        8'h42: sinewave <= 12'h7FC;
        8'h43: sinewave <= 12'h7F9;
        8'h44: sinewave <= 12'h7F5;
        8'h45: sinewave <= 12'h7EF;
        8'h46: sinewave <= 12'h7E8;
        8'h47: sinewave <= 12'h7E0;
        8'h48: sinewave <= 12'h7D7;
        8'h49: sinewave <= 12'h7CD;
        8'h4A: sinewave <= 12'h7C1;
        8'h4B: sinewave <= 12'h7B4;
        8'h4C: sinewave <= 12'h7A6;
        8'h4D: sinewave <= 12'h797;
        8'h4E: sinewave <= 12'h787;
        8'h4F: sinewave <= 12'h775;
        8'h50: sinewave <= 12'h763;
        8'h51: sinewave <= 12'h74F;
        8'h52: sinewave <= 12'h73A;
        8'h53: sinewave <= 12'h724;
        8'h54: sinewave <= 12'h70D;
        8'h55: sinewave <= 12'h6F5;
        8'h56: sinewave <= 12'h6DB;
        8'h57: sinewave <= 12'h6C1;
        8'h58: sinewave <= 12'h6A6;
        8'h59: sinewave <= 12'h689;
        8'h5A: sinewave <= 12'h66C;
        8'h5B: sinewave <= 12'h64D;
        8'h5C: sinewave <= 12'h62E;
        8'h5D: sinewave <= 12'h60E;
        8'h5E: sinewave <= 12'h5EC;
        8'h5F: sinewave <= 12'h5CA;
        8'h60: sinewave <= 12'h5A7;
        8'h61: sinewave <= 12'h583;
        8'h62: sinewave <= 12'h55E;
        8'h63: sinewave <= 12'h539;
        8'h64: sinewave <= 12'h512;
        8'h65: sinewave <= 12'h4EB;
        8'h66: sinewave <= 12'h4C3;
        8'h67: sinewave <= 12'h49A;
        8'h68: sinewave <= 12'h471;
        8'h69: sinewave <= 12'h447;
        8'h6A: sinewave <= 12'h41C;
        8'h6B: sinewave <= 12'h3F0;
        8'h6C: sinewave <= 12'h3C4;
        8'h6D: sinewave <= 12'h398;
        8'h6E: sinewave <= 12'h36B;
        8'h6F: sinewave <= 12'h33D;
        8'h70: sinewave <= 12'h30F;
        8'h71: sinewave <= 12'h2E0;
        8'h72: sinewave <= 12'h2B1;
        8'h73: sinewave <= 12'h282;
        8'h74: sinewave <= 12'h252;
        8'h75: sinewave <= 12'h221;
        8'h76: sinewave <= 12'h1F1;
        8'h77: sinewave <= 12'h1C0;
        8'h78: sinewave <= 12'h18F;
        8'h79: sinewave <= 12'h15D;
        8'h7A: sinewave <= 12'h12C;
        8'h7B: sinewave <= 12'h0FA;
        8'h7C: sinewave <= 12'h0C8;
        8'h7D: sinewave <= 12'h096;
        8'h7E: sinewave <= 12'h064;
        8'h7F: sinewave <= 12'h032;
        8'h80: sinewave <= 12'h000;
        8'h81: sinewave <= 12'hFCE;
        8'h82: sinewave <= 12'hF9C;
        8'h83: sinewave <= 12'hF6A;
        8'h84: sinewave <= 12'hF38;
        8'h85: sinewave <= 12'hF06;
        8'h86: sinewave <= 12'hED4;
        8'h87: sinewave <= 12'hEA3;
        8'h88: sinewave <= 12'hE71;
        8'h89: sinewave <= 12'hE40;
        8'h8A: sinewave <= 12'hE0F;
        8'h8B: sinewave <= 12'hDDF;
        8'h8C: sinewave <= 12'hDAE;
        8'h8D: sinewave <= 12'hD7E;
        8'h8E: sinewave <= 12'hD4F;
        8'h8F: sinewave <= 12'hD20;
        8'h90: sinewave <= 12'hCF1;
        8'h91: sinewave <= 12'hCC3;
        8'h92: sinewave <= 12'hC95;
        8'h93: sinewave <= 12'hC68;
        8'h94: sinewave <= 12'hC3C;
        8'h95: sinewave <= 12'hC10;
        8'h96: sinewave <= 12'hBE4;
        8'h97: sinewave <= 12'hBB9;
        8'h98: sinewave <= 12'hB8F;
        8'h99: sinewave <= 12'hB66;
        8'h9A: sinewave <= 12'hB3D;
        8'h9B: sinewave <= 12'hB15;
        8'h9C: sinewave <= 12'hAEE;
        8'h9D: sinewave <= 12'hAC7;
        8'h9E: sinewave <= 12'hAA2;
        8'h9F: sinewave <= 12'hA7D;
        8'hA0: sinewave <= 12'hA59;
        8'hA1: sinewave <= 12'hA36;
        8'hA2: sinewave <= 12'hA14;
        8'hA3: sinewave <= 12'h9F2;
        8'hA4: sinewave <= 12'h9D2;
        8'hA5: sinewave <= 12'h9B3;
        8'hA6: sinewave <= 12'h994;
        8'hA7: sinewave <= 12'h977;
        8'hA8: sinewave <= 12'h95A;
        8'hA9: sinewave <= 12'h93F;
        8'hAA: sinewave <= 12'h925;
        8'hAB: sinewave <= 12'h90B;
        8'hAC: sinewave <= 12'h8F3;
        8'hAD: sinewave <= 12'h8DC;
        8'hAE: sinewave <= 12'h8C6;
        8'hAF: sinewave <= 12'h8B1;
        8'hB0: sinewave <= 12'h89D;
        8'hB1: sinewave <= 12'h88B;
        8'hB2: sinewave <= 12'h879;
        8'hB3: sinewave <= 12'h869;
        8'hB4: sinewave <= 12'h85A;
        8'hB5: sinewave <= 12'h84C;
        8'hB6: sinewave <= 12'h83F;
        8'hB7: sinewave <= 12'h833;
        8'hB8: sinewave <= 12'h829;
        8'hB9: sinewave <= 12'h820;
        8'hBA: sinewave <= 12'h818;
        8'hBB: sinewave <= 12'h811;
        8'hBC: sinewave <= 12'h80B;
        8'hBD: sinewave <= 12'h807;
        8'hBE: sinewave <= 12'h804;
        8'hBF: sinewave <= 12'h802;
        8'hC0: sinewave <= 12'h801;
        8'hC1: sinewave <= 12'h802;
        8'hC2: sinewave <= 12'h804;
        8'hC3: sinewave <= 12'h807;
        8'hC4: sinewave <= 12'h80B;
        8'hC5: sinewave <= 12'h811;
        8'hC6: sinewave <= 12'h818;
        8'hC7: sinewave <= 12'h820;
        8'hC8: sinewave <= 12'h829;
        8'hC9: sinewave <= 12'h833;
        8'hCA: sinewave <= 12'h83F;
        8'hCB: sinewave <= 12'h84C;
        8'hCC: sinewave <= 12'h85A;
        8'hCD: sinewave <= 12'h869;
        8'hCE: sinewave <= 12'h879;
        8'hCF: sinewave <= 12'h88B;
        8'hD0: sinewave <= 12'h89D;
        8'hD1: sinewave <= 12'h8B1;
        8'hD2: sinewave <= 12'h8C6;
        8'hD3: sinewave <= 12'h8DC;
        8'hD4: sinewave <= 12'h8F3;
        8'hD5: sinewave <= 12'h90B;
        8'hD6: sinewave <= 12'h925;
        8'hD7: sinewave <= 12'h93F;
        8'hD8: sinewave <= 12'h95A;
        8'hD9: sinewave <= 12'h977;
        8'hDA: sinewave <= 12'h994;
        8'hDB: sinewave <= 12'h9B3;
        8'hDC: sinewave <= 12'h9D2;
        8'hDD: sinewave <= 12'h9F2;
        8'hDE: sinewave <= 12'hA14;
        8'hDF: sinewave <= 12'hA36;
        8'hE0: sinewave <= 12'hA59;
        8'hE1: sinewave <= 12'hA7D;
        8'hE2: sinewave <= 12'hAA2;
        8'hE3: sinewave <= 12'hAC7;
        8'hE4: sinewave <= 12'hAEE;
        8'hE5: sinewave <= 12'hB15;
        8'hE6: sinewave <= 12'hB3D;
        8'hE7: sinewave <= 12'hB66;
        8'hE8: sinewave <= 12'hB8F;
        8'hE9: sinewave <= 12'hBB9;
        8'hEA: sinewave <= 12'hBE4;
        8'hEB: sinewave <= 12'hC10;
        8'hEC: sinewave <= 12'hC3C;
        8'hED: sinewave <= 12'hC68;
        8'hEE: sinewave <= 12'hC95;
        8'hEF: sinewave <= 12'hCC3;
        8'hF0: sinewave <= 12'hCF1;
        8'hF1: sinewave <= 12'hD20;
        8'hF2: sinewave <= 12'hD4F;
        8'hF3: sinewave <= 12'hD7E;
        8'hF4: sinewave <= 12'hDAE;
        8'hF5: sinewave <= 12'hDDF;
        8'hF6: sinewave <= 12'hE0F;
        8'hF7: sinewave <= 12'hE40;
        8'hF8: sinewave <= 12'hE71;
        8'hF9: sinewave <= 12'hEA3;
        8'hFA: sinewave <= 12'hED4;
        8'hFB: sinewave <= 12'hF06;
        8'hFC: sinewave <= 12'hF38;
        8'hFD: sinewave <= 12'hF6A;
        8'hFE: sinewave <= 12'hF9C;
        8'hFF: sinewave <= 12'hFCE;
        endcase
    end
end

initial begin
    $dumpfile("simpleSine_waves.vcd");
    $dumpvars;
end

endmodule