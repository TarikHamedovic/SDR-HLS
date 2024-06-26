/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.13.0.56.2 */
/* Module Version: 3.5 */
/* /home/user/FPGA/tools/diamond/usr/local/diamond/3.13/ispfpga/bin/lin64/scuba -w -n NCOAdder -lang verilog -synth lse -bus_exp 7 -bb -arch sa5p00 -type add -width 64 -unsigned -pipeline 1 -fdc /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.fdc  */
/* Wed Feb 28 16:18:37 2024 */


`timescale 1 ns / 1 ps
module NCOAdder (DataA, DataB, Clock, Reset, Result)/* synthesis NGD_DRC_MASK=1 */;
    input wire [63:0] DataA;
    input wire [63:0] DataB;
    input wire Clock;
    input wire Reset;
    output wire [63:0] Result;

    wire r0_sum63;
    wire r0_sum62;
    wire r0_sum61;
    wire r0_sum60;
    wire r0_sum59;
    wire r0_sum58;
    wire r0_sum57;
    wire r0_sum56;
    wire r0_sum55;
    wire r0_sum54;
    wire r0_sum53;
    wire r0_sum52;
    wire r0_sum51;
    wire r0_sum50;
    wire r0_sum49;
    wire r0_sum48;
    wire r0_sum47;
    wire r0_sum46;
    wire r0_sum45;
    wire r0_sum44;
    wire r0_sum43;
    wire r0_sum42;
    wire r0_sum41;
    wire r0_sum40;
    wire r0_sum39;
    wire r0_sum38;
    wire r0_sum37;
    wire r0_sum36;
    wire r0_sum35;
    wire r0_sum34;
    wire r0_sum33;
    wire r0_sum32;
    wire r0_sum31;
    wire r0_sum30;
    wire r0_sum29;
    wire r0_sum28;
    wire r0_sum27;
    wire r0_sum26;
    wire r0_sum25;
    wire r0_sum24;
    wire r0_sum23;
    wire r0_sum22;
    wire r0_sum21;
    wire r0_sum20;
    wire r0_sum19;
    wire r0_sum18;
    wire r0_sum17;
    wire r0_sum16;
    wire r0_sum15;
    wire r0_sum14;
    wire r0_sum13;
    wire r0_sum12;
    wire r0_sum11;
    wire r0_sum10;
    wire r0_sum9;
    wire r0_sum8;
    wire r0_sum7;
    wire r0_sum6;
    wire r0_sum5;
    wire r0_sum4;
    wire r0_sum3;
    wire r0_sum2;
    wire r0_sum1;
    wire r0_sum0;
    wire tsum0;
    wire tsum1;
    wire tsum2;
    wire co0;
    wire tsum3;
    wire tsum4;
    wire co1;
    wire tsum5;
    wire tsum6;
    wire co2;
    wire tsum7;
    wire tsum8;
    wire co3;
    wire tsum9;
    wire tsum10;
    wire co4;
    wire tsum11;
    wire tsum12;
    wire co5;
    wire tsum13;
    wire tsum14;
    wire co6;
    wire tsum15;
    wire tsum16;
    wire co7;
    wire tsum17;
    wire tsum18;
    wire co8;
    wire tsum19;
    wire tsum20;
    wire co9;
    wire tsum21;
    wire tsum22;
    wire co10;
    wire tsum23;
    wire tsum24;
    wire co11;
    wire tsum25;
    wire tsum26;
    wire co12;
    wire tsum27;
    wire tsum28;
    wire co13;
    wire tsum29;
    wire tsum30;
    wire co14;
    wire tsum31;
    wire tsum32;
    wire co15;
    wire tsum33;
    wire tsum34;
    wire co16;
    wire tsum35;
    wire tsum36;
    wire co17;
    wire tsum37;
    wire tsum38;
    wire co18;
    wire tsum39;
    wire tsum40;
    wire co19;
    wire tsum41;
    wire tsum42;
    wire co20;
    wire tsum43;
    wire tsum44;
    wire co21;
    wire tsum45;
    wire tsum46;
    wire co22;
    wire tsum47;
    wire tsum48;
    wire co23;
    wire tsum49;
    wire tsum50;
    wire co24;
    wire tsum51;
    wire tsum52;
    wire co25;
    wire tsum53;
    wire tsum54;
    wire co26;
    wire tsum55;
    wire tsum56;
    wire co27;
    wire tsum57;
    wire tsum58;
    wire co28;
    wire tsum59;
    wire tsum60;
    wire co29;
    wire tsum61;
    wire tsum62;
    wire co30;
    wire tsum63;
    wire scuba_vhi;
    wire scuba_vlo;
    wire co31;

    FD1P3DX FF_63 (.D(tsum63), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum63))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_62 (.D(tsum62), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum62))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_61 (.D(tsum61), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum61))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_60 (.D(tsum60), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum60))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_59 (.D(tsum59), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum59))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_58 (.D(tsum58), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum58))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_57 (.D(tsum57), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum57))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_56 (.D(tsum56), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum56))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_55 (.D(tsum55), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum55))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_54 (.D(tsum54), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum54))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_53 (.D(tsum53), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum53))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_52 (.D(tsum52), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum52))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_51 (.D(tsum51), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum51))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_50 (.D(tsum50), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum50))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_49 (.D(tsum49), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum49))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_48 (.D(tsum48), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum48))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_47 (.D(tsum47), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum47))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_46 (.D(tsum46), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum46))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_45 (.D(tsum45), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum45))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_44 (.D(tsum44), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum44))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_43 (.D(tsum43), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum43))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_42 (.D(tsum42), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum42))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_41 (.D(tsum41), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum41))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_40 (.D(tsum40), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum40))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_39 (.D(tsum39), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum39))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_38 (.D(tsum38), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum38))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_37 (.D(tsum37), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum37))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_36 (.D(tsum36), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum36))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_35 (.D(tsum35), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum35))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_34 (.D(tsum34), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum34))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_33 (.D(tsum33), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum33))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_32 (.D(tsum32), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum32))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_31 (.D(tsum31), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum31))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_30 (.D(tsum30), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum30))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_29 (.D(tsum29), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum29))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_28 (.D(tsum28), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum28))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_27 (.D(tsum27), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum27))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_26 (.D(tsum26), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum26))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_25 (.D(tsum25), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum25))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_24 (.D(tsum24), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum24))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_23 (.D(tsum23), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum23))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_22 (.D(tsum22), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum22))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_21 (.D(tsum21), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum21))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_20 (.D(tsum20), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum20))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_19 (.D(tsum19), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum19))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_18 (.D(tsum18), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum18))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_17 (.D(tsum17), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum17))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_16 (.D(tsum16), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum16))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_15 (.D(tsum15), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum15))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_14 (.D(tsum14), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum14))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_13 (.D(tsum13), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum13))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_12 (.D(tsum12), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum12))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_11 (.D(tsum11), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum11))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_10 (.D(tsum10), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum10))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_9 (.D(tsum9), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum9))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_8 (.D(tsum8), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum8))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_7 (.D(tsum7), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum7))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_6 (.D(tsum6), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum6))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_5 (.D(tsum5), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum5))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_4 (.D(tsum4), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum4))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_3 (.D(tsum3), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum3))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(tsum2), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(tsum1), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_0 (.D(tsum0), .SP(scuba_vhi), .CK(Clock), .CD(Reset), .Q(r0_sum0))
             /* synthesis GSR="ENABLED" */;

    defparam addsub_0.INJECT1_1 = "NO" ;
    defparam addsub_0.INJECT1_0 = "NO" ;
    defparam addsub_0.INIT1 =  16'h66AA ;
    defparam addsub_0.INIT0 =  16'h66AA ;
    CCU2C addsub_0 (.A0(scuba_vlo), .A1(DataA[0]), .B0(scuba_vlo), .B1(DataB[0]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(tsum0), .COUT(co0));

    defparam addsub_1.INJECT1_1 = "NO" ;
    defparam addsub_1.INJECT1_0 = "NO" ;
    defparam addsub_1.INIT1 =  16'h66AA ;
    defparam addsub_1.INIT0 =  16'h66AA ;
    CCU2C addsub_1 (.A0(DataA[1]), .A1(DataA[2]), .B0(DataB[1]), .B1(DataB[2]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0), .S0(tsum1), .S1(tsum2), .COUT(co1));

    defparam addsub_2.INJECT1_1 = "NO" ;
    defparam addsub_2.INJECT1_0 = "NO" ;
    defparam addsub_2.INIT1 =  16'h66AA ;
    defparam addsub_2.INIT0 =  16'h66AA ;
    CCU2C addsub_2 (.A0(DataA[3]), .A1(DataA[4]), .B0(DataB[3]), .B1(DataB[4]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1), .S0(tsum3), .S1(tsum4), .COUT(co2));

    defparam addsub_3.INJECT1_1 = "NO" ;
    defparam addsub_3.INJECT1_0 = "NO" ;
    defparam addsub_3.INIT1 =  16'h66AA ;
    defparam addsub_3.INIT0 =  16'h66AA ;
    CCU2C addsub_3 (.A0(DataA[5]), .A1(DataA[6]), .B0(DataB[5]), .B1(DataB[6]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2), .S0(tsum5), .S1(tsum6), .COUT(co3));

    defparam addsub_4.INJECT1_1 = "NO" ;
    defparam addsub_4.INJECT1_0 = "NO" ;
    defparam addsub_4.INIT1 =  16'h66AA ;
    defparam addsub_4.INIT0 =  16'h66AA ;
    CCU2C addsub_4 (.A0(DataA[7]), .A1(DataA[8]), .B0(DataB[7]), .B1(DataB[8]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co3), .S0(tsum7), .S1(tsum8), .COUT(co4));

    defparam addsub_5.INJECT1_1 = "NO" ;
    defparam addsub_5.INJECT1_0 = "NO" ;
    defparam addsub_5.INIT1 =  16'h66AA ;
    defparam addsub_5.INIT0 =  16'h66AA ;
    CCU2C addsub_5 (.A0(DataA[9]), .A1(DataA[10]), .B0(DataB[9]), .B1(DataB[10]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co4), .S0(tsum9), .S1(tsum10), .COUT(co5));

    defparam addsub_6.INJECT1_1 = "NO" ;
    defparam addsub_6.INJECT1_0 = "NO" ;
    defparam addsub_6.INIT1 =  16'h66AA ;
    defparam addsub_6.INIT0 =  16'h66AA ;
    CCU2C addsub_6 (.A0(DataA[11]), .A1(DataA[12]), .B0(DataB[11]), .B1(DataB[12]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co5), .S0(tsum11), .S1(tsum12), .COUT(co6));

    defparam addsub_7.INJECT1_1 = "NO" ;
    defparam addsub_7.INJECT1_0 = "NO" ;
    defparam addsub_7.INIT1 =  16'h66AA ;
    defparam addsub_7.INIT0 =  16'h66AA ;
    CCU2C addsub_7 (.A0(DataA[13]), .A1(DataA[14]), .B0(DataB[13]), .B1(DataB[14]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co6), .S0(tsum13), .S1(tsum14), .COUT(co7));

    defparam addsub_8.INJECT1_1 = "NO" ;
    defparam addsub_8.INJECT1_0 = "NO" ;
    defparam addsub_8.INIT1 =  16'h66AA ;
    defparam addsub_8.INIT0 =  16'h66AA ;
    CCU2C addsub_8 (.A0(DataA[15]), .A1(DataA[16]), .B0(DataB[15]), .B1(DataB[16]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co7), .S0(tsum15), .S1(tsum16), .COUT(co8));

    defparam addsub_9.INJECT1_1 = "NO" ;
    defparam addsub_9.INJECT1_0 = "NO" ;
    defparam addsub_9.INIT1 =  16'h66AA ;
    defparam addsub_9.INIT0 =  16'h66AA ;
    CCU2C addsub_9 (.A0(DataA[17]), .A1(DataA[18]), .B0(DataB[17]), .B1(DataB[18]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co8), .S0(tsum17), .S1(tsum18), .COUT(co9));

    defparam addsub_10.INJECT1_1 = "NO" ;
    defparam addsub_10.INJECT1_0 = "NO" ;
    defparam addsub_10.INIT1 =  16'h66AA ;
    defparam addsub_10.INIT0 =  16'h66AA ;
    CCU2C addsub_10 (.A0(DataA[19]), .A1(DataA[20]), .B0(DataB[19]), .B1(DataB[20]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co9), .S0(tsum19), .S1(tsum20), .COUT(co10));

    defparam addsub_11.INJECT1_1 = "NO" ;
    defparam addsub_11.INJECT1_0 = "NO" ;
    defparam addsub_11.INIT1 =  16'h66AA ;
    defparam addsub_11.INIT0 =  16'h66AA ;
    CCU2C addsub_11 (.A0(DataA[21]), .A1(DataA[22]), .B0(DataB[21]), .B1(DataB[22]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co10), .S0(tsum21), .S1(tsum22), .COUT(co11));

    defparam addsub_12.INJECT1_1 = "NO" ;
    defparam addsub_12.INJECT1_0 = "NO" ;
    defparam addsub_12.INIT1 =  16'h66AA ;
    defparam addsub_12.INIT0 =  16'h66AA ;
    CCU2C addsub_12 (.A0(DataA[23]), .A1(DataA[24]), .B0(DataB[23]), .B1(DataB[24]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co11), .S0(tsum23), .S1(tsum24), .COUT(co12));

    defparam addsub_13.INJECT1_1 = "NO" ;
    defparam addsub_13.INJECT1_0 = "NO" ;
    defparam addsub_13.INIT1 =  16'h66AA ;
    defparam addsub_13.INIT0 =  16'h66AA ;
    CCU2C addsub_13 (.A0(DataA[25]), .A1(DataA[26]), .B0(DataB[25]), .B1(DataB[26]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co12), .S0(tsum25), .S1(tsum26), .COUT(co13));

    defparam addsub_14.INJECT1_1 = "NO" ;
    defparam addsub_14.INJECT1_0 = "NO" ;
    defparam addsub_14.INIT1 =  16'h66AA ;
    defparam addsub_14.INIT0 =  16'h66AA ;
    CCU2C addsub_14 (.A0(DataA[27]), .A1(DataA[28]), .B0(DataB[27]), .B1(DataB[28]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co13), .S0(tsum27), .S1(tsum28), .COUT(co14));

    defparam addsub_15.INJECT1_1 = "NO" ;
    defparam addsub_15.INJECT1_0 = "NO" ;
    defparam addsub_15.INIT1 =  16'h66AA ;
    defparam addsub_15.INIT0 =  16'h66AA ;
    CCU2C addsub_15 (.A0(DataA[29]), .A1(DataA[30]), .B0(DataB[29]), .B1(DataB[30]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co14), .S0(tsum29), .S1(tsum30), .COUT(co15));

    defparam addsub_16.INJECT1_1 = "NO" ;
    defparam addsub_16.INJECT1_0 = "NO" ;
    defparam addsub_16.INIT1 =  16'h66AA ;
    defparam addsub_16.INIT0 =  16'h66AA ;
    CCU2C addsub_16 (.A0(DataA[31]), .A1(DataA[32]), .B0(DataB[31]), .B1(DataB[32]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co15), .S0(tsum31), .S1(tsum32), .COUT(co16));

    defparam addsub_17.INJECT1_1 = "NO" ;
    defparam addsub_17.INJECT1_0 = "NO" ;
    defparam addsub_17.INIT1 =  16'h66AA ;
    defparam addsub_17.INIT0 =  16'h66AA ;
    CCU2C addsub_17 (.A0(DataA[33]), .A1(DataA[34]), .B0(DataB[33]), .B1(DataB[34]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co16), .S0(tsum33), .S1(tsum34), .COUT(co17));

    defparam addsub_18.INJECT1_1 = "NO" ;
    defparam addsub_18.INJECT1_0 = "NO" ;
    defparam addsub_18.INIT1 =  16'h66AA ;
    defparam addsub_18.INIT0 =  16'h66AA ;
    CCU2C addsub_18 (.A0(DataA[35]), .A1(DataA[36]), .B0(DataB[35]), .B1(DataB[36]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co17), .S0(tsum35), .S1(tsum36), .COUT(co18));

    defparam addsub_19.INJECT1_1 = "NO" ;
    defparam addsub_19.INJECT1_0 = "NO" ;
    defparam addsub_19.INIT1 =  16'h66AA ;
    defparam addsub_19.INIT0 =  16'h66AA ;
    CCU2C addsub_19 (.A0(DataA[37]), .A1(DataA[38]), .B0(DataB[37]), .B1(DataB[38]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co18), .S0(tsum37), .S1(tsum38), .COUT(co19));

    defparam addsub_20.INJECT1_1 = "NO" ;
    defparam addsub_20.INJECT1_0 = "NO" ;
    defparam addsub_20.INIT1 =  16'h66AA ;
    defparam addsub_20.INIT0 =  16'h66AA ;
    CCU2C addsub_20 (.A0(DataA[39]), .A1(DataA[40]), .B0(DataB[39]), .B1(DataB[40]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co19), .S0(tsum39), .S1(tsum40), .COUT(co20));

    defparam addsub_21.INJECT1_1 = "NO" ;
    defparam addsub_21.INJECT1_0 = "NO" ;
    defparam addsub_21.INIT1 =  16'h66AA ;
    defparam addsub_21.INIT0 =  16'h66AA ;
    CCU2C addsub_21 (.A0(DataA[41]), .A1(DataA[42]), .B0(DataB[41]), .B1(DataB[42]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co20), .S0(tsum41), .S1(tsum42), .COUT(co21));

    defparam addsub_22.INJECT1_1 = "NO" ;
    defparam addsub_22.INJECT1_0 = "NO" ;
    defparam addsub_22.INIT1 =  16'h66AA ;
    defparam addsub_22.INIT0 =  16'h66AA ;
    CCU2C addsub_22 (.A0(DataA[43]), .A1(DataA[44]), .B0(DataB[43]), .B1(DataB[44]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co21), .S0(tsum43), .S1(tsum44), .COUT(co22));

    defparam addsub_23.INJECT1_1 = "NO" ;
    defparam addsub_23.INJECT1_0 = "NO" ;
    defparam addsub_23.INIT1 =  16'h66AA ;
    defparam addsub_23.INIT0 =  16'h66AA ;
    CCU2C addsub_23 (.A0(DataA[45]), .A1(DataA[46]), .B0(DataB[45]), .B1(DataB[46]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co22), .S0(tsum45), .S1(tsum46), .COUT(co23));

    defparam addsub_24.INJECT1_1 = "NO" ;
    defparam addsub_24.INJECT1_0 = "NO" ;
    defparam addsub_24.INIT1 =  16'h66AA ;
    defparam addsub_24.INIT0 =  16'h66AA ;
    CCU2C addsub_24 (.A0(DataA[47]), .A1(DataA[48]), .B0(DataB[47]), .B1(DataB[48]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co23), .S0(tsum47), .S1(tsum48), .COUT(co24));

    defparam addsub_25.INJECT1_1 = "NO" ;
    defparam addsub_25.INJECT1_0 = "NO" ;
    defparam addsub_25.INIT1 =  16'h66AA ;
    defparam addsub_25.INIT0 =  16'h66AA ;
    CCU2C addsub_25 (.A0(DataA[49]), .A1(DataA[50]), .B0(DataB[49]), .B1(DataB[50]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co24), .S0(tsum49), .S1(tsum50), .COUT(co25));

    defparam addsub_26.INJECT1_1 = "NO" ;
    defparam addsub_26.INJECT1_0 = "NO" ;
    defparam addsub_26.INIT1 =  16'h66AA ;
    defparam addsub_26.INIT0 =  16'h66AA ;
    CCU2C addsub_26 (.A0(DataA[51]), .A1(DataA[52]), .B0(DataB[51]), .B1(DataB[52]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co25), .S0(tsum51), .S1(tsum52), .COUT(co26));

    defparam addsub_27.INJECT1_1 = "NO" ;
    defparam addsub_27.INJECT1_0 = "NO" ;
    defparam addsub_27.INIT1 =  16'h66AA ;
    defparam addsub_27.INIT0 =  16'h66AA ;
    CCU2C addsub_27 (.A0(DataA[53]), .A1(DataA[54]), .B0(DataB[53]), .B1(DataB[54]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co26), .S0(tsum53), .S1(tsum54), .COUT(co27));

    defparam addsub_28.INJECT1_1 = "NO" ;
    defparam addsub_28.INJECT1_0 = "NO" ;
    defparam addsub_28.INIT1 =  16'h66AA ;
    defparam addsub_28.INIT0 =  16'h66AA ;
    CCU2C addsub_28 (.A0(DataA[55]), .A1(DataA[56]), .B0(DataB[55]), .B1(DataB[56]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co27), .S0(tsum55), .S1(tsum56), .COUT(co28));

    defparam addsub_29.INJECT1_1 = "NO" ;
    defparam addsub_29.INJECT1_0 = "NO" ;
    defparam addsub_29.INIT1 =  16'h66AA ;
    defparam addsub_29.INIT0 =  16'h66AA ;
    CCU2C addsub_29 (.A0(DataA[57]), .A1(DataA[58]), .B0(DataB[57]), .B1(DataB[58]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co28), .S0(tsum57), .S1(tsum58), .COUT(co29));

    defparam addsub_30.INJECT1_1 = "NO" ;
    defparam addsub_30.INJECT1_0 = "NO" ;
    defparam addsub_30.INIT1 =  16'h66AA ;
    defparam addsub_30.INIT0 =  16'h66AA ;
    CCU2C addsub_30 (.A0(DataA[59]), .A1(DataA[60]), .B0(DataB[59]), .B1(DataB[60]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co29), .S0(tsum59), .S1(tsum60), .COUT(co30));

    defparam addsub_31.INJECT1_1 = "NO" ;
    defparam addsub_31.INJECT1_0 = "NO" ;
    defparam addsub_31.INIT1 =  16'h66AA ;
    defparam addsub_31.INIT0 =  16'h66AA ;
    CCU2C addsub_31 (.A0(DataA[61]), .A1(DataA[62]), .B0(DataB[61]), .B1(DataB[62]), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co30), .S0(tsum61), .S1(tsum62), .COUT(co31));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam addsub_32.INJECT1_1 = "NO" ;
    defparam addsub_32.INJECT1_0 = "NO" ;
    defparam addsub_32.INIT1 =  16'h66AA ;
    defparam addsub_32.INIT0 =  16'h66AA ;
    CCU2C addsub_32 (.A0(DataA[63]), .A1(scuba_vlo), .B0(DataB[63]), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co31), .S0(tsum63), .S1(), .COUT());

    assign Result[63] = r0_sum63;
    assign Result[62] = r0_sum62;
    assign Result[61] = r0_sum61;
    assign Result[60] = r0_sum60;
    assign Result[59] = r0_sum59;
    assign Result[58] = r0_sum58;
    assign Result[57] = r0_sum57;
    assign Result[56] = r0_sum56;
    assign Result[55] = r0_sum55;
    assign Result[54] = r0_sum54;
    assign Result[53] = r0_sum53;
    assign Result[52] = r0_sum52;
    assign Result[51] = r0_sum51;
    assign Result[50] = r0_sum50;
    assign Result[49] = r0_sum49;
    assign Result[48] = r0_sum48;
    assign Result[47] = r0_sum47;
    assign Result[46] = r0_sum46;
    assign Result[45] = r0_sum45;
    assign Result[44] = r0_sum44;
    assign Result[43] = r0_sum43;
    assign Result[42] = r0_sum42;
    assign Result[41] = r0_sum41;
    assign Result[40] = r0_sum40;
    assign Result[39] = r0_sum39;
    assign Result[38] = r0_sum38;
    assign Result[37] = r0_sum37;
    assign Result[36] = r0_sum36;
    assign Result[35] = r0_sum35;
    assign Result[34] = r0_sum34;
    assign Result[33] = r0_sum33;
    assign Result[32] = r0_sum32;
    assign Result[31] = r0_sum31;
    assign Result[30] = r0_sum30;
    assign Result[29] = r0_sum29;
    assign Result[28] = r0_sum28;
    assign Result[27] = r0_sum27;
    assign Result[26] = r0_sum26;
    assign Result[25] = r0_sum25;
    assign Result[24] = r0_sum24;
    assign Result[23] = r0_sum23;
    assign Result[22] = r0_sum22;
    assign Result[21] = r0_sum21;
    assign Result[20] = r0_sum20;
    assign Result[19] = r0_sum19;
    assign Result[18] = r0_sum18;
    assign Result[17] = r0_sum17;
    assign Result[16] = r0_sum16;
    assign Result[15] = r0_sum15;
    assign Result[14] = r0_sum14;
    assign Result[13] = r0_sum13;
    assign Result[12] = r0_sum12;
    assign Result[11] = r0_sum11;
    assign Result[10] = r0_sum10;
    assign Result[9] = r0_sum9;
    assign Result[8] = r0_sum8;
    assign Result[7] = r0_sum7;
    assign Result[6] = r0_sum6;
    assign Result[5] = r0_sum5;
    assign Result[4] = r0_sum4;
    assign Result[3] = r0_sum3;
    assign Result[2] = r0_sum2;
    assign Result[1] = r0_sum1;
    assign Result[0] = r0_sum0;


    // exemplar begin
    // exemplar attribute FF_63 GSR ENABLED
    // exemplar attribute FF_62 GSR ENABLED
    // exemplar attribute FF_61 GSR ENABLED
    // exemplar attribute FF_60 GSR ENABLED
    // exemplar attribute FF_59 GSR ENABLED
    // exemplar attribute FF_58 GSR ENABLED
    // exemplar attribute FF_57 GSR ENABLED
    // exemplar attribute FF_56 GSR ENABLED
    // exemplar attribute FF_55 GSR ENABLED
    // exemplar attribute FF_54 GSR ENABLED
    // exemplar attribute FF_53 GSR ENABLED
    // exemplar attribute FF_52 GSR ENABLED
    // exemplar attribute FF_51 GSR ENABLED
    // exemplar attribute FF_50 GSR ENABLED
    // exemplar attribute FF_49 GSR ENABLED
    // exemplar attribute FF_48 GSR ENABLED
    // exemplar attribute FF_47 GSR ENABLED
    // exemplar attribute FF_46 GSR ENABLED
    // exemplar attribute FF_45 GSR ENABLED
    // exemplar attribute FF_44 GSR ENABLED
    // exemplar attribute FF_43 GSR ENABLED
    // exemplar attribute FF_42 GSR ENABLED
    // exemplar attribute FF_41 GSR ENABLED
    // exemplar attribute FF_40 GSR ENABLED
    // exemplar attribute FF_39 GSR ENABLED
    // exemplar attribute FF_38 GSR ENABLED
    // exemplar attribute FF_37 GSR ENABLED
    // exemplar attribute FF_36 GSR ENABLED
    // exemplar attribute FF_35 GSR ENABLED
    // exemplar attribute FF_34 GSR ENABLED
    // exemplar attribute FF_33 GSR ENABLED
    // exemplar attribute FF_32 GSR ENABLED
    // exemplar attribute FF_31 GSR ENABLED
    // exemplar attribute FF_30 GSR ENABLED
    // exemplar attribute FF_29 GSR ENABLED
    // exemplar attribute FF_28 GSR ENABLED
    // exemplar attribute FF_27 GSR ENABLED
    // exemplar attribute FF_26 GSR ENABLED
    // exemplar attribute FF_25 GSR ENABLED
    // exemplar attribute FF_24 GSR ENABLED
    // exemplar attribute FF_23 GSR ENABLED
    // exemplar attribute FF_22 GSR ENABLED
    // exemplar attribute FF_21 GSR ENABLED
    // exemplar attribute FF_20 GSR ENABLED
    // exemplar attribute FF_19 GSR ENABLED
    // exemplar attribute FF_18 GSR ENABLED
    // exemplar attribute FF_17 GSR ENABLED
    // exemplar attribute FF_16 GSR ENABLED
    // exemplar attribute FF_15 GSR ENABLED
    // exemplar attribute FF_14 GSR ENABLED
    // exemplar attribute FF_13 GSR ENABLED
    // exemplar attribute FF_12 GSR ENABLED
    // exemplar attribute FF_11 GSR ENABLED
    // exemplar attribute FF_10 GSR ENABLED
    // exemplar attribute FF_9 GSR ENABLED
    // exemplar attribute FF_8 GSR ENABLED
    // exemplar attribute FF_7 GSR ENABLED
    // exemplar attribute FF_6 GSR ENABLED
    // exemplar attribute FF_5 GSR ENABLED
    // exemplar attribute FF_4 GSR ENABLED
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
