/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.13.0.56.2 */
/* Module Version: 4.9 */
/* /home/user/FPGA/tools/diamond/usr/local/diamond/3.13/ispfpga/bin/lin64/scuba -w -n Multiplier -lang verilog -synth lse -bus_exp 7 -bb -arch sa5p00 -type dspmult -simple_portname -widtha 12 -widthb 12 -widthp 24 -signed -PL_stages 1 -input_reg -output_reg -clk0 -ce0 -rst0 -fdc /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.fdc  */
/* Mon Aug 26 01:00:27 2024 */


`timescale 1 ns / 1 ps
module Multiplier (Clock, ClkEn, Aclr, DataA, DataB, Result)/* synthesis NGD_DRC_MASK=1 */;
    input wire Clock;
    input wire ClkEn;
    input wire Aclr;
    input wire [11:0] DataA;
    input wire [11:0] DataB;
    output wire [23:0] Result;

    wire Multiplier_mult_direct_out_1_35;
    wire Multiplier_mult_direct_out_1_34;
    wire Multiplier_mult_direct_out_1_33;
    wire Multiplier_mult_direct_out_1_32;
    wire Multiplier_mult_direct_out_1_31;
    wire Multiplier_mult_direct_out_1_30;
    wire Multiplier_mult_direct_out_1_29;
    wire Multiplier_mult_direct_out_1_28;
    wire Multiplier_mult_direct_out_1_27;
    wire Multiplier_mult_direct_out_1_26;
    wire Multiplier_mult_direct_out_1_25;
    wire Multiplier_mult_direct_out_1_24;
    wire Multiplier_mult_direct_out_1_23;
    wire Multiplier_mult_direct_out_1_22;
    wire Multiplier_mult_direct_out_1_21;
    wire Multiplier_mult_direct_out_1_20;
    wire Multiplier_mult_direct_out_1_19;
    wire Multiplier_mult_direct_out_1_18;
    wire Multiplier_mult_direct_out_1_17;
    wire Multiplier_mult_direct_out_1_16;
    wire Multiplier_mult_direct_out_1_15;
    wire Multiplier_mult_direct_out_1_14;
    wire Multiplier_mult_direct_out_1_13;
    wire Multiplier_mult_direct_out_1_12;
    wire Multiplier_mult_direct_out_1_11;
    wire Multiplier_mult_direct_out_1_10;
    wire Multiplier_mult_direct_out_1_9;
    wire Multiplier_mult_direct_out_1_8;
    wire Multiplier_mult_direct_out_1_7;
    wire Multiplier_mult_direct_out_1_6;
    wire Multiplier_mult_direct_out_1_5;
    wire Multiplier_mult_direct_out_1_4;
    wire Multiplier_mult_direct_out_1_3;
    wire Multiplier_mult_direct_out_1_2;
    wire Multiplier_mult_direct_out_1_1;
    wire Multiplier_mult_direct_out_1_0;
    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam dsp_mult_0.CLK3_DIV = "ENABLED" ;
    defparam dsp_mult_0.CLK2_DIV = "ENABLED" ;
    defparam dsp_mult_0.CLK1_DIV = "ENABLED" ;
    defparam dsp_mult_0.CLK0_DIV = "ENABLED" ;
    defparam dsp_mult_0.HIGHSPEED_CLK = "NONE" ;
    defparam dsp_mult_0.REG_INPUTC_RST = "RST0" ;
    defparam dsp_mult_0.REG_INPUTC_CE = "CE0" ;
    defparam dsp_mult_0.REG_INPUTC_CLK = "NONE" ;
    defparam dsp_mult_0.SOURCEB_MODE = "B_SHIFT" ;
    defparam dsp_mult_0.MULT_BYPASS = "DISABLED" ;
    defparam dsp_mult_0.CAS_MATCH_REG = "FALSE" ;
    defparam dsp_mult_0.RESETMODE = "ASYNC" ;
    defparam dsp_mult_0.GSR = "ENABLED" ;
    defparam dsp_mult_0.REG_OUTPUT_RST = "RST0" ;
    defparam dsp_mult_0.REG_OUTPUT_CE = "CE0" ;
    defparam dsp_mult_0.REG_OUTPUT_CLK = "CLK0" ;
    defparam dsp_mult_0.REG_PIPELINE_RST = "RST0" ;
    defparam dsp_mult_0.REG_PIPELINE_CE = "CE0" ;
    defparam dsp_mult_0.REG_PIPELINE_CLK = "CLK0" ;
    defparam dsp_mult_0.REG_INPUTB_RST = "RST0" ;
    defparam dsp_mult_0.REG_INPUTB_CE = "CE0" ;
    defparam dsp_mult_0.REG_INPUTB_CLK = "CLK0" ;
    defparam dsp_mult_0.REG_INPUTA_RST = "RST0" ;
    defparam dsp_mult_0.REG_INPUTA_CE = "CE0" ;
    defparam dsp_mult_0.REG_INPUTA_CLK = "CLK0" ;
    MULT18X18D dsp_mult_0 (.A17(DataA[11]), .A16(DataA[10]), .A15(DataA[9]), 
        .A14(DataA[8]), .A13(DataA[7]), .A12(DataA[6]), .A11(DataA[5]), 
        .A10(DataA[4]), .A9(DataA[3]), .A8(DataA[2]), .A7(DataA[1]), .A6(DataA[0]), 
        .A5(scuba_vlo), .A4(scuba_vlo), .A3(scuba_vlo), .A2(scuba_vlo), 
        .A1(scuba_vlo), .A0(scuba_vlo), .B17(DataB[11]), .B16(DataB[10]), 
        .B15(DataB[9]), .B14(DataB[8]), .B13(DataB[7]), .B12(DataB[6]), 
        .B11(DataB[5]), .B10(DataB[4]), .B9(DataB[3]), .B8(DataB[2]), .B7(DataB[1]), 
        .B6(DataB[0]), .B5(scuba_vlo), .B4(scuba_vlo), .B3(scuba_vlo), .B2(scuba_vlo), 
        .B1(scuba_vlo), .B0(scuba_vlo), .C17(scuba_vlo), .C16(scuba_vlo), 
        .C15(scuba_vlo), .C14(scuba_vlo), .C13(scuba_vlo), .C12(scuba_vlo), 
        .C11(scuba_vlo), .C10(scuba_vlo), .C9(scuba_vlo), .C8(scuba_vlo), 
        .C7(scuba_vlo), .C6(scuba_vlo), .C5(scuba_vlo), .C4(scuba_vlo), 
        .C3(scuba_vlo), .C2(scuba_vlo), .C1(scuba_vlo), .C0(scuba_vlo), 
        .SIGNEDA(scuba_vhi), .SIGNEDB(scuba_vhi), .SOURCEA(scuba_vlo), .SOURCEB(scuba_vlo), 
        .CE0(ClkEn), .CE1(scuba_vhi), .CE2(scuba_vhi), .CE3(scuba_vhi), 
        .CLK0(Clock), .CLK1(scuba_vlo), .CLK2(scuba_vlo), .CLK3(scuba_vlo), 
        .RST0(Aclr), .RST1(scuba_vlo), .RST2(scuba_vlo), .RST3(scuba_vlo), 
        .SRIA17(scuba_vlo), .SRIA16(scuba_vlo), .SRIA15(scuba_vlo), .SRIA14(scuba_vlo), 
        .SRIA13(scuba_vlo), .SRIA12(scuba_vlo), .SRIA11(scuba_vlo), .SRIA10(scuba_vlo), 
        .SRIA9(scuba_vlo), .SRIA8(scuba_vlo), .SRIA7(scuba_vlo), .SRIA6(scuba_vlo), 
        .SRIA5(scuba_vlo), .SRIA4(scuba_vlo), .SRIA3(scuba_vlo), .SRIA2(scuba_vlo), 
        .SRIA1(scuba_vlo), .SRIA0(scuba_vlo), .SRIB17(scuba_vlo), .SRIB16(scuba_vlo), 
        .SRIB15(scuba_vlo), .SRIB14(scuba_vlo), .SRIB13(scuba_vlo), .SRIB12(scuba_vlo), 
        .SRIB11(scuba_vlo), .SRIB10(scuba_vlo), .SRIB9(scuba_vlo), .SRIB8(scuba_vlo), 
        .SRIB7(scuba_vlo), .SRIB6(scuba_vlo), .SRIB5(scuba_vlo), .SRIB4(scuba_vlo), 
        .SRIB3(scuba_vlo), .SRIB2(scuba_vlo), .SRIB1(scuba_vlo), .SRIB0(scuba_vlo), 
        .SROA17(), .SROA16(), .SROA15(), .SROA14(), .SROA13(), .SROA12(), 
        .SROA11(), .SROA10(), .SROA9(), .SROA8(), .SROA7(), .SROA6(), .SROA5(), 
        .SROA4(), .SROA3(), .SROA2(), .SROA1(), .SROA0(), .SROB17(), .SROB16(), 
        .SROB15(), .SROB14(), .SROB13(), .SROB12(), .SROB11(), .SROB10(), 
        .SROB9(), .SROB8(), .SROB7(), .SROB6(), .SROB5(), .SROB4(), .SROB3(), 
        .SROB2(), .SROB1(), .SROB0(), .ROA17(), .ROA16(), .ROA15(), .ROA14(), 
        .ROA13(), .ROA12(), .ROA11(), .ROA10(), .ROA9(), .ROA8(), .ROA7(), 
        .ROA6(), .ROA5(), .ROA4(), .ROA3(), .ROA2(), .ROA1(), .ROA0(), .ROB17(), 
        .ROB16(), .ROB15(), .ROB14(), .ROB13(), .ROB12(), .ROB11(), .ROB10(), 
        .ROB9(), .ROB8(), .ROB7(), .ROB6(), .ROB5(), .ROB4(), .ROB3(), .ROB2(), 
        .ROB1(), .ROB0(), .ROC17(), .ROC16(), .ROC15(), .ROC14(), .ROC13(), 
        .ROC12(), .ROC11(), .ROC10(), .ROC9(), .ROC8(), .ROC7(), .ROC6(), 
        .ROC5(), .ROC4(), .ROC3(), .ROC2(), .ROC1(), .ROC0(), .P35(Multiplier_mult_direct_out_1_35), 
        .P34(Multiplier_mult_direct_out_1_34), .P33(Multiplier_mult_direct_out_1_33), 
        .P32(Multiplier_mult_direct_out_1_32), .P31(Multiplier_mult_direct_out_1_31), 
        .P30(Multiplier_mult_direct_out_1_30), .P29(Multiplier_mult_direct_out_1_29), 
        .P28(Multiplier_mult_direct_out_1_28), .P27(Multiplier_mult_direct_out_1_27), 
        .P26(Multiplier_mult_direct_out_1_26), .P25(Multiplier_mult_direct_out_1_25), 
        .P24(Multiplier_mult_direct_out_1_24), .P23(Multiplier_mult_direct_out_1_23), 
        .P22(Multiplier_mult_direct_out_1_22), .P21(Multiplier_mult_direct_out_1_21), 
        .P20(Multiplier_mult_direct_out_1_20), .P19(Multiplier_mult_direct_out_1_19), 
        .P18(Multiplier_mult_direct_out_1_18), .P17(Multiplier_mult_direct_out_1_17), 
        .P16(Multiplier_mult_direct_out_1_16), .P15(Multiplier_mult_direct_out_1_15), 
        .P14(Multiplier_mult_direct_out_1_14), .P13(Multiplier_mult_direct_out_1_13), 
        .P12(Multiplier_mult_direct_out_1_12), .P11(Multiplier_mult_direct_out_1_11), 
        .P10(Multiplier_mult_direct_out_1_10), .P9(Multiplier_mult_direct_out_1_9), 
        .P8(Multiplier_mult_direct_out_1_8), .P7(Multiplier_mult_direct_out_1_7), 
        .P6(Multiplier_mult_direct_out_1_6), .P5(Multiplier_mult_direct_out_1_5), 
        .P4(Multiplier_mult_direct_out_1_4), .P3(Multiplier_mult_direct_out_1_3), 
        .P2(Multiplier_mult_direct_out_1_2), .P1(Multiplier_mult_direct_out_1_1), 
        .P0(Multiplier_mult_direct_out_1_0), .SIGNEDP());

    assign Result[23] = Multiplier_mult_direct_out_1_35;
    assign Result[22] = Multiplier_mult_direct_out_1_34;
    assign Result[21] = Multiplier_mult_direct_out_1_33;
    assign Result[20] = Multiplier_mult_direct_out_1_32;
    assign Result[19] = Multiplier_mult_direct_out_1_31;
    assign Result[18] = Multiplier_mult_direct_out_1_30;
    assign Result[17] = Multiplier_mult_direct_out_1_29;
    assign Result[16] = Multiplier_mult_direct_out_1_28;
    assign Result[15] = Multiplier_mult_direct_out_1_27;
    assign Result[14] = Multiplier_mult_direct_out_1_26;
    assign Result[13] = Multiplier_mult_direct_out_1_25;
    assign Result[12] = Multiplier_mult_direct_out_1_24;
    assign Result[11] = Multiplier_mult_direct_out_1_23;
    assign Result[10] = Multiplier_mult_direct_out_1_22;
    assign Result[9] = Multiplier_mult_direct_out_1_21;
    assign Result[8] = Multiplier_mult_direct_out_1_20;
    assign Result[7] = Multiplier_mult_direct_out_1_19;
    assign Result[6] = Multiplier_mult_direct_out_1_18;
    assign Result[5] = Multiplier_mult_direct_out_1_17;
    assign Result[4] = Multiplier_mult_direct_out_1_16;
    assign Result[3] = Multiplier_mult_direct_out_1_15;
    assign Result[2] = Multiplier_mult_direct_out_1_14;
    assign Result[1] = Multiplier_mult_direct_out_1_13;
    assign Result[0] = Multiplier_mult_direct_out_1_12;


    // exemplar begin
    // exemplar end

endmodule
