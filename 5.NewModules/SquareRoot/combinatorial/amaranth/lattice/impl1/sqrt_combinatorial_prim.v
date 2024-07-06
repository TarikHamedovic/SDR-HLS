// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Jul  6 03:45:26 2024
//
// Verilog Description of module sqrt_combinatorial
//

module sqrt_combinatorial (num, result) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(1[8:26])
    input [31:0]num;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    output [15:0]result;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    
    
    wire GND_net, VCC_net, num_c_31, num_c_30, num_c_29, num_c_28, 
        num_c_27, num_c_26, num_c_25, num_c_24, num_c_23, num_c_22, 
        num_c_21, num_c_20, num_c_19, num_c_18, num_c_17, num_c_16, 
        num_c_15, num_c_14, num_c_13, num_c_12, num_c_11, num_c_10, 
        num_c_9, num_c_8, num_c_7, num_c_6, num_c_5, num_c_4, num_c_3, 
        num_c_2, num_c_1, num_c_0, result_c_15, result_c_14, result_c_13, 
        result_c_12, result_c_11, result_c_10, result_c_9, result_c_8, 
        result_c_7, result_c_6, result_c_5, result_c_4, result_c_3, 
        result_c_2, result_c_1;
    wire [16:0]\left[15] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[14] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[13] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[12] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[11] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[10] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[9] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[8] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[7] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[6] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\left[5] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    
    wire n1319;
    wire [16:0]\left[1] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(11[15:19])
    wire [16:0]\right[15] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[14] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[13] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[12] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[11] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[10] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[9] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[8] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[7] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[6] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\right[5] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(12[15:20])
    wire [16:0]\r[16] ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(13[15:16])
    
    wire n1276, n1274, n1273, n1272, n1271, n1101, n1087;
    wire [16:0]right_2__1__N_4;
    
    wire n1058, n1057, n1056, n1055;
    wire [16:0]right_2__1__N_3;
    
    wire n1275, n1054, n1052, n1051, n1050, n1049;
    wire [16:0]right_3__1__N_8;
    
    wire n1048, n1047, n1046;
    wire [16:0]right_3__1__N_7;
    
    wire n1100;
    wire [16:0]right_4__1__N_12;
    wire [16:0]right_4__1__N_11;
    
    wire n1099;
    wire [16:0]right_5__1__N_16;
    wire [16:0]right_5__1__N_15;
    
    wire n1098;
    wire [16:0]right_6__1__N_20;
    wire [16:0]right_6__1__N_19;
    wire [16:0]right_7__1__N_24;
    wire [16:0]right_7__1__N_23;
    
    wire n1096;
    wire [16:0]right_8__1__N_28;
    wire [16:0]right_8__1__N_27;
    
    wire n1095;
    wire [16:0]right_9__1__N_32;
    wire [16:0]right_9__1__N_31;
    
    wire n1094;
    wire [16:0]right_10__1__N_36;
    wire [16:0]right_10__1__N_35;
    
    wire n1093;
    wire [16:0]right_11__1__N_40;
    wire [16:0]right_11__1__N_39;
    
    wire n1092;
    wire [16:0]right_12__1__N_44;
    wire [16:0]right_12__1__N_43;
    
    wire n1091;
    wire [16:0]right_13__1__N_48;
    wire [16:0]right_13__1__N_47;
    
    wire n1090;
    wire [16:0]right_14__1__N_52;
    wire [16:0]right_14__1__N_51;
    
    wire n1089;
    wire [16:0]right_15__1__N_56;
    wire [16:0]right_15__1__N_55;
    wire [16:0]r_16__16__N_60;
    wire [16:0]r_16__16__N_59;
    
    wire n1243, n1070, n1270, n1268, n1267, n1266, n1265, n1264, 
        n1263, n1262, n1261, n1259, n1258, n1257, n1282, n1279, 
        n1280, n1284, n1281, n1283, n1277, n1244, n1245, n1246, 
        n1247, n1248, n1249, n1250, n1252, n1253, n1254, n1255, 
        n1256, n1069, n1229, n1230, n1231, n1232, n1234, n1235, 
        n1236, n1237, n1238, n1239, n1240, n1241, n1068, n1215, 
        n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, 
        n1225, n1226, n1227, n1228, n1067, n1201, n1202, n1203, 
        n1204, n1205, n1206, n1208, n1209, n1210, n1211, n1212, 
        n1213, n1214, n1066, n1187, n1188, n1190, n1191, n1192, 
        n1193, n1194, n1195, n1196, n1197, n1199, n1200, n1172, 
        n1177, n1178, n1179, n1181, n1182, n1183, n1184, n1185, 
        n1186, n1158, n1159, n1160, n1161, n1162, n1163, n1165, 
        n1166, n1167, n1168, n1169, n1170, n1171, n1144, n1145, 
        n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, 
        n1156, n1157, n1061, n1290, n1130, n1131, n1132, n1133, 
        n1134, n1135, n1136, n1138, n1139, n1140, n1141, n1142, 
        n1143, n1060, n1116, n1117, n1118, n1120, n1121, n1122, 
        n1123, n1124, n1125, n1126, n1127, n1129, n1059, n6, 
        n1102, n1103, n1104, n1106, n1107, n1108, n1109, n1110, 
        n1111, n1112, n1113, n1115, n1074, n1075, n1076, n1077, 
        n1078, n1079, n1081, n1082, n1083, n1084, n1085, n1086, 
        n1287, n1288, n1289, n1291, n1285, n1286, n968, n1292, 
        n1045;
    
    VHI i2 (.Z(VCC_net));
    IB num_pad_9 (.I(num[9]), .O(num_c_9));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_10 (.I(num[10]), .O(num_c_10));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_11 (.I(num[11]), .O(num_c_11));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_12 (.I(num[12]), .O(num_c_12));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_13 (.I(num[13]), .O(num_c_13));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_14 (.I(num[14]), .O(num_c_14));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_15 (.I(num[15]), .O(num_c_15));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_16 (.I(num[16]), .O(num_c_16));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_17 (.I(num[17]), .O(num_c_17));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_18 (.I(num[18]), .O(num_c_18));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_3__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(right_3__1__N_7[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1074));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_3__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_3__16__I_0_add_2_1.INIT1 = 16'hffff;
    defparam left_3__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_3__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_add_2_11 (.A0(right_2__1__N_3[5]), .B0(right_3__1__N_8[8]), 
          .C0(result_c_14), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1070), .S0(right_3__1__N_7[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_2__16__I_0_add_2_11.INIT0 = 16'h7878;
    defparam left_2__16__I_0_add_2_11.INIT1 = 16'h0000;
    defparam left_2__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_2__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_add_2_9 (.A0(result_c_14), .B0(right_2__1__N_3[5]), 
          .C0(right_3__1__N_8[6]), .D0(right_2__1__N_3[4]), .A1(right_2__1__N_3[5]), 
          .B1(right_3__1__N_8[7]), .C1(result_c_14), .D1(VCC_net), .CIN(n1069), 
          .COUT(n1070), .S0(right_3__1__N_7[6]), .S1(right_3__1__N_7[7]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_2__16__I_0_add_2_9.INIT0 = 16'h596a;
    defparam left_2__16__I_0_add_2_9.INIT1 = 16'h7878;
    defparam left_2__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_2__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_add_2_7 (.A0(result_c_14), .B0(right_2__1__N_3[5]), 
          .C0(right_3__1__N_8[4]), .D0(right_2__1__N_3[2]), .A1(result_c_14), 
          .B1(right_2__1__N_3[5]), .C1(right_3__1__N_8[5]), .D1(right_2__1__N_3[3]), 
          .CIN(n1068), .COUT(n1069), .S0(right_3__1__N_7[4]), .S1(right_3__1__N_7[5]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_2__16__I_0_add_2_7.INIT0 = 16'h596a;
    defparam left_2__16__I_0_add_2_7.INIT1 = 16'h596a;
    defparam left_2__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_2__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_add_2_5 (.A0(GND_net), .B0(right_2__1__N_3[5]), 
          .C0(right_3__1__N_8[2]), .D0(right_2__1__N_3[0]), .A1(right_2__1__N_3[5]), 
          .B1(result_c_15), .C1(right_3__1__N_8[3]), .D1(right_2__1__N_3[1]), 
          .CIN(n1067), .COUT(n1068), .S0(right_3__1__N_7[2]), .S1(right_3__1__N_7[3]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_2__16__I_0_add_2_5.INIT0 = 16'h596a;
    defparam left_2__16__I_0_add_2_5.INIT1 = 16'he4b1;
    defparam left_2__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_2__16__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 right_3__1__I_0_325_1_lut (.A(right_3__1__N_7[8]), .Z(result_c_13)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_3__1__I_0_325_1_lut.init = 16'h5555;
    CCU2C left_2__16__I_0_add_2_3 (.A0(result_c_14), .B0(right_2__1__N_3[5]), 
          .C0(right_3__1__N_8[0]), .D0(num_c_26), .A1(result_c_14), .B1(right_2__1__N_3[5]), 
          .C1(right_3__1__N_8[1]), .D1(num_c_27), .CIN(n1066), .COUT(n1067), 
          .S0(right_3__1__N_7[0]), .S1(right_3__1__N_7[1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_2__16__I_0_add_2_3.INIT0 = 16'h596a;
    defparam left_2__16__I_0_add_2_3.INIT1 = 16'hd1e2;
    defparam left_2__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_2__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(right_2__1__N_3[5]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1066));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_2__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_2__16__I_0_add_2_1.INIT1 = 16'hffff;
    defparam left_2__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_2__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_17 (.A0(\left[6] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1061), .S1(right_7__1__N_23[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_6__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_6__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_15 (.A0(\left[6] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1060), .COUT(n1061), .S0(right_7__1__N_23[13]), 
          .S1(right_7__1__N_23[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_6__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_6__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_13 (.A0(\left[6] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1059), .COUT(n1060), .S0(right_7__1__N_23[11]), 
          .S1(right_7__1__N_23[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_13.INIT0 = 16'h555a;
    defparam left_6__16__I_0_add_2_13.INIT1 = 16'h555a;
    defparam left_6__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_11 (.A0(\left[6] [9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1058), .COUT(n1059), .S0(right_7__1__N_23[9]), 
          .S1(right_7__1__N_23[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_11.INIT0 = 16'h555a;
    defparam left_6__16__I_0_add_2_11.INIT1 = 16'h555a;
    defparam left_6__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_9 (.A0(result_c_15), .B0(\right[5] [1]), 
          .C0(right_6__1__N_20[5]), .D0(right_6__1__N_19[5]), .A1(\left[6] [8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1057), .COUT(n1058), 
          .S0(right_7__1__N_23[7]), .S1(right_7__1__N_23[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_9.INIT0 = 16'ha695;
    defparam left_6__16__I_0_add_2_9.INIT1 = 16'h555a;
    defparam left_6__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_7 (.A0(right_3__1__N_7[8]), .B0(right_6__1__N_20[3]), 
          .C0(\right[5] [1]), .D0(right_6__1__N_19[3]), .A1(right_2__1__N_3[5]), 
          .B1(right_6__1__N_20[4]), .C1(\right[5] [1]), .D1(right_6__1__N_19[4]), 
          .CIN(n1056), .COUT(n1057), .S0(right_7__1__N_23[5]), .S1(right_7__1__N_23[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_6__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_6__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 right_12__1__I_59_3_lut (.A(right_12__1__N_43[1]), .B(right_12__1__N_44[1]), 
         .C(\right[11] [1]), .Z(\left[12] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_12__1__I_59_3_lut.init = 16'hcaca;
    CCU2C left_6__16__I_0_add_2_5 (.A0(\left[6] [3]), .B0(right_5__1__N_16[14]), 
          .C0(right_4__1__N_11[11]), .D0(right_5__1__N_15[14]), .A1(right_4__1__N_11[11]), 
          .B1(right_6__1__N_20[2]), .C1(\right[5] [1]), .D1(right_6__1__N_19[2]), 
          .CIN(n1055), .COUT(n1056), .S0(right_7__1__N_23[3]), .S1(right_7__1__N_23[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_6__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_6__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_3 (.A0(num_c_19), .B0(\right[6] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[6] [1]), .B1(right_6__1__N_20[0]), 
          .C1(\right[5] [1]), .D1(right_6__1__N_19[0]), .CIN(n1054), .COUT(n1055), 
          .S0(right_7__1__N_23[1]), .S1(right_7__1__N_23[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_6__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_6__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1054), .S1(right_7__1__N_23[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_6__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_6__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_6__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_6__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_17 (.A0(\left[7] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1052), .S1(right_8__1__N_27[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_7__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_7__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_15 (.A0(\left[7] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1051), .COUT(n1052), .S0(right_8__1__N_27[13]), 
          .S1(right_8__1__N_27[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_7__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_7__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_13 (.A0(\left[7] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1050), .COUT(n1051), .S0(right_8__1__N_27[11]), 
          .S1(right_8__1__N_27[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_13.INIT0 = 16'h555a;
    defparam left_7__16__I_0_add_2_13.INIT1 = 16'h555a;
    defparam left_7__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_11 (.A0(\left[7] [9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1049), .COUT(n1050), .S0(right_8__1__N_27[9]), 
          .S1(right_8__1__N_27[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_11.INIT0 = 16'h555a;
    defparam left_7__16__I_0_add_2_11.INIT1 = 16'h555a;
    defparam left_7__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_9 (.A0(right_2__1__N_3[5]), .B0(right_7__1__N_24[5]), 
          .C0(\right[6] [1]), .D0(right_7__1__N_23[5]), .A1(result_c_15), 
          .B1(\right[6] [1]), .C1(right_7__1__N_24[6]), .D1(right_7__1__N_23[6]), 
          .CIN(n1048), .COUT(n1049), .S0(right_8__1__N_27[7]), .S1(right_8__1__N_27[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_7__16__I_0_add_2_9.INIT1 = 16'ha695;
    defparam left_7__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_7 (.A0(right_4__1__N_11[11]), .B0(right_7__1__N_24[3]), 
          .C0(\right[6] [1]), .D0(right_7__1__N_23[3]), .A1(right_3__1__N_7[8]), 
          .B1(right_7__1__N_24[4]), .C1(\right[6] [1]), .D1(right_7__1__N_23[4]), 
          .CIN(n1047), .COUT(n1048), .S0(right_8__1__N_27[5]), .S1(right_8__1__N_27[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_7__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_7__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_5 (.A0(\left[7] [3]), .B0(right_6__1__N_20[16]), 
          .C0(\right[5] [1]), .D0(right_6__1__N_19[16]), .A1(\right[5] [1]), 
          .B1(right_7__1__N_24[2]), .C1(\right[6] [1]), .D1(right_7__1__N_23[2]), 
          .CIN(n1046), .COUT(n1047), .S0(right_8__1__N_27[3]), .S1(right_8__1__N_27[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_7__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_7__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_3 (.A0(num_c_17), .B0(\right[7] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[7] [1]), .B1(right_7__1__N_24[0]), 
          .C1(\right[6] [1]), .D1(right_7__1__N_23[0]), .CIN(n1045), .COUT(n1046), 
          .S0(right_8__1__N_27[1]), .S1(right_8__1__N_27[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_7__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_7__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1045), .S1(right_8__1__N_27[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_7__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_7__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_7__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_7__16__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 right_13__1__I_44_3_lut (.A(right_13__1__N_47[1]), .B(right_13__1__N_48[1]), 
         .C(\right[12] [1]), .Z(\left[13] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_13__1__I_44_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_0_330_3_lut (.A(right_6__1__N_19[16]), .B(right_6__1__N_20[16]), 
         .C(\right[5] [1]), .Z(\right[6] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_0_330_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_134_3_lut (.A(right_7__1__N_23[1]), .B(right_7__1__N_24[1]), 
         .C(\right[6] [1]), .Z(\left[7] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_134_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_122_3_lut (.A(right_7__1__N_23[13]), .B(right_7__1__N_24[13]), 
         .C(\right[6] [1]), .Z(\left[7] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_122_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_0_332_3_lut (.A(right_7__1__N_23[16]), .B(right_7__1__N_24[16]), 
         .C(\right[6] [1]), .Z(\right[7] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_0_332_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_121_3_lut (.A(right_7__1__N_23[14]), .B(right_7__1__N_24[14]), 
         .C(\right[6] [1]), .Z(\left[7] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_121_3_lut.init = 16'hcaca;
    LUT4 right_10__1__I_0_338_3_lut (.A(right_10__1__N_35[16]), .B(right_10__1__N_36[16]), 
         .C(\right[9] [1]), .Z(\right[10] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_10__1__I_0_338_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_0_336_3_lut (.A(right_9__1__N_31[16]), .B(right_9__1__N_32[16]), 
         .C(\right[8] [1]), .Z(\right[9] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_0_336_3_lut.init = 16'hcaca;
    LUT4 right_8__1__I_0_334_3_lut (.A(right_8__1__N_27[16]), .B(right_8__1__N_28[16]), 
         .C(\right[7] [1]), .Z(\right[8] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_0_334_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_139_3_lut (.A(right_6__1__N_19[11]), .B(right_6__1__N_20[11]), 
         .C(\right[5] [1]), .Z(\left[6] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_139_3_lut.init = 16'hcaca;
    LUT4 right_11__1__I_74_3_lut (.A(right_11__1__N_39[1]), .B(right_11__1__N_40[1]), 
         .C(\right[10] [1]), .Z(\left[11] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_11__1__I_74_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_138_3_lut (.A(right_6__1__N_19[12]), .B(right_6__1__N_20[12]), 
         .C(\right[5] [1]), .Z(\left[6] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_138_3_lut.init = 16'hcaca;
    LUT4 right_11__1__I_0_340_3_lut (.A(right_11__1__N_39[16]), .B(right_11__1__N_40[16]), 
         .C(\right[10] [1]), .Z(\right[11] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_11__1__I_0_340_3_lut.init = 16'hcaca;
    LUT4 right_10__1__I_77_3_lut (.A(right_10__1__N_35[13]), .B(right_10__1__N_36[13]), 
         .C(\right[9] [1]), .Z(\left[10] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_10__1__I_77_3_lut.init = 16'hcaca;
    LUT4 right_10__1__I_76_3_lut (.A(right_10__1__N_35[14]), .B(right_10__1__N_36[14]), 
         .C(\right[9] [1]), .Z(\left[10] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_10__1__I_76_3_lut.init = 16'hcaca;
    LUT4 right_10__1__I_79_3_lut (.A(right_10__1__N_35[11]), .B(right_10__1__N_36[11]), 
         .C(\right[9] [1]), .Z(\left[10] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_10__1__I_79_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(VCC_net));
    IB num_pad_0 (.I(num[0]), .O(num_c_0));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_10__1__I_78_3_lut (.A(right_10__1__N_35[12]), .B(right_10__1__N_36[12]), 
         .C(\right[9] [1]), .Z(\left[10] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_10__1__I_78_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_124_3_lut (.A(right_7__1__N_23[11]), .B(right_7__1__N_24[11]), 
         .C(\right[6] [1]), .Z(\left[7] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_124_3_lut.init = 16'hcaca;
    LUT4 right_10__1__I_80_3_lut (.A(right_10__1__N_35[10]), .B(right_10__1__N_36[10]), 
         .C(\right[9] [1]), .Z(\left[10] [12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_10__1__I_80_3_lut.init = 16'hcaca;
    LUT4 right_10__1__I_89_3_lut (.A(right_10__1__N_35[1]), .B(right_10__1__N_36[1]), 
         .C(\right[9] [1]), .Z(\left[10] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_10__1__I_89_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_92_3_lut (.A(right_9__1__N_31[13]), .B(right_9__1__N_32[13]), 
         .C(\right[8] [1]), .Z(\left[9] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_92_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_91_3_lut (.A(right_9__1__N_31[14]), .B(right_9__1__N_32[14]), 
         .C(\right[8] [1]), .Z(\left[9] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_91_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_94_3_lut (.A(right_9__1__N_31[11]), .B(right_9__1__N_32[11]), 
         .C(\right[8] [1]), .Z(\left[9] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_94_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_93_3_lut (.A(right_9__1__N_31[12]), .B(right_9__1__N_32[12]), 
         .C(\right[8] [1]), .Z(\left[9] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_93_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_96_3_lut (.A(right_9__1__N_31[9]), .B(right_9__1__N_32[9]), 
         .C(\right[8] [1]), .Z(\left[9] [11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_96_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_127_3_lut (.A(right_7__1__N_23[8]), .B(right_7__1__N_24[8]), 
         .C(\right[6] [1]), .Z(\left[7] [10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_127_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_95_3_lut (.A(right_9__1__N_31[10]), .B(right_9__1__N_32[10]), 
         .C(\right[8] [1]), .Z(\left[9] [12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_95_3_lut.init = 16'hcaca;
    IB num_pad_1 (.I(num[1]), .O(num_c_1));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_6__1__I_141_3_lut (.A(right_6__1__N_19[9]), .B(right_6__1__N_20[9]), 
         .C(\right[5] [1]), .Z(\left[6] [11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_141_3_lut.init = 16'hcaca;
    LUT4 right_9__1__I_104_3_lut (.A(right_9__1__N_31[1]), .B(right_9__1__N_32[1]), 
         .C(\right[8] [1]), .Z(\left[9] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_9__1__I_104_3_lut.init = 16'hcaca;
    LUT4 right_14__1__I_0_346_3_lut (.A(right_14__1__N_51[16]), .B(right_14__1__N_52[16]), 
         .C(\right[13] [1]), .Z(\right[14] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_14__1__I_0_346_3_lut.init = 16'hcaca;
    LUT4 right_13__1__I_0_344_3_lut (.A(right_13__1__N_47[16]), .B(right_13__1__N_48[16]), 
         .C(\right[12] [1]), .Z(\right[13] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_13__1__I_0_344_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_140_3_lut (.A(right_6__1__N_19[10]), .B(right_6__1__N_20[10]), 
         .C(\right[5] [1]), .Z(\left[6] [12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_140_3_lut.init = 16'hcaca;
    LUT4 i409_4_lut_3_lut_4_lut (.A(num_c_29), .B(num_c_31), .C(num_c_30), 
         .D(num_c_28), .Z(n6)) /* synthesis lut_function=(A ((D)+!C)+!A !(B (C)+!B (C+!(D)))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam i409_4_lut_3_lut_4_lut.init = 16'haf0e;
    LUT4 right_12__1__I_0_342_3_lut (.A(right_12__1__N_43[16]), .B(right_12__1__N_44[16]), 
         .C(\right[11] [1]), .Z(\right[12] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_12__1__I_0_342_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_143_3_lut (.A(right_6__1__N_19[7]), .B(right_6__1__N_20[7]), 
         .C(\right[5] [1]), .Z(\left[6] [9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_143_3_lut.init = 16'hcaca;
    LUT4 right_15__1__I_0_348_3_lut (.A(right_15__1__N_55[16]), .B(right_15__1__N_56[16]), 
         .C(\right[14] [1]), .Z(\right[15] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_15__1__I_0_348_3_lut.init = 16'hcaca;
    LUT4 right_14__1__I_0_347_1_lut (.A(\right[14] [1]), .Z(result_c_2)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_14__1__I_0_347_1_lut.init = 16'h5555;
    IB num_pad_2 (.I(num[2]), .O(num_c_2));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_7__1__I_123_3_lut (.A(right_7__1__N_23[12]), .B(right_7__1__N_24[12]), 
         .C(\right[6] [1]), .Z(\left[7] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_123_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_126_3_lut (.A(right_7__1__N_23[9]), .B(right_7__1__N_24[9]), 
         .C(\right[6] [1]), .Z(\left[7] [11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_126_3_lut.init = 16'hcaca;
    LUT4 i454_1_lut_2_lut (.A(num_c_31), .B(num_c_30), .Z(\left[1] [16])) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam i454_1_lut_2_lut.init = 16'h1111;
    LUT4 right_7__1__I_125_3_lut (.A(right_7__1__N_23[10]), .B(right_7__1__N_24[10]), 
         .C(\right[6] [1]), .Z(\left[7] [12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_125_3_lut.init = 16'hcaca;
    LUT4 i557_1_lut (.A(right_2__1__N_3[5]), .Z(result_c_14)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam i557_1_lut.init = 16'h5555;
    LUT4 right_8__1__I_107_3_lut (.A(right_8__1__N_27[13]), .B(right_8__1__N_28[13]), 
         .C(\right[7] [1]), .Z(\left[8] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_107_3_lut.init = 16'hcaca;
    LUT4 right_8__1__I_106_3_lut (.A(right_8__1__N_27[14]), .B(right_8__1__N_28[14]), 
         .C(\right[7] [1]), .Z(\left[8] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_106_3_lut.init = 16'hcaca;
    LUT4 right_8__1__I_109_3_lut (.A(right_8__1__N_27[11]), .B(right_8__1__N_28[11]), 
         .C(\right[7] [1]), .Z(\left[8] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_109_3_lut.init = 16'hcaca;
    LUT4 right_8__1__I_108_3_lut (.A(right_8__1__N_27[12]), .B(right_8__1__N_28[12]), 
         .C(\right[7] [1]), .Z(\left[8] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_108_3_lut.init = 16'hcaca;
    LUT4 right_8__1__I_111_3_lut (.A(right_8__1__N_27[9]), .B(right_8__1__N_28[9]), 
         .C(\right[7] [1]), .Z(\left[8] [11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_111_3_lut.init = 16'hcaca;
    IB num_pad_3 (.I(num[3]), .O(num_c_3));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_8__1__I_110_3_lut (.A(right_8__1__N_27[10]), .B(right_8__1__N_28[10]), 
         .C(\right[7] [1]), .Z(\left[8] [12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_110_3_lut.init = 16'hcaca;
    LUT4 right_8__1__I_112_3_lut (.A(right_8__1__N_27[8]), .B(right_8__1__N_28[8]), 
         .C(\right[7] [1]), .Z(\left[8] [10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_112_3_lut.init = 16'hcaca;
    LUT4 right_8__1__I_119_3_lut (.A(right_8__1__N_27[1]), .B(right_8__1__N_28[1]), 
         .C(\right[7] [1]), .Z(\left[8] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_8__1__I_119_3_lut.init = 16'hcaca;
    LUT4 right_14__1__I_16_3_lut (.A(right_14__1__N_51[14]), .B(right_14__1__N_52[14]), 
         .C(\right[13] [1]), .Z(\left[14] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_14__1__I_16_3_lut.init = 16'hcaca;
    LUT4 right_13__1__I_0_345_1_lut (.A(\right[13] [1]), .Z(result_c_3)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_13__1__I_0_345_1_lut.init = 16'h5555;
    LUT4 right_13__1__I_32_3_lut (.A(right_13__1__N_47[13]), .B(right_13__1__N_48[13]), 
         .C(\right[12] [1]), .Z(\left[13] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_13__1__I_32_3_lut.init = 16'hcaca;
    LUT4 right_13__1__I_31_3_lut (.A(right_13__1__N_47[14]), .B(right_13__1__N_48[14]), 
         .C(\right[12] [1]), .Z(\left[13] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_13__1__I_31_3_lut.init = 16'hcaca;
    LUT4 right_12__1__I_0_343_1_lut (.A(\right[12] [1]), .Z(result_c_4)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_12__1__I_0_343_1_lut.init = 16'h5555;
    IB num_pad_4 (.I(num[4]), .O(num_c_4));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_12__1__I_47_3_lut (.A(right_12__1__N_43[13]), .B(right_12__1__N_44[13]), 
         .C(\right[11] [1]), .Z(\left[12] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_12__1__I_47_3_lut.init = 16'hcaca;
    LUT4 right_12__1__I_46_3_lut (.A(right_12__1__N_43[14]), .B(right_12__1__N_44[14]), 
         .C(\right[11] [1]), .Z(\left[12] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_12__1__I_46_3_lut.init = 16'hcaca;
    LUT4 right_12__1__I_48_3_lut (.A(right_12__1__N_43[12]), .B(right_12__1__N_44[12]), 
         .C(\right[11] [1]), .Z(\left[12] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_12__1__I_48_3_lut.init = 16'hcaca;
    LUT4 right_11__1__I_0_341_1_lut (.A(\right[11] [1]), .Z(result_c_5)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_11__1__I_0_341_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(num_c_31), .B(num_c_30), .Z(n968)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i404_3_lut_4_lut (.A(num_c_29), .B(num_c_31), .C(num_c_30), .D(num_c_28), 
         .Z(right_2__1__N_4[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A !(B (C)+!B (C+!(D))))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam i404_3_lut_4_lut.init = 16'h58f1;
    LUT4 i2_3_lut (.A(num_c_30), .B(num_c_31), .C(n6), .Z(right_2__1__N_4[3])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut.init = 16'h6969;
    LUT4 i395_1_lut (.A(num_c_28), .Z(right_2__1__N_4[0])) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam i395_1_lut.init = 16'h5555;
    LUT4 i577_2_lut (.A(num_c_29), .B(num_c_28), .Z(n1319)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam i577_2_lut.init = 16'h9999;
    LUT4 right_11__1__I_62_3_lut (.A(right_11__1__N_39[13]), .B(right_11__1__N_40[13]), 
         .C(\right[10] [1]), .Z(\left[11] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_11__1__I_62_3_lut.init = 16'hcaca;
    LUT4 right_11__1__I_61_3_lut (.A(right_11__1__N_39[14]), .B(right_11__1__N_40[14]), 
         .C(\right[10] [1]), .Z(\left[11] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_11__1__I_61_3_lut.init = 16'hcaca;
    LUT4 right_11__1__I_64_3_lut (.A(right_11__1__N_39[11]), .B(right_11__1__N_40[11]), 
         .C(\right[10] [1]), .Z(\left[11] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_11__1__I_64_3_lut.init = 16'hcaca;
    LUT4 right_11__1__I_63_3_lut (.A(right_11__1__N_39[12]), .B(right_11__1__N_40[12]), 
         .C(\right[10] [1]), .Z(\left[11] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_11__1__I_63_3_lut.init = 16'hcaca;
    IB num_pad_5 (.I(num[5]), .O(num_c_5));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    IB num_pad_6 (.I(num[6]), .O(num_c_6));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_10__1__I_0_339_1_lut (.A(\right[10] [1]), .Z(result_c_6)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_10__1__I_0_339_1_lut.init = 16'h5555;
    LUT4 right_9__1__I_0_337_1_lut (.A(\right[9] [1]), .Z(result_c_7)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_9__1__I_0_337_1_lut.init = 16'h5555;
    LUT4 r_16__16__I_0_350_3_lut (.A(r_16__16__N_59[16]), .B(r_16__16__N_60[16]), 
         .C(\right[15] [1]), .Z(\r[16] [16])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam r_16__16__I_0_350_3_lut.init = 16'h3535;
    LUT4 right_15__1__I_0_349_1_lut (.A(\right[15] [1]), .Z(result_c_1)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_15__1__I_0_349_1_lut.init = 16'h5555;
    LUT4 right_8__1__I_0_335_1_lut (.A(\right[8] [1]), .Z(result_c_8)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_8__1__I_0_335_1_lut.init = 16'h5555;
    LUT4 right_14__1__I_29_3_lut (.A(right_14__1__N_51[1]), .B(right_14__1__N_52[1]), 
         .C(\right[13] [1]), .Z(\left[14] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_14__1__I_29_3_lut.init = 16'hcaca;
    IB num_pad_7 (.I(num[7]), .O(num_c_7));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_7__1__I_0_333_1_lut (.A(\right[7] [1]), .Z(result_c_9)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_7__1__I_0_333_1_lut.init = 16'h5555;
    LUT4 right_6__1__I_0_331_1_lut (.A(\right[6] [1]), .Z(result_c_10)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_6__1__I_0_331_1_lut.init = 16'h5555;
    LUT4 right_5__1__I_0_328_3_lut (.A(right_5__1__N_15[14]), .B(right_5__1__N_16[14]), 
         .C(right_4__1__N_11[11]), .Z(\right[5] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_0_328_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_137_3_lut (.A(right_6__1__N_19[13]), .B(right_6__1__N_20[13]), 
         .C(\right[5] [1]), .Z(\left[6] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_137_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_136_3_lut (.A(right_6__1__N_19[14]), .B(right_6__1__N_20[14]), 
         .C(\right[5] [1]), .Z(\left[6] [16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_136_3_lut.init = 16'hcaca;
    LUT4 right_5__1__I_0_329_1_lut (.A(\right[5] [1]), .Z(result_c_11)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_5__1__I_0_329_1_lut.init = 16'h5555;
    LUT4 right_5__1__I_152_3_lut (.A(right_5__1__N_15[13]), .B(right_5__1__N_16[13]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_152_3_lut.init = 16'hcaca;
    IB num_pad_8 (.I(num[8]), .O(num_c_8));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_11__16__I_0_add_2_13 (.A0(right_2__1__N_3[5]), .B0(right_11__1__N_40[9]), 
          .C0(\right[10] [1]), .D0(right_11__1__N_39[9]), .A1(result_c_15), 
          .B1(\right[10] [1]), .C1(right_11__1__N_40[10]), .D1(right_11__1__N_39[10]), 
          .CIN(n1248), .COUT(n1249), .S0(right_12__1__N_43[11]), .S1(right_12__1__N_43[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_13.INIT0 = 16'h656a;
    defparam left_11__16__I_0_add_2_13.INIT1 = 16'ha695;
    defparam left_11__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_13.INJECT1_1 = "NO";
    LUT4 right_5__1__I_154_3_lut (.A(right_5__1__N_15[11]), .B(right_5__1__N_16[11]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_154_3_lut.init = 16'hcaca;
    LUT4 right_5__1__I_153_3_lut (.A(right_5__1__N_15[12]), .B(right_5__1__N_16[12]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_153_3_lut.init = 16'hcaca;
    LUT4 right_5__1__I_156_3_lut (.A(right_5__1__N_15[9]), .B(right_5__1__N_16[9]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_156_3_lut.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 right_15__1__I_14_3_lut (.A(right_15__1__N_55[1]), .B(right_15__1__N_56[1]), 
         .C(\right[14] [1]), .Z(\left[15] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_15__1__I_14_3_lut.init = 16'hcaca;
    LUT4 right_5__1__I_155_3_lut (.A(right_5__1__N_15[10]), .B(right_5__1__N_16[10]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_155_3_lut.init = 16'hcaca;
    LUT4 right_5__1__I_158_3_lut (.A(right_5__1__N_15[7]), .B(right_5__1__N_16[7]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_158_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    CCU2C left_11__16__I_0_add_2_11 (.A0(right_4__1__N_11[11]), .B0(right_11__1__N_40[7]), 
          .C0(\right[10] [1]), .D0(right_11__1__N_39[7]), .A1(right_3__1__N_7[8]), 
          .B1(right_11__1__N_40[8]), .C1(\right[10] [1]), .D1(right_11__1__N_39[8]), 
          .CIN(n1247), .COUT(n1248), .S0(right_12__1__N_43[9]), .S1(right_12__1__N_43[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_11.INIT0 = 16'h656a;
    defparam left_11__16__I_0_add_2_11.INIT1 = 16'h656a;
    defparam left_11__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_add_2_9 (.A0(\right[6] [1]), .B0(right_11__1__N_40[5]), 
          .C0(\right[10] [1]), .D0(right_11__1__N_39[5]), .A1(\right[5] [1]), 
          .B1(right_11__1__N_40[6]), .C1(\right[10] [1]), .D1(right_11__1__N_39[6]), 
          .CIN(n1246), .COUT(n1247), .S0(right_12__1__N_43[7]), .S1(right_12__1__N_43[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_11__16__I_0_add_2_9.INIT1 = 16'h656a;
    defparam left_11__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_add_2_7 (.A0(\right[8] [1]), .B0(right_11__1__N_40[3]), 
          .C0(\right[10] [1]), .D0(right_11__1__N_39[3]), .A1(\right[7] [1]), 
          .B1(right_11__1__N_40[4]), .C1(\right[10] [1]), .D1(right_11__1__N_39[4]), 
          .CIN(n1245), .COUT(n1246), .S0(right_12__1__N_43[5]), .S1(right_12__1__N_43[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_11__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_11__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 right_6__1__I_142_3_lut (.A(right_6__1__N_19[8]), .B(right_6__1__N_20[8]), 
         .C(\right[5] [1]), .Z(\left[6] [10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_142_3_lut.init = 16'hcaca;
    LUT4 right_6__1__I_144_3_lut (.A(right_6__1__N_19[6]), .B(right_6__1__N_20[6]), 
         .C(\right[5] [1]), .Z(\left[6] [8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_144_3_lut.init = 16'hcaca;
    LUT4 right_5__1__I_157_3_lut (.A(right_5__1__N_15[8]), .B(right_5__1__N_16[8]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_157_3_lut.init = 16'hcaca;
    IB num_pad_19 (.I(num[19]), .O(num_c_19));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    LUT4 right_5__1__I_160_3_lut (.A(right_5__1__N_15[5]), .B(right_5__1__N_16[5]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_160_3_lut.init = 16'hcaca;
    LUT4 right_5__1__I_159_3_lut (.A(right_5__1__N_15[6]), .B(right_5__1__N_16[6]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_159_3_lut.init = 16'hcaca;
    CCU2C left_11__16__I_0_add_2_5 (.A0(\left[11] [3]), .B0(right_10__1__N_36[16]), 
          .C0(\right[9] [1]), .D0(right_10__1__N_35[16]), .A1(\right[9] [1]), 
          .B1(right_11__1__N_40[2]), .C1(\right[10] [1]), .D1(right_11__1__N_39[2]), 
          .CIN(n1244), .COUT(n1245), .S0(right_12__1__N_43[3]), .S1(right_12__1__N_43[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_11__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_11__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_add_2_3 (.A0(num_c_9), .B0(\right[11] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[11] [1]), .B1(right_11__1__N_40[0]), 
          .C1(\right[10] [1]), .D1(right_11__1__N_39[0]), .CIN(n1243), 
          .COUT(n1244), .S0(right_12__1__N_43[1]), .S1(right_12__1__N_43[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_11__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_11__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1243), .S1(right_12__1__N_43[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_11__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_11__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_1.INJECT1_1 = "NO";
    IB num_pad_20 (.I(num[20]), .O(num_c_20));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_10__16__I_0_add_2_17 (.A0(\left[10] [15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(\left[10] [16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1241), .S1(right_11__1__N_39[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_10__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_10__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_add_2_15 (.A0(\left[10] [13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(\left[10] [14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1240), .COUT(n1241), .S0(right_11__1__N_39[13]), 
          .S1(right_11__1__N_39[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_10__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_10__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_add_2_13 (.A0(result_c_15), .B0(\right[9] [1]), 
          .C0(right_10__1__N_36[9]), .D0(right_10__1__N_35[9]), .A1(\left[10] [12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1239), .COUT(n1240), 
          .S0(right_11__1__N_39[11]), .S1(right_11__1__N_39[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_13.INIT0 = 16'ha695;
    defparam left_10__16__I_0_add_2_13.INIT1 = 16'h555a;
    defparam left_10__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_add_2_11 (.A0(right_3__1__N_7[8]), .B0(right_10__1__N_36[7]), 
          .C0(\right[9] [1]), .D0(right_10__1__N_35[7]), .A1(right_2__1__N_3[5]), 
          .B1(right_10__1__N_36[8]), .C1(\right[9] [1]), .D1(right_10__1__N_35[8]), 
          .CIN(n1238), .COUT(n1239), .S0(right_11__1__N_39[9]), .S1(right_11__1__N_39[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_11.INIT0 = 16'h656a;
    defparam left_10__16__I_0_add_2_11.INIT1 = 16'h656a;
    defparam left_10__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_add_2_9 (.A0(\right[5] [1]), .B0(right_10__1__N_36[5]), 
          .C0(\right[9] [1]), .D0(right_10__1__N_35[5]), .A1(right_4__1__N_11[11]), 
          .B1(right_10__1__N_36[6]), .C1(\right[9] [1]), .D1(right_10__1__N_35[6]), 
          .CIN(n1237), .COUT(n1238), .S0(right_11__1__N_39[7]), .S1(right_11__1__N_39[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_10__16__I_0_add_2_9.INIT1 = 16'h656a;
    defparam left_10__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_add_2_7 (.A0(\right[7] [1]), .B0(right_10__1__N_36[3]), 
          .C0(\right[9] [1]), .D0(right_10__1__N_35[3]), .A1(\right[6] [1]), 
          .B1(right_10__1__N_36[4]), .C1(\right[9] [1]), .D1(right_10__1__N_35[4]), 
          .CIN(n1236), .COUT(n1237), .S0(right_11__1__N_39[5]), .S1(right_11__1__N_39[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_10__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_10__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_add_2_5 (.A0(\left[10] [3]), .B0(right_9__1__N_32[16]), 
          .C0(\right[8] [1]), .D0(right_9__1__N_31[16]), .A1(\right[8] [1]), 
          .B1(right_10__1__N_36[2]), .C1(\right[9] [1]), .D1(right_10__1__N_35[2]), 
          .CIN(n1235), .COUT(n1236), .S0(right_11__1__N_39[3]), .S1(right_11__1__N_39[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_10__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_10__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_add_2_3 (.A0(num_c_11), .B0(\right[10] [1]), 
          .C0(GND_net), .D0(VCC_net), .A1(\right[10] [1]), .B1(right_10__1__N_36[0]), 
          .C1(\right[9] [1]), .D1(right_10__1__N_35[0]), .CIN(n1234), 
          .COUT(n1235), .S0(right_11__1__N_39[1]), .S1(right_11__1__N_39[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_10__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_10__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_3.INJECT1_1 = "NO";
    IB num_pad_21 (.I(num[21]), .O(num_c_21));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_10__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1234), .S1(right_11__1__N_39[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_10__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_10__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_10__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_10__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_17 (.A0(\left[9] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[9] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1232), .S1(right_10__1__N_35[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_9__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_9__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_17.INJECT1_1 = "NO";
    IB num_pad_22 (.I(num[22]), .O(num_c_22));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_9__16__I_0_add_2_15 (.A0(\left[9] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[9] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1231), .COUT(n1232), .S0(right_10__1__N_35[13]), 
          .S1(right_10__1__N_35[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_9__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_9__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_13 (.A0(\left[9] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[9] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1230), .COUT(n1231), .S0(right_10__1__N_35[11]), 
          .S1(right_10__1__N_35[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_13.INIT0 = 16'h555a;
    defparam left_9__16__I_0_add_2_13.INIT1 = 16'h555a;
    defparam left_9__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_11 (.A0(right_2__1__N_3[5]), .B0(right_9__1__N_32[7]), 
          .C0(\right[8] [1]), .D0(right_9__1__N_31[7]), .A1(result_c_15), 
          .B1(\right[8] [1]), .C1(right_9__1__N_32[8]), .D1(right_9__1__N_31[8]), 
          .CIN(n1229), .COUT(n1230), .S0(right_10__1__N_35[9]), .S1(right_10__1__N_35[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_11.INIT0 = 16'h656a;
    defparam left_9__16__I_0_add_2_11.INIT1 = 16'ha695;
    defparam left_9__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_9 (.A0(right_4__1__N_11[11]), .B0(right_9__1__N_32[5]), 
          .C0(\right[8] [1]), .D0(right_9__1__N_31[5]), .A1(right_3__1__N_7[8]), 
          .B1(right_9__1__N_32[6]), .C1(\right[8] [1]), .D1(right_9__1__N_31[6]), 
          .CIN(n1228), .COUT(n1229), .S0(right_10__1__N_35[7]), .S1(right_10__1__N_35[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_9__16__I_0_add_2_9.INIT1 = 16'h656a;
    defparam left_9__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_7 (.A0(\right[6] [1]), .B0(right_9__1__N_32[3]), 
          .C0(\right[8] [1]), .D0(right_9__1__N_31[3]), .A1(\right[5] [1]), 
          .B1(right_9__1__N_32[4]), .C1(\right[8] [1]), .D1(right_9__1__N_31[4]), 
          .CIN(n1227), .COUT(n1228), .S0(right_10__1__N_35[5]), .S1(right_10__1__N_35[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_9__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_9__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_5 (.A0(\left[9] [3]), .B0(right_8__1__N_28[16]), 
          .C0(\right[7] [1]), .D0(right_8__1__N_27[16]), .A1(\right[7] [1]), 
          .B1(right_9__1__N_32[2]), .C1(\right[8] [1]), .D1(right_9__1__N_31[2]), 
          .CIN(n1226), .COUT(n1227), .S0(right_10__1__N_35[3]), .S1(right_10__1__N_35[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_9__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_9__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_3 (.A0(num_c_13), .B0(\right[9] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[9] [1]), .B1(right_9__1__N_32[0]), 
          .C1(\right[8] [1]), .D1(right_9__1__N_31[0]), .CIN(n1225), .COUT(n1226), 
          .S0(right_10__1__N_35[1]), .S1(right_10__1__N_35[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_9__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_9__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1225), .S1(right_10__1__N_35[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_9__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_9__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_9__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_9__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C add_383_17 (.A0(result_c_15), .B0(right_15__1__N_56[14]), .C0(\right[14] [1]), 
          .D0(right_15__1__N_55[14]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1224), .S0(r_16__16__N_60[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_17.INIT0 = 16'h656a;
    defparam add_383_17.INIT1 = 16'h0000;
    defparam add_383_17.INJECT1_0 = "NO";
    defparam add_383_17.INJECT1_1 = "NO";
    CCU2C add_383_15 (.A0(right_3__1__N_7[8]), .B0(\right[14] [1]), .C0(right_15__1__N_56[12]), 
          .D0(right_15__1__N_55[12]), .A1(right_2__1__N_3[5]), .B1(\right[14] [1]), 
          .C1(right_15__1__N_56[13]), .D1(right_15__1__N_55[13]), .CIN(n1223), 
          .COUT(n1224));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_15.INIT0 = 16'ha695;
    defparam add_383_15.INIT1 = 16'ha695;
    defparam add_383_15.INJECT1_0 = "NO";
    defparam add_383_15.INJECT1_1 = "NO";
    CCU2C add_383_13 (.A0(\right[5] [1]), .B0(\right[14] [1]), .C0(right_15__1__N_56[10]), 
          .D0(right_15__1__N_55[10]), .A1(right_4__1__N_11[11]), .B1(\right[14] [1]), 
          .C1(right_15__1__N_56[11]), .D1(right_15__1__N_55[11]), .CIN(n1222), 
          .COUT(n1223));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_13.INIT0 = 16'ha695;
    defparam add_383_13.INIT1 = 16'ha695;
    defparam add_383_13.INJECT1_0 = "NO";
    defparam add_383_13.INJECT1_1 = "NO";
    CCU2C add_383_11 (.A0(\right[7] [1]), .B0(\right[14] [1]), .C0(right_15__1__N_56[8]), 
          .D0(right_15__1__N_55[8]), .A1(\right[6] [1]), .B1(\right[14] [1]), 
          .C1(right_15__1__N_56[9]), .D1(right_15__1__N_55[9]), .CIN(n1221), 
          .COUT(n1222));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_11.INIT0 = 16'ha695;
    defparam add_383_11.INIT1 = 16'ha695;
    defparam add_383_11.INJECT1_0 = "NO";
    defparam add_383_11.INJECT1_1 = "NO";
    IB num_pad_23 (.I(num[23]), .O(num_c_23));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C add_383_9 (.A0(\right[9] [1]), .B0(\right[14] [1]), .C0(right_15__1__N_56[6]), 
          .D0(right_15__1__N_55[6]), .A1(\right[8] [1]), .B1(\right[14] [1]), 
          .C1(right_15__1__N_56[7]), .D1(right_15__1__N_55[7]), .CIN(n1220), 
          .COUT(n1221));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_9.INIT0 = 16'ha695;
    defparam add_383_9.INIT1 = 16'ha695;
    defparam add_383_9.INJECT1_0 = "NO";
    defparam add_383_9.INJECT1_1 = "NO";
    CCU2C add_383_7 (.A0(\right[11] [1]), .B0(\right[14] [1]), .C0(right_15__1__N_56[4]), 
          .D0(right_15__1__N_55[4]), .A1(\right[10] [1]), .B1(\right[14] [1]), 
          .C1(right_15__1__N_56[5]), .D1(right_15__1__N_55[5]), .CIN(n1219), 
          .COUT(n1220));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_7.INIT0 = 16'ha695;
    defparam add_383_7.INIT1 = 16'ha695;
    defparam add_383_7.INJECT1_0 = "NO";
    defparam add_383_7.INJECT1_1 = "NO";
    CCU2C add_383_5 (.A0(\right[13] [1]), .B0(\right[14] [1]), .C0(right_15__1__N_56[2]), 
          .D0(right_15__1__N_55[2]), .A1(\right[12] [1]), .B1(\right[14] [1]), 
          .C1(right_15__1__N_56[3]), .D1(right_15__1__N_55[3]), .CIN(n1218), 
          .COUT(n1219));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_5.INIT0 = 16'ha695;
    defparam add_383_5.INIT1 = 16'ha695;
    defparam add_383_5.INJECT1_0 = "NO";
    defparam add_383_5.INJECT1_1 = "NO";
    IB num_pad_24 (.I(num[24]), .O(num_c_24));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C add_383_3 (.A0(\right[15] [1]), .B0(\right[14] [1]), .C0(right_15__1__N_56[0]), 
          .D0(right_15__1__N_55[0]), .A1(result_c_2), .B1(right_15__1__N_56[1]), 
          .C1(\right[14] [1]), .D1(right_15__1__N_55[1]), .CIN(n1217), 
          .COUT(n1218));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_3.INIT0 = 16'ha695;
    defparam add_383_3.INIT1 = 16'h656a;
    defparam add_383_3.INJECT1_0 = "NO";
    defparam add_383_3.INJECT1_1 = "NO";
    CCU2C add_383_1 (.A0(num_c_0), .B0(GND_net), .C0(GND_net), .D0(num_c_0), 
          .A1(num_c_1), .B1(right_15__1__N_56[16]), .C1(\right[14] [1]), 
          .D1(right_15__1__N_55[16]), .COUT(n1217));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam add_383_1.INIT0 = 16'h000A;
    defparam add_383_1.INIT1 = 16'h656a;
    defparam add_383_1.INJECT1_0 = "NO";
    defparam add_383_1.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_17 (.A0(\left[8] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[8] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1215), .S1(right_9__1__N_31[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_8__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_8__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_15 (.A0(\left[8] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[8] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1214), .COUT(n1215), .S0(right_9__1__N_31[13]), 
          .S1(right_9__1__N_31[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_8__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_8__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_13 (.A0(\left[8] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[8] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1213), .COUT(n1214), .S0(right_9__1__N_31[11]), 
          .S1(right_9__1__N_31[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_13.INIT0 = 16'h555a;
    defparam left_8__16__I_0_add_2_13.INIT1 = 16'h555a;
    defparam left_8__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_11 (.A0(result_c_15), .B0(\right[7] [1]), 
          .C0(right_8__1__N_28[7]), .D0(right_8__1__N_27[7]), .A1(\left[8] [10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1212), .COUT(n1213), 
          .S0(right_9__1__N_31[9]), .S1(right_9__1__N_31[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_11.INIT0 = 16'ha695;
    defparam left_8__16__I_0_add_2_11.INIT1 = 16'h555a;
    defparam left_8__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_9 (.A0(right_3__1__N_7[8]), .B0(right_8__1__N_28[5]), 
          .C0(\right[7] [1]), .D0(right_8__1__N_27[5]), .A1(right_2__1__N_3[5]), 
          .B1(right_8__1__N_28[6]), .C1(\right[7] [1]), .D1(right_8__1__N_27[6]), 
          .CIN(n1211), .COUT(n1212), .S0(right_9__1__N_31[7]), .S1(right_9__1__N_31[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_8__16__I_0_add_2_9.INIT1 = 16'h656a;
    defparam left_8__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_7 (.A0(\right[5] [1]), .B0(right_8__1__N_28[3]), 
          .C0(\right[7] [1]), .D0(right_8__1__N_27[3]), .A1(right_4__1__N_11[11]), 
          .B1(right_8__1__N_28[4]), .C1(\right[7] [1]), .D1(right_8__1__N_27[4]), 
          .CIN(n1210), .COUT(n1211), .S0(right_9__1__N_31[5]), .S1(right_9__1__N_31[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_8__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_8__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_5 (.A0(\left[8] [3]), .B0(right_7__1__N_24[16]), 
          .C0(\right[6] [1]), .D0(right_7__1__N_23[16]), .A1(\right[6] [1]), 
          .B1(right_8__1__N_28[2]), .C1(\right[7] [1]), .D1(right_8__1__N_27[2]), 
          .CIN(n1209), .COUT(n1210), .S0(right_9__1__N_31[3]), .S1(right_9__1__N_31[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_8__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_8__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_3 (.A0(num_c_15), .B0(\right[8] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[8] [1]), .B1(right_8__1__N_28[0]), 
          .C1(\right[7] [1]), .D1(right_8__1__N_27[0]), .CIN(n1208), .COUT(n1209), 
          .S0(right_9__1__N_31[1]), .S1(right_9__1__N_31[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_8__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_8__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1208), .S1(right_9__1__N_31[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_8__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_8__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_8__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_8__16__I_0_add_2_1.INJECT1_1 = "NO";
    IB num_pad_25 (.I(num[25]), .O(num_c_25));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_14__16__I_0_365_17 (.A0(result_c_15), .B0(right_14__1__N_52[13]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[13]), .A1(\left[14] [16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1206), .S1(right_15__1__N_56[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_17.INIT0 = 16'h656a;
    defparam left_14__16__I_0_365_17.INIT1 = 16'haaaa;
    defparam left_14__16__I_0_365_17.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_17.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_365_15 (.A0(right_3__1__N_7[8]), .B0(\right[13] [1]), 
          .C0(right_14__1__N_52[11]), .D0(right_14__1__N_51[11]), .A1(right_2__1__N_3[5]), 
          .B1(\right[13] [1]), .C1(right_14__1__N_52[12]), .D1(right_14__1__N_51[12]), 
          .CIN(n1205), .COUT(n1206), .S0(right_15__1__N_56[13]), .S1(right_15__1__N_56[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_15.INIT0 = 16'ha695;
    defparam left_14__16__I_0_365_15.INIT1 = 16'ha695;
    defparam left_14__16__I_0_365_15.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_15.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_365_13 (.A0(\right[5] [1]), .B0(\right[13] [1]), 
          .C0(right_14__1__N_52[9]), .D0(right_14__1__N_51[9]), .A1(right_4__1__N_11[11]), 
          .B1(\right[13] [1]), .C1(right_14__1__N_52[10]), .D1(right_14__1__N_51[10]), 
          .CIN(n1204), .COUT(n1205), .S0(right_15__1__N_56[11]), .S1(right_15__1__N_56[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_13.INIT0 = 16'ha695;
    defparam left_14__16__I_0_365_13.INIT1 = 16'ha695;
    defparam left_14__16__I_0_365_13.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_13.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_365_11 (.A0(\right[7] [1]), .B0(\right[13] [1]), 
          .C0(right_14__1__N_52[7]), .D0(right_14__1__N_51[7]), .A1(\right[6] [1]), 
          .B1(\right[13] [1]), .C1(right_14__1__N_52[8]), .D1(right_14__1__N_51[8]), 
          .CIN(n1203), .COUT(n1204), .S0(right_15__1__N_56[9]), .S1(right_15__1__N_56[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_11.INIT0 = 16'ha695;
    defparam left_14__16__I_0_365_11.INIT1 = 16'ha695;
    defparam left_14__16__I_0_365_11.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_11.INJECT1_1 = "NO";
    IB num_pad_26 (.I(num[26]), .O(num_c_26));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_14__16__I_0_365_9 (.A0(\right[9] [1]), .B0(\right[13] [1]), 
          .C0(right_14__1__N_52[5]), .D0(right_14__1__N_51[5]), .A1(\right[8] [1]), 
          .B1(\right[13] [1]), .C1(right_14__1__N_52[6]), .D1(right_14__1__N_51[6]), 
          .CIN(n1202), .COUT(n1203), .S0(right_15__1__N_56[7]), .S1(right_15__1__N_56[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_9.INIT0 = 16'ha695;
    defparam left_14__16__I_0_365_9.INIT1 = 16'ha695;
    defparam left_14__16__I_0_365_9.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_9.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_365_7 (.A0(\right[11] [1]), .B0(\right[13] [1]), 
          .C0(right_14__1__N_52[3]), .D0(right_14__1__N_51[3]), .A1(\right[10] [1]), 
          .B1(\right[13] [1]), .C1(right_14__1__N_52[4]), .D1(right_14__1__N_51[4]), 
          .CIN(n1201), .COUT(n1202), .S0(right_15__1__N_56[5]), .S1(right_15__1__N_56[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_7.INIT0 = 16'ha695;
    defparam left_14__16__I_0_365_7.INIT1 = 16'ha695;
    defparam left_14__16__I_0_365_7.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_7.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_365_5 (.A0(result_c_3), .B0(right_14__1__N_52[1]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[1]), .A1(\right[12] [1]), 
          .B1(\right[13] [1]), .C1(right_14__1__N_52[2]), .D1(right_14__1__N_51[2]), 
          .CIN(n1200), .COUT(n1201), .S0(right_15__1__N_56[3]), .S1(right_15__1__N_56[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_5.INIT0 = 16'h656a;
    defparam left_14__16__I_0_365_5.INIT1 = 16'ha695;
    defparam left_14__16__I_0_365_5.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_5.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_365_3 (.A0(num_c_3), .B0(right_14__1__N_52[16]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[16]), .A1(\right[14] [1]), 
          .B1(\right[13] [1]), .C1(right_14__1__N_52[0]), .D1(right_14__1__N_51[0]), 
          .CIN(n1199), .COUT(n1200), .S0(right_15__1__N_56[1]), .S1(right_15__1__N_56[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_3.INIT0 = 16'h656a;
    defparam left_14__16__I_0_365_3.INIT1 = 16'ha695;
    defparam left_14__16__I_0_365_3.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_3.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_365_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1199), .S1(right_15__1__N_56[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_14__16__I_0_365_1.INIT0 = 16'h0000;
    defparam left_14__16__I_0_365_1.INIT1 = 16'h555a;
    defparam left_14__16__I_0_365_1.INJECT1_0 = "NO";
    defparam left_14__16__I_0_365_1.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_17 (.A0(\left[13] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[13] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1197), .S1(right_14__1__N_52[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_17.INIT0 = 16'haaaa;
    defparam left_13__16__I_0_364_17.INIT1 = 16'haaaa;
    defparam left_13__16__I_0_364_17.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_17.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_15 (.A0(right_2__1__N_3[5]), .B0(\right[12] [1]), 
          .C0(right_13__1__N_48[11]), .D0(right_13__1__N_47[11]), .A1(result_c_15), 
          .B1(right_13__1__N_48[12]), .C1(\right[12] [1]), .D1(right_13__1__N_47[12]), 
          .CIN(n1196), .COUT(n1197), .S0(right_14__1__N_52[13]), .S1(right_14__1__N_52[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_15.INIT0 = 16'ha695;
    defparam left_13__16__I_0_364_15.INIT1 = 16'h656a;
    defparam left_13__16__I_0_364_15.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_15.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_13 (.A0(right_4__1__N_11[11]), .B0(\right[12] [1]), 
          .C0(right_13__1__N_48[9]), .D0(right_13__1__N_47[9]), .A1(right_3__1__N_7[8]), 
          .B1(\right[12] [1]), .C1(right_13__1__N_48[10]), .D1(right_13__1__N_47[10]), 
          .CIN(n1195), .COUT(n1196), .S0(right_14__1__N_52[11]), .S1(right_14__1__N_52[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_13.INIT0 = 16'ha695;
    defparam left_13__16__I_0_364_13.INIT1 = 16'ha695;
    defparam left_13__16__I_0_364_13.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_13.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_11 (.A0(\right[6] [1]), .B0(\right[12] [1]), 
          .C0(right_13__1__N_48[7]), .D0(right_13__1__N_47[7]), .A1(\right[5] [1]), 
          .B1(\right[12] [1]), .C1(right_13__1__N_48[8]), .D1(right_13__1__N_47[8]), 
          .CIN(n1194), .COUT(n1195), .S0(right_14__1__N_52[9]), .S1(right_14__1__N_52[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_11.INIT0 = 16'ha695;
    defparam left_13__16__I_0_364_11.INIT1 = 16'ha695;
    defparam left_13__16__I_0_364_11.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_11.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_9 (.A0(\right[8] [1]), .B0(\right[12] [1]), 
          .C0(right_13__1__N_48[5]), .D0(right_13__1__N_47[5]), .A1(\right[7] [1]), 
          .B1(\right[12] [1]), .C1(right_13__1__N_48[6]), .D1(right_13__1__N_47[6]), 
          .CIN(n1193), .COUT(n1194), .S0(right_14__1__N_52[7]), .S1(right_14__1__N_52[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_9.INIT0 = 16'ha695;
    defparam left_13__16__I_0_364_9.INIT1 = 16'ha695;
    defparam left_13__16__I_0_364_9.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_9.INJECT1_1 = "NO";
    IB num_pad_27 (.I(num[27]), .O(num_c_27));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_13__16__I_0_364_7 (.A0(\right[10] [1]), .B0(\right[12] [1]), 
          .C0(right_13__1__N_48[3]), .D0(right_13__1__N_47[3]), .A1(\right[9] [1]), 
          .B1(\right[12] [1]), .C1(right_13__1__N_48[4]), .D1(right_13__1__N_47[4]), 
          .CIN(n1192), .COUT(n1193), .S0(right_14__1__N_52[5]), .S1(right_14__1__N_52[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_7.INIT0 = 16'ha695;
    defparam left_13__16__I_0_364_7.INIT1 = 16'ha695;
    defparam left_13__16__I_0_364_7.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_7.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_5 (.A0(result_c_4), .B0(right_13__1__N_48[1]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[1]), .A1(\right[11] [1]), 
          .B1(\right[12] [1]), .C1(right_13__1__N_48[2]), .D1(right_13__1__N_47[2]), 
          .CIN(n1191), .COUT(n1192), .S0(right_14__1__N_52[3]), .S1(right_14__1__N_52[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_5.INIT0 = 16'h656a;
    defparam left_13__16__I_0_364_5.INIT1 = 16'ha695;
    defparam left_13__16__I_0_364_5.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_5.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_3 (.A0(num_c_5), .B0(right_13__1__N_48[16]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[16]), .A1(\right[13] [1]), 
          .B1(\right[12] [1]), .C1(right_13__1__N_48[0]), .D1(right_13__1__N_47[0]), 
          .CIN(n1190), .COUT(n1191), .S0(right_14__1__N_52[1]), .S1(right_14__1__N_52[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_3.INIT0 = 16'h656a;
    defparam left_13__16__I_0_364_3.INIT1 = 16'ha695;
    defparam left_13__16__I_0_364_3.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_3.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_364_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1190), .S1(right_14__1__N_52[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_13__16__I_0_364_1.INIT0 = 16'h0000;
    defparam left_13__16__I_0_364_1.INIT1 = 16'h555a;
    defparam left_13__16__I_0_364_1.INJECT1_0 = "NO";
    defparam left_13__16__I_0_364_1.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_17 (.A0(\left[12] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[12] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1188), .S1(right_13__1__N_48[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_17.INIT0 = 16'haaaa;
    defparam left_12__16__I_0_363_17.INIT1 = 16'haaaa;
    defparam left_12__16__I_0_363_17.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_17.INJECT1_1 = "NO";
    IB num_pad_28 (.I(num[28]), .O(num_c_28));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_12__16__I_0_363_15 (.A0(result_c_15), .B0(right_12__1__N_44[11]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[11]), .A1(\left[12] [14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1187), .COUT(n1188), 
          .S0(right_13__1__N_48[13]), .S1(right_13__1__N_48[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_15.INIT0 = 16'h656a;
    defparam left_12__16__I_0_363_15.INIT1 = 16'haaaa;
    defparam left_12__16__I_0_363_15.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_15.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_13 (.A0(right_3__1__N_7[8]), .B0(\right[11] [1]), 
          .C0(right_12__1__N_44[9]), .D0(right_12__1__N_43[9]), .A1(right_2__1__N_3[5]), 
          .B1(\right[11] [1]), .C1(right_12__1__N_44[10]), .D1(right_12__1__N_43[10]), 
          .CIN(n1186), .COUT(n1187), .S0(right_13__1__N_48[11]), .S1(right_13__1__N_48[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_13.INIT0 = 16'ha695;
    defparam left_12__16__I_0_363_13.INIT1 = 16'ha695;
    defparam left_12__16__I_0_363_13.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_13.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_11 (.A0(\right[5] [1]), .B0(\right[11] [1]), 
          .C0(right_12__1__N_44[7]), .D0(right_12__1__N_43[7]), .A1(right_4__1__N_11[11]), 
          .B1(\right[11] [1]), .C1(right_12__1__N_44[8]), .D1(right_12__1__N_43[8]), 
          .CIN(n1185), .COUT(n1186), .S0(right_13__1__N_48[9]), .S1(right_13__1__N_48[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_11.INIT0 = 16'ha695;
    defparam left_12__16__I_0_363_11.INIT1 = 16'ha695;
    defparam left_12__16__I_0_363_11.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_11.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_9 (.A0(\right[7] [1]), .B0(\right[11] [1]), 
          .C0(right_12__1__N_44[5]), .D0(right_12__1__N_43[5]), .A1(\right[6] [1]), 
          .B1(\right[11] [1]), .C1(right_12__1__N_44[6]), .D1(right_12__1__N_43[6]), 
          .CIN(n1184), .COUT(n1185), .S0(right_13__1__N_48[7]), .S1(right_13__1__N_48[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_9.INIT0 = 16'ha695;
    defparam left_12__16__I_0_363_9.INIT1 = 16'ha695;
    defparam left_12__16__I_0_363_9.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_9.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_7 (.A0(\right[9] [1]), .B0(\right[11] [1]), 
          .C0(right_12__1__N_44[3]), .D0(right_12__1__N_43[3]), .A1(\right[8] [1]), 
          .B1(\right[11] [1]), .C1(right_12__1__N_44[4]), .D1(right_12__1__N_43[4]), 
          .CIN(n1183), .COUT(n1184), .S0(right_13__1__N_48[5]), .S1(right_13__1__N_48[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_7.INIT0 = 16'ha695;
    defparam left_12__16__I_0_363_7.INIT1 = 16'ha695;
    defparam left_12__16__I_0_363_7.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_7.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_5 (.A0(result_c_5), .B0(right_12__1__N_44[1]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[1]), .A1(\right[10] [1]), 
          .B1(\right[11] [1]), .C1(right_12__1__N_44[2]), .D1(right_12__1__N_43[2]), 
          .CIN(n1182), .COUT(n1183), .S0(right_13__1__N_48[3]), .S1(right_13__1__N_48[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_5.INIT0 = 16'h656a;
    defparam left_12__16__I_0_363_5.INIT1 = 16'ha695;
    defparam left_12__16__I_0_363_5.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_5.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_3 (.A0(num_c_7), .B0(right_12__1__N_44[16]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[16]), .A1(\right[12] [1]), 
          .B1(\right[11] [1]), .C1(right_12__1__N_44[0]), .D1(right_12__1__N_43[0]), 
          .CIN(n1181), .COUT(n1182), .S0(right_13__1__N_48[1]), .S1(right_13__1__N_48[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_3.INIT0 = 16'h656a;
    defparam left_12__16__I_0_363_3.INIT1 = 16'ha695;
    defparam left_12__16__I_0_363_3.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_3.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_363_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1181), .S1(right_13__1__N_48[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_12__16__I_0_363_1.INIT0 = 16'h0000;
    defparam left_12__16__I_0_363_1.INIT1 = 16'h555a;
    defparam left_12__16__I_0_363_1.INJECT1_0 = "NO";
    defparam left_12__16__I_0_363_1.INJECT1_1 = "NO";
    IB num_pad_29 (.I(num[29]), .O(num_c_29));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_1__16__I_0_add_2_7 (.A0(result_c_15), .B0(n968), .C0(n6), 
          .D0(\left[1] [16]), .A1(result_c_15), .B1(n968), .C1(n6), 
          .D1(\left[1] [16]), .CIN(n1179), .S0(right_2__1__N_3[4]), .S1(right_2__1__N_3[5]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_1__16__I_0_add_2_7.INIT0 = 16'h65aa;
    defparam left_1__16__I_0_add_2_7.INIT1 = 16'h65aa;
    defparam left_1__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_1__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_1__16__I_0_add_2_5 (.A0(GND_net), .B0(num_c_30), .C0(right_2__1__N_4[2]), 
          .D0(num_c_31), .A1(result_c_15), .B1(num_c_30), .C1(num_c_31), 
          .D1(right_2__1__N_4[3]), .CIN(n1178), .COUT(n1179), .S0(right_2__1__N_3[2]), 
          .S1(right_2__1__N_3[3]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_1__16__I_0_add_2_5.INIT0 = 16'h999a;
    defparam left_1__16__I_0_add_2_5.INIT1 = 16'h696a;
    defparam left_1__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_1__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_1__16__I_0_add_2_3 (.A0(result_c_15), .B0(result_c_15), .C0(right_2__1__N_4[0]), 
          .D0(num_c_28), .A1(result_c_15), .B1(\left[1] [16]), .C1(n1319), 
          .D1(num_c_29), .CIN(n1177), .COUT(n1178), .S0(right_2__1__N_3[0]), 
          .S1(right_2__1__N_3[1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_1__16__I_0_add_2_3.INIT0 = 16'h569a;
    defparam left_1__16__I_0_add_2_3.INIT1 = 16'hd1e2;
    defparam left_1__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_1__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_1__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(num_c_31), .B1(num_c_30), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1177));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_1__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_1__16__I_0_add_2_1.INIT1 = 16'hfff0;
    defparam left_1__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_1__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_17 (.A0(\left[11] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[11] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1172), .S1(right_12__1__N_44[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_17.INIT0 = 16'haaaa;
    defparam left_11__16__I_0_362_17.INIT1 = 16'haaaa;
    defparam left_11__16__I_0_362_17.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_17.INJECT1_1 = "NO";
    IB num_pad_30 (.I(num[30]), .O(num_c_30));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_11__16__I_0_362_15 (.A0(\left[11] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[11] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1171), .COUT(n1172), .S0(right_12__1__N_44[13]), 
          .S1(right_12__1__N_44[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_15.INIT0 = 16'haaaa;
    defparam left_11__16__I_0_362_15.INIT1 = 16'haaaa;
    defparam left_11__16__I_0_362_15.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_15.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_13 (.A0(right_2__1__N_3[5]), .B0(\right[10] [1]), 
          .C0(right_11__1__N_40[9]), .D0(right_11__1__N_39[9]), .A1(result_c_15), 
          .B1(right_11__1__N_40[10]), .C1(\right[10] [1]), .D1(right_11__1__N_39[10]), 
          .CIN(n1170), .COUT(n1171), .S0(right_12__1__N_44[11]), .S1(right_12__1__N_44[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_13.INIT0 = 16'ha695;
    defparam left_11__16__I_0_362_13.INIT1 = 16'h656a;
    defparam left_11__16__I_0_362_13.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_13.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_11 (.A0(right_4__1__N_11[11]), .B0(\right[10] [1]), 
          .C0(right_11__1__N_40[7]), .D0(right_11__1__N_39[7]), .A1(right_3__1__N_7[8]), 
          .B1(\right[10] [1]), .C1(right_11__1__N_40[8]), .D1(right_11__1__N_39[8]), 
          .CIN(n1169), .COUT(n1170), .S0(right_12__1__N_44[9]), .S1(right_12__1__N_44[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_11.INIT0 = 16'ha695;
    defparam left_11__16__I_0_362_11.INIT1 = 16'ha695;
    defparam left_11__16__I_0_362_11.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_11.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_9 (.A0(\right[6] [1]), .B0(\right[10] [1]), 
          .C0(right_11__1__N_40[5]), .D0(right_11__1__N_39[5]), .A1(\right[5] [1]), 
          .B1(\right[10] [1]), .C1(right_11__1__N_40[6]), .D1(right_11__1__N_39[6]), 
          .CIN(n1168), .COUT(n1169), .S0(right_12__1__N_44[7]), .S1(right_12__1__N_44[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_9.INIT0 = 16'ha695;
    defparam left_11__16__I_0_362_9.INIT1 = 16'ha695;
    defparam left_11__16__I_0_362_9.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_9.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_7 (.A0(\right[8] [1]), .B0(\right[10] [1]), 
          .C0(right_11__1__N_40[3]), .D0(right_11__1__N_39[3]), .A1(\right[7] [1]), 
          .B1(\right[10] [1]), .C1(right_11__1__N_40[4]), .D1(right_11__1__N_39[4]), 
          .CIN(n1167), .COUT(n1168), .S0(right_12__1__N_44[5]), .S1(right_12__1__N_44[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_7.INIT0 = 16'ha695;
    defparam left_11__16__I_0_362_7.INIT1 = 16'ha695;
    defparam left_11__16__I_0_362_7.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_7.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_5 (.A0(result_c_6), .B0(right_11__1__N_40[1]), 
          .C0(\right[10] [1]), .D0(right_11__1__N_39[1]), .A1(\right[9] [1]), 
          .B1(\right[10] [1]), .C1(right_11__1__N_40[2]), .D1(right_11__1__N_39[2]), 
          .CIN(n1166), .COUT(n1167), .S0(right_12__1__N_44[3]), .S1(right_12__1__N_44[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_5.INIT0 = 16'h656a;
    defparam left_11__16__I_0_362_5.INIT1 = 16'ha695;
    defparam left_11__16__I_0_362_5.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_5.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_3 (.A0(num_c_9), .B0(right_11__1__N_40[16]), 
          .C0(\right[10] [1]), .D0(right_11__1__N_39[16]), .A1(\right[11] [1]), 
          .B1(\right[10] [1]), .C1(right_11__1__N_40[0]), .D1(right_11__1__N_39[0]), 
          .CIN(n1165), .COUT(n1166), .S0(right_12__1__N_44[1]), .S1(right_12__1__N_44[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_3.INIT0 = 16'h656a;
    defparam left_11__16__I_0_362_3.INIT1 = 16'ha695;
    defparam left_11__16__I_0_362_3.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_3.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_362_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1165), .S1(right_12__1__N_44[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_11__16__I_0_362_1.INIT0 = 16'h0000;
    defparam left_11__16__I_0_362_1.INIT1 = 16'h555a;
    defparam left_11__16__I_0_362_1.INJECT1_0 = "NO";
    defparam left_11__16__I_0_362_1.INJECT1_1 = "NO";
    IB num_pad_31 (.I(num[31]), .O(num_c_31));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(5[24:27])
    CCU2C left_10__16__I_0_361_17 (.A0(\left[10] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[10] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1163), .S1(right_11__1__N_40[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_17.INIT0 = 16'haaaa;
    defparam left_10__16__I_0_361_17.INIT1 = 16'haaaa;
    defparam left_10__16__I_0_361_17.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_17.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_361_15 (.A0(\left[10] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[10] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1162), .COUT(n1163), .S0(right_11__1__N_40[13]), 
          .S1(right_11__1__N_40[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_15.INIT0 = 16'haaaa;
    defparam left_10__16__I_0_361_15.INIT1 = 16'haaaa;
    defparam left_10__16__I_0_361_15.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_15.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_361_13 (.A0(result_c_15), .B0(right_10__1__N_36[9]), 
          .C0(\right[9] [1]), .D0(right_10__1__N_35[9]), .A1(\left[10] [12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1161), .COUT(n1162), 
          .S0(right_11__1__N_40[11]), .S1(right_11__1__N_40[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_13.INIT0 = 16'h656a;
    defparam left_10__16__I_0_361_13.INIT1 = 16'haaaa;
    defparam left_10__16__I_0_361_13.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_13.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_361_11 (.A0(right_3__1__N_7[8]), .B0(\right[9] [1]), 
          .C0(right_10__1__N_36[7]), .D0(right_10__1__N_35[7]), .A1(right_2__1__N_3[5]), 
          .B1(\right[9] [1]), .C1(right_10__1__N_36[8]), .D1(right_10__1__N_35[8]), 
          .CIN(n1160), .COUT(n1161), .S0(right_11__1__N_40[9]), .S1(right_11__1__N_40[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_11.INIT0 = 16'ha695;
    defparam left_10__16__I_0_361_11.INIT1 = 16'ha695;
    defparam left_10__16__I_0_361_11.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_11.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_361_9 (.A0(\right[5] [1]), .B0(\right[9] [1]), 
          .C0(right_10__1__N_36[5]), .D0(right_10__1__N_35[5]), .A1(right_4__1__N_11[11]), 
          .B1(\right[9] [1]), .C1(right_10__1__N_36[6]), .D1(right_10__1__N_35[6]), 
          .CIN(n1159), .COUT(n1160), .S0(right_11__1__N_40[7]), .S1(right_11__1__N_40[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_9.INIT0 = 16'ha695;
    defparam left_10__16__I_0_361_9.INIT1 = 16'ha695;
    defparam left_10__16__I_0_361_9.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_9.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_361_7 (.A0(\right[7] [1]), .B0(\right[9] [1]), 
          .C0(right_10__1__N_36[3]), .D0(right_10__1__N_35[3]), .A1(\right[6] [1]), 
          .B1(\right[9] [1]), .C1(right_10__1__N_36[4]), .D1(right_10__1__N_35[4]), 
          .CIN(n1158), .COUT(n1159), .S0(right_11__1__N_40[5]), .S1(right_11__1__N_40[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_7.INIT0 = 16'ha695;
    defparam left_10__16__I_0_361_7.INIT1 = 16'ha695;
    defparam left_10__16__I_0_361_7.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_7.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_361_5 (.A0(result_c_7), .B0(right_10__1__N_36[1]), 
          .C0(\right[9] [1]), .D0(right_10__1__N_35[1]), .A1(\right[8] [1]), 
          .B1(\right[9] [1]), .C1(right_10__1__N_36[2]), .D1(right_10__1__N_35[2]), 
          .CIN(n1157), .COUT(n1158), .S0(right_11__1__N_40[3]), .S1(right_11__1__N_40[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_5.INIT0 = 16'h656a;
    defparam left_10__16__I_0_361_5.INIT1 = 16'ha695;
    defparam left_10__16__I_0_361_5.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_5.INJECT1_1 = "NO";
    OB result_pad_0 (.I(\r[16] [16]), .O(result[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_10__16__I_0_361_3 (.A0(num_c_11), .B0(right_10__1__N_36[16]), 
          .C0(\right[9] [1]), .D0(right_10__1__N_35[16]), .A1(\right[10] [1]), 
          .B1(\right[9] [1]), .C1(right_10__1__N_36[0]), .D1(right_10__1__N_35[0]), 
          .CIN(n1156), .COUT(n1157), .S0(right_11__1__N_40[1]), .S1(right_11__1__N_40[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_3.INIT0 = 16'h656a;
    defparam left_10__16__I_0_361_3.INIT1 = 16'ha695;
    defparam left_10__16__I_0_361_3.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_3.INJECT1_1 = "NO";
    CCU2C left_10__16__I_0_361_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1156), .S1(right_11__1__N_40[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_10__16__I_0_361_1.INIT0 = 16'h0000;
    defparam left_10__16__I_0_361_1.INIT1 = 16'h555a;
    defparam left_10__16__I_0_361_1.INJECT1_0 = "NO";
    defparam left_10__16__I_0_361_1.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_17 (.A0(\left[9] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[9] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1154), .S1(right_10__1__N_36[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_17.INIT0 = 16'haaaa;
    defparam left_9__16__I_0_360_17.INIT1 = 16'haaaa;
    defparam left_9__16__I_0_360_17.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_17.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_15 (.A0(\left[9] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[9] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1153), .COUT(n1154), .S0(right_10__1__N_36[13]), 
          .S1(right_10__1__N_36[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_15.INIT0 = 16'haaaa;
    defparam left_9__16__I_0_360_15.INIT1 = 16'haaaa;
    defparam left_9__16__I_0_360_15.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_15.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_13 (.A0(\left[9] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[9] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1152), .COUT(n1153), .S0(right_10__1__N_36[11]), 
          .S1(right_10__1__N_36[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_13.INIT0 = 16'haaaa;
    defparam left_9__16__I_0_360_13.INIT1 = 16'haaaa;
    defparam left_9__16__I_0_360_13.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_13.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_11 (.A0(right_2__1__N_3[5]), .B0(\right[8] [1]), 
          .C0(right_9__1__N_32[7]), .D0(right_9__1__N_31[7]), .A1(result_c_15), 
          .B1(right_9__1__N_32[8]), .C1(\right[8] [1]), .D1(right_9__1__N_31[8]), 
          .CIN(n1151), .COUT(n1152), .S0(right_10__1__N_36[9]), .S1(right_10__1__N_36[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_11.INIT0 = 16'ha695;
    defparam left_9__16__I_0_360_11.INIT1 = 16'h656a;
    defparam left_9__16__I_0_360_11.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_11.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_9 (.A0(right_4__1__N_11[11]), .B0(\right[8] [1]), 
          .C0(right_9__1__N_32[5]), .D0(right_9__1__N_31[5]), .A1(right_3__1__N_7[8]), 
          .B1(\right[8] [1]), .C1(right_9__1__N_32[6]), .D1(right_9__1__N_31[6]), 
          .CIN(n1150), .COUT(n1151), .S0(right_10__1__N_36[7]), .S1(right_10__1__N_36[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_9.INIT0 = 16'ha695;
    defparam left_9__16__I_0_360_9.INIT1 = 16'ha695;
    defparam left_9__16__I_0_360_9.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_9.INJECT1_1 = "NO";
    OB result_pad_1 (.I(result_c_1), .O(result[1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_9__16__I_0_360_7 (.A0(\right[6] [1]), .B0(\right[8] [1]), 
          .C0(right_9__1__N_32[3]), .D0(right_9__1__N_31[3]), .A1(\right[5] [1]), 
          .B1(\right[8] [1]), .C1(right_9__1__N_32[4]), .D1(right_9__1__N_31[4]), 
          .CIN(n1149), .COUT(n1150), .S0(right_10__1__N_36[5]), .S1(right_10__1__N_36[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_7.INIT0 = 16'ha695;
    defparam left_9__16__I_0_360_7.INIT1 = 16'ha695;
    defparam left_9__16__I_0_360_7.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_7.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_5 (.A0(result_c_8), .B0(right_9__1__N_32[1]), 
          .C0(\right[8] [1]), .D0(right_9__1__N_31[1]), .A1(\right[7] [1]), 
          .B1(\right[8] [1]), .C1(right_9__1__N_32[2]), .D1(right_9__1__N_31[2]), 
          .CIN(n1148), .COUT(n1149), .S0(right_10__1__N_36[3]), .S1(right_10__1__N_36[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_5.INIT0 = 16'h656a;
    defparam left_9__16__I_0_360_5.INIT1 = 16'ha695;
    defparam left_9__16__I_0_360_5.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_5.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_3 (.A0(num_c_13), .B0(right_9__1__N_32[16]), 
          .C0(\right[8] [1]), .D0(right_9__1__N_31[16]), .A1(\right[9] [1]), 
          .B1(\right[8] [1]), .C1(right_9__1__N_32[0]), .D1(right_9__1__N_31[0]), 
          .CIN(n1147), .COUT(n1148), .S0(right_10__1__N_36[1]), .S1(right_10__1__N_36[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_3.INIT0 = 16'h656a;
    defparam left_9__16__I_0_360_3.INIT1 = 16'ha695;
    defparam left_9__16__I_0_360_3.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_3.INJECT1_1 = "NO";
    CCU2C left_9__16__I_0_360_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1147), .S1(right_10__1__N_36[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_9__16__I_0_360_1.INIT0 = 16'h0000;
    defparam left_9__16__I_0_360_1.INIT1 = 16'h555a;
    defparam left_9__16__I_0_360_1.INJECT1_0 = "NO";
    defparam left_9__16__I_0_360_1.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_17 (.A0(\left[8] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[8] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1145), .S1(right_9__1__N_32[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_17.INIT0 = 16'haaaa;
    defparam left_8__16__I_0_359_17.INIT1 = 16'haaaa;
    defparam left_8__16__I_0_359_17.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_17.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_15 (.A0(\left[8] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[8] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1144), .COUT(n1145), .S0(right_9__1__N_32[13]), 
          .S1(right_9__1__N_32[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_15.INIT0 = 16'haaaa;
    defparam left_8__16__I_0_359_15.INIT1 = 16'haaaa;
    defparam left_8__16__I_0_359_15.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_15.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_13 (.A0(\left[8] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[8] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1143), .COUT(n1144), .S0(right_9__1__N_32[11]), 
          .S1(right_9__1__N_32[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_13.INIT0 = 16'haaaa;
    defparam left_8__16__I_0_359_13.INIT1 = 16'haaaa;
    defparam left_8__16__I_0_359_13.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_13.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_11 (.A0(result_c_15), .B0(right_8__1__N_28[7]), 
          .C0(\right[7] [1]), .D0(right_8__1__N_27[7]), .A1(\left[8] [10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1142), .COUT(n1143), 
          .S0(right_9__1__N_32[9]), .S1(right_9__1__N_32[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_11.INIT0 = 16'h656a;
    defparam left_8__16__I_0_359_11.INIT1 = 16'haaaa;
    defparam left_8__16__I_0_359_11.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_11.INJECT1_1 = "NO";
    OB result_pad_2 (.I(result_c_2), .O(result[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_8__16__I_0_359_9 (.A0(right_3__1__N_7[8]), .B0(\right[7] [1]), 
          .C0(right_8__1__N_28[5]), .D0(right_8__1__N_27[5]), .A1(right_2__1__N_3[5]), 
          .B1(\right[7] [1]), .C1(right_8__1__N_28[6]), .D1(right_8__1__N_27[6]), 
          .CIN(n1141), .COUT(n1142), .S0(right_9__1__N_32[7]), .S1(right_9__1__N_32[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_9.INIT0 = 16'ha695;
    defparam left_8__16__I_0_359_9.INIT1 = 16'ha695;
    defparam left_8__16__I_0_359_9.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_9.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_7 (.A0(\right[5] [1]), .B0(\right[7] [1]), 
          .C0(right_8__1__N_28[3]), .D0(right_8__1__N_27[3]), .A1(right_4__1__N_11[11]), 
          .B1(\right[7] [1]), .C1(right_8__1__N_28[4]), .D1(right_8__1__N_27[4]), 
          .CIN(n1140), .COUT(n1141), .S0(right_9__1__N_32[5]), .S1(right_9__1__N_32[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_7.INIT0 = 16'ha695;
    defparam left_8__16__I_0_359_7.INIT1 = 16'ha695;
    defparam left_8__16__I_0_359_7.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_7.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_5 (.A0(result_c_9), .B0(right_8__1__N_28[1]), 
          .C0(\right[7] [1]), .D0(right_8__1__N_27[1]), .A1(\right[6] [1]), 
          .B1(\right[7] [1]), .C1(right_8__1__N_28[2]), .D1(right_8__1__N_27[2]), 
          .CIN(n1139), .COUT(n1140), .S0(right_9__1__N_32[3]), .S1(right_9__1__N_32[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_5.INIT0 = 16'h656a;
    defparam left_8__16__I_0_359_5.INIT1 = 16'ha695;
    defparam left_8__16__I_0_359_5.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_5.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_3 (.A0(num_c_15), .B0(right_8__1__N_28[16]), 
          .C0(\right[7] [1]), .D0(right_8__1__N_27[16]), .A1(\right[8] [1]), 
          .B1(\right[7] [1]), .C1(right_8__1__N_28[0]), .D1(right_8__1__N_27[0]), 
          .CIN(n1138), .COUT(n1139), .S0(right_9__1__N_32[1]), .S1(right_9__1__N_32[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_3.INIT0 = 16'h656a;
    defparam left_8__16__I_0_359_3.INIT1 = 16'ha695;
    defparam left_8__16__I_0_359_3.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_3.INJECT1_1 = "NO";
    CCU2C left_8__16__I_0_359_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1138), .S1(right_9__1__N_32[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_8__16__I_0_359_1.INIT0 = 16'h0000;
    defparam left_8__16__I_0_359_1.INIT1 = 16'h555a;
    defparam left_8__16__I_0_359_1.INJECT1_0 = "NO";
    defparam left_8__16__I_0_359_1.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_17 (.A0(\left[7] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1136), .S1(right_8__1__N_28[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_17.INIT0 = 16'haaaa;
    defparam left_7__16__I_0_358_17.INIT1 = 16'haaaa;
    defparam left_7__16__I_0_358_17.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_17.INJECT1_1 = "NO";
    OB result_pad_3 (.I(result_c_3), .O(result[3]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_7__16__I_0_358_15 (.A0(\left[7] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1135), .COUT(n1136), .S0(right_8__1__N_28[13]), 
          .S1(right_8__1__N_28[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_15.INIT0 = 16'haaaa;
    defparam left_7__16__I_0_358_15.INIT1 = 16'haaaa;
    defparam left_7__16__I_0_358_15.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_15.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_13 (.A0(\left[7] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1134), .COUT(n1135), .S0(right_8__1__N_28[11]), 
          .S1(right_8__1__N_28[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_13.INIT0 = 16'haaaa;
    defparam left_7__16__I_0_358_13.INIT1 = 16'haaaa;
    defparam left_7__16__I_0_358_13.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_13.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_11 (.A0(\left[7] [9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[7] [10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1133), .COUT(n1134), .S0(right_8__1__N_28[9]), 
          .S1(right_8__1__N_28[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_11.INIT0 = 16'haaaa;
    defparam left_7__16__I_0_358_11.INIT1 = 16'haaaa;
    defparam left_7__16__I_0_358_11.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_11.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_9 (.A0(right_2__1__N_3[5]), .B0(\right[6] [1]), 
          .C0(right_7__1__N_24[5]), .D0(right_7__1__N_23[5]), .A1(result_c_15), 
          .B1(right_7__1__N_24[6]), .C1(\right[6] [1]), .D1(right_7__1__N_23[6]), 
          .CIN(n1132), .COUT(n1133), .S0(right_8__1__N_28[7]), .S1(right_8__1__N_28[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_9.INIT0 = 16'ha695;
    defparam left_7__16__I_0_358_9.INIT1 = 16'h656a;
    defparam left_7__16__I_0_358_9.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_9.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_7 (.A0(right_4__1__N_11[11]), .B0(\right[6] [1]), 
          .C0(right_7__1__N_24[3]), .D0(right_7__1__N_23[3]), .A1(right_3__1__N_7[8]), 
          .B1(\right[6] [1]), .C1(right_7__1__N_24[4]), .D1(right_7__1__N_23[4]), 
          .CIN(n1131), .COUT(n1132), .S0(right_8__1__N_28[5]), .S1(right_8__1__N_28[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_7.INIT0 = 16'ha695;
    defparam left_7__16__I_0_358_7.INIT1 = 16'ha695;
    defparam left_7__16__I_0_358_7.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_7.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_5 (.A0(result_c_10), .B0(right_7__1__N_24[1]), 
          .C0(\right[6] [1]), .D0(right_7__1__N_23[1]), .A1(\right[5] [1]), 
          .B1(\right[6] [1]), .C1(right_7__1__N_24[2]), .D1(right_7__1__N_23[2]), 
          .CIN(n1130), .COUT(n1131), .S0(right_8__1__N_28[3]), .S1(right_8__1__N_28[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_5.INIT0 = 16'h656a;
    defparam left_7__16__I_0_358_5.INIT1 = 16'ha695;
    defparam left_7__16__I_0_358_5.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_5.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_3 (.A0(num_c_17), .B0(right_7__1__N_24[16]), 
          .C0(\right[6] [1]), .D0(right_7__1__N_23[16]), .A1(\right[7] [1]), 
          .B1(\right[6] [1]), .C1(right_7__1__N_24[0]), .D1(right_7__1__N_23[0]), 
          .CIN(n1129), .COUT(n1130), .S0(right_8__1__N_28[1]), .S1(right_8__1__N_28[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_3.INIT0 = 16'h656a;
    defparam left_7__16__I_0_358_3.INIT1 = 16'ha695;
    defparam left_7__16__I_0_358_3.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_3.INJECT1_1 = "NO";
    CCU2C left_7__16__I_0_358_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1129), .S1(right_8__1__N_28[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_7__16__I_0_358_1.INIT0 = 16'h0000;
    defparam left_7__16__I_0_358_1.INIT1 = 16'h555a;
    defparam left_7__16__I_0_358_1.INJECT1_0 = "NO";
    defparam left_7__16__I_0_358_1.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_357_17 (.A0(\left[6] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1127), .S1(right_7__1__N_24[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_17.INIT0 = 16'haaaa;
    defparam left_6__16__I_0_357_17.INIT1 = 16'haaaa;
    defparam left_6__16__I_0_357_17.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_17.INJECT1_1 = "NO";
    OB result_pad_4 (.I(result_c_4), .O(result[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_6__16__I_0_357_15 (.A0(\left[6] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1126), .COUT(n1127), .S0(right_7__1__N_24[13]), 
          .S1(right_7__1__N_24[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_15.INIT0 = 16'haaaa;
    defparam left_6__16__I_0_357_15.INIT1 = 16'haaaa;
    defparam left_6__16__I_0_357_15.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_15.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_357_13 (.A0(\left[6] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1125), .COUT(n1126), .S0(right_7__1__N_24[11]), 
          .S1(right_7__1__N_24[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_13.INIT0 = 16'haaaa;
    defparam left_6__16__I_0_357_13.INIT1 = 16'haaaa;
    defparam left_6__16__I_0_357_13.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_13.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_357_11 (.A0(\left[6] [9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[6] [10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1124), .COUT(n1125), .S0(right_7__1__N_24[9]), 
          .S1(right_7__1__N_24[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_11.INIT0 = 16'haaaa;
    defparam left_6__16__I_0_357_11.INIT1 = 16'haaaa;
    defparam left_6__16__I_0_357_11.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_11.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_357_9 (.A0(result_c_15), .B0(right_6__1__N_20[5]), 
          .C0(\right[5] [1]), .D0(right_6__1__N_19[5]), .A1(\left[6] [8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1123), .COUT(n1124), 
          .S0(right_7__1__N_24[7]), .S1(right_7__1__N_24[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_9.INIT0 = 16'h656a;
    defparam left_6__16__I_0_357_9.INIT1 = 16'haaaa;
    defparam left_6__16__I_0_357_9.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_9.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_357_7 (.A0(right_3__1__N_7[8]), .B0(\right[5] [1]), 
          .C0(right_6__1__N_20[3]), .D0(right_6__1__N_19[3]), .A1(right_2__1__N_3[5]), 
          .B1(\right[5] [1]), .C1(right_6__1__N_20[4]), .D1(right_6__1__N_19[4]), 
          .CIN(n1122), .COUT(n1123), .S0(right_7__1__N_24[5]), .S1(right_7__1__N_24[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_7.INIT0 = 16'ha695;
    defparam left_6__16__I_0_357_7.INIT1 = 16'ha695;
    defparam left_6__16__I_0_357_7.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_7.INJECT1_1 = "NO";
    OB result_pad_5 (.I(result_c_5), .O(result[5]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_6__16__I_0_357_5 (.A0(result_c_11), .B0(right_6__1__N_20[1]), 
          .C0(\right[5] [1]), .D0(right_6__1__N_19[1]), .A1(right_4__1__N_11[11]), 
          .B1(\right[5] [1]), .C1(right_6__1__N_20[2]), .D1(right_6__1__N_19[2]), 
          .CIN(n1121), .COUT(n1122), .S0(right_7__1__N_24[3]), .S1(right_7__1__N_24[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_5.INIT0 = 16'h656a;
    defparam left_6__16__I_0_357_5.INIT1 = 16'ha695;
    defparam left_6__16__I_0_357_5.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_5.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_357_3 (.A0(num_c_19), .B0(right_6__1__N_20[16]), 
          .C0(\right[5] [1]), .D0(right_6__1__N_19[16]), .A1(\right[6] [1]), 
          .B1(\right[5] [1]), .C1(right_6__1__N_20[0]), .D1(right_6__1__N_19[0]), 
          .CIN(n1120), .COUT(n1121), .S0(right_7__1__N_24[1]), .S1(right_7__1__N_24[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_3.INIT0 = 16'h656a;
    defparam left_6__16__I_0_357_3.INIT1 = 16'ha695;
    defparam left_6__16__I_0_357_3.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_3.INJECT1_1 = "NO";
    CCU2C left_6__16__I_0_357_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1120), .S1(right_7__1__N_24[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_6__16__I_0_357_1.INIT0 = 16'h0000;
    defparam left_6__16__I_0_357_1.INIT1 = 16'h555a;
    defparam left_6__16__I_0_357_1.INJECT1_0 = "NO";
    defparam left_6__16__I_0_357_1.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_353_9 (.A0(right_2__1__N_3[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_2__1__N_3[5]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1118), .S0(right_3__1__N_8[7]), 
          .S1(right_3__1__N_8[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_2__16__I_0_353_9.INIT0 = 16'haaaa;
    defparam left_2__16__I_0_353_9.INIT1 = 16'haaaa;
    defparam left_2__16__I_0_353_9.INJECT1_0 = "NO";
    defparam left_2__16__I_0_353_9.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_353_7 (.A0(right_2__1__N_3[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_2__1__N_3[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1117), .COUT(n1118), .S0(right_3__1__N_8[5]), 
          .S1(right_3__1__N_8[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_2__16__I_0_353_7.INIT0 = 16'haaaa;
    defparam left_2__16__I_0_353_7.INIT1 = 16'haaaa;
    defparam left_2__16__I_0_353_7.INJECT1_0 = "NO";
    defparam left_2__16__I_0_353_7.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_353_5 (.A0(num_c_31), .B0(num_c_30), .C0(right_2__1__N_3[1]), 
          .D0(VCC_net), .A1(right_2__1__N_3[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1116), .COUT(n1117), .S0(right_3__1__N_8[3]), 
          .S1(right_3__1__N_8[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_2__16__I_0_353_5.INIT0 = 16'h1e1e;
    defparam left_2__16__I_0_353_5.INIT1 = 16'haaaa;
    defparam left_2__16__I_0_353_5.INJECT1_0 = "NO";
    defparam left_2__16__I_0_353_5.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_353_3 (.A0(num_c_27), .B0(right_2__1__N_3[5]), 
          .C0(GND_net), .D0(VCC_net), .A1(right_2__1__N_3[0]), .B1(right_2__1__N_3[5]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1115), .COUT(n1116), .S0(right_3__1__N_8[1]), 
          .S1(right_3__1__N_8[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_2__16__I_0_353_3.INIT0 = 16'h666a;
    defparam left_2__16__I_0_353_3.INIT1 = 16'h999a;
    defparam left_2__16__I_0_353_3.INJECT1_0 = "NO";
    defparam left_2__16__I_0_353_3.INJECT1_1 = "NO";
    CCU2C left_2__16__I_0_353_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1115), .S1(right_3__1__N_8[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_2__16__I_0_353_1.INIT0 = 16'h0000;
    defparam left_2__16__I_0_353_1.INIT1 = 16'h555a;
    defparam left_2__16__I_0_353_1.INJECT1_0 = "NO";
    defparam left_2__16__I_0_353_1.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_356_17 (.A0(\left[5] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[5] [1]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1113), .S1(right_6__1__N_20[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_17.INIT0 = 16'haaaa;
    defparam left_5__16__I_0_356_17.INIT1 = 16'haaaa;
    defparam left_5__16__I_0_356_17.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_17.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_356_15 (.A0(\left[5] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1112), .COUT(n1113), .S0(right_6__1__N_20[13]), 
          .S1(right_6__1__N_20[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_15.INIT0 = 16'haaaa;
    defparam left_5__16__I_0_356_15.INIT1 = 16'haaaa;
    defparam left_5__16__I_0_356_15.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_15.INJECT1_1 = "NO";
    OB result_pad_6 (.I(result_c_6), .O(result[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_5__16__I_0_356_13 (.A0(\left[5] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1111), .COUT(n1112), .S0(right_6__1__N_20[11]), 
          .S1(right_6__1__N_20[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_13.INIT0 = 16'haaaa;
    defparam left_5__16__I_0_356_13.INIT1 = 16'haaaa;
    defparam left_5__16__I_0_356_13.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_13.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_356_11 (.A0(\left[5] [9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1110), .COUT(n1111), .S0(right_6__1__N_20[9]), 
          .S1(right_6__1__N_20[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_11.INIT0 = 16'haaaa;
    defparam left_5__16__I_0_356_11.INIT1 = 16'haaaa;
    defparam left_5__16__I_0_356_11.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_11.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_356_9 (.A0(\left[5] [7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1109), .COUT(n1110), .S0(right_6__1__N_20[7]), 
          .S1(right_6__1__N_20[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_9.INIT0 = 16'haaaa;
    defparam left_5__16__I_0_356_9.INIT1 = 16'haaaa;
    defparam left_5__16__I_0_356_9.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_9.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_356_7 (.A0(right_2__1__N_3[5]), .B0(right_4__1__N_11[11]), 
          .C0(right_5__1__N_16[3]), .D0(right_5__1__N_15[3]), .A1(result_c_15), 
          .B1(right_5__1__N_16[4]), .C1(right_4__1__N_11[11]), .D1(right_5__1__N_15[4]), 
          .CIN(n1108), .COUT(n1109), .S0(right_6__1__N_20[5]), .S1(right_6__1__N_20[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_7.INIT0 = 16'ha695;
    defparam left_5__16__I_0_356_7.INIT1 = 16'h656a;
    defparam left_5__16__I_0_356_7.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_7.INJECT1_1 = "NO";
    OB result_pad_7 (.I(result_c_7), .O(result[7]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_5__16__I_0_356_5 (.A0(result_c_12), .B0(right_5__1__N_16[1]), 
          .C0(right_4__1__N_11[11]), .D0(right_5__1__N_15[1]), .A1(right_3__1__N_7[8]), 
          .B1(right_4__1__N_11[11]), .C1(right_5__1__N_16[2]), .D1(right_5__1__N_15[2]), 
          .CIN(n1107), .COUT(n1108), .S0(right_6__1__N_20[3]), .S1(right_6__1__N_20[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_5.INIT0 = 16'h656a;
    defparam left_5__16__I_0_356_5.INIT1 = 16'ha695;
    defparam left_5__16__I_0_356_5.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_5.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_356_3 (.A0(num_c_21), .B0(right_5__1__N_16[14]), 
          .C0(right_4__1__N_11[11]), .D0(right_5__1__N_15[14]), .A1(\right[5] [1]), 
          .B1(right_4__1__N_11[11]), .C1(right_5__1__N_16[0]), .D1(right_5__1__N_15[0]), 
          .CIN(n1106), .COUT(n1107), .S0(right_6__1__N_20[1]), .S1(right_6__1__N_20[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_3.INIT0 = 16'h656a;
    defparam left_5__16__I_0_356_3.INIT1 = 16'ha695;
    defparam left_5__16__I_0_356_3.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_3.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_356_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1106), .S1(right_6__1__N_20[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_5__16__I_0_356_1.INIT0 = 16'h0000;
    defparam left_5__16__I_0_356_1.INIT1 = 16'h555a;
    defparam left_5__16__I_0_356_1.INJECT1_0 = "NO";
    defparam left_5__16__I_0_356_1.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_15 (.A0(right_4__1__N_11[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[11]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1104), .S0(right_5__1__N_15[13]), 
          .S1(right_5__1__N_15[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_4__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_4__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_13 (.A0(right_4__1__N_11[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1103), .COUT(n1104), .S0(right_5__1__N_15[11]), 
          .S1(right_5__1__N_15[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_13.INIT0 = 16'h555a;
    defparam left_4__16__I_0_add_2_13.INIT1 = 16'h555a;
    defparam left_4__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_11 (.A0(right_4__1__N_11[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1102), .COUT(n1103), .S0(right_5__1__N_15[9]), 
          .S1(right_5__1__N_15[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_11.INIT0 = 16'h555a;
    defparam left_4__16__I_0_add_2_11.INIT1 = 16'h555a;
    defparam left_4__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_9 (.A0(right_4__1__N_11[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1101), .COUT(n1102), .S0(right_5__1__N_15[7]), 
          .S1(right_5__1__N_15[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_9.INIT0 = 16'h555a;
    defparam left_4__16__I_0_add_2_9.INIT1 = 16'h555a;
    defparam left_4__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_7 (.A0(num_c_31), .B0(num_c_30), .C0(right_4__1__N_11[3]), 
          .D0(VCC_net), .A1(right_4__1__N_11[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1100), .COUT(n1101), .S0(right_5__1__N_15[5]), 
          .S1(right_5__1__N_15[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_7.INIT0 = 16'he1e1;
    defparam left_4__16__I_0_add_2_7.INIT1 = 16'h555a;
    defparam left_4__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_5 (.A0(right_4__1__N_11[1]), .B0(right_3__1__N_7[8]), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[2]), .B1(right_2__1__N_3[5]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1099), .COUT(n1100), .S0(right_5__1__N_15[3]), 
          .S1(right_5__1__N_15[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_5.INIT0 = 16'h666a;
    defparam left_4__16__I_0_add_2_5.INIT1 = 16'h666a;
    defparam left_4__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_3 (.A0(num_c_23), .B0(right_4__1__N_11[11]), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[0]), .B1(right_4__1__N_11[11]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1098), .COUT(n1099), .S0(right_5__1__N_15[1]), 
          .S1(right_5__1__N_15[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_4__16__I_0_add_2_3.INIT1 = 16'h666a;
    defparam left_4__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1098), .S1(right_5__1__N_15[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_4__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_4__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_4__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_4__16__I_0_add_2_1.INJECT1_1 = "NO";
    OB result_pad_8 (.I(result_c_8), .O(result[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_5__16__I_0_add_2_17 (.A0(\left[5] [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[5] [1]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1096), .S1(right_6__1__N_19[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_5__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_5__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_add_2_15 (.A0(\left[5] [13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1095), .COUT(n1096), .S0(right_6__1__N_19[13]), 
          .S1(right_6__1__N_19[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_5__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_5__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_add_2_13 (.A0(\left[5] [11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1094), .COUT(n1095), .S0(right_6__1__N_19[11]), 
          .S1(right_6__1__N_19[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_13.INIT0 = 16'h555a;
    defparam left_5__16__I_0_add_2_13.INIT1 = 16'h555a;
    defparam left_5__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_13.INJECT1_1 = "NO";
    OB result_pad_9 (.I(result_c_9), .O(result[9]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_5__16__I_0_add_2_11 (.A0(\left[5] [9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1093), .COUT(n1094), .S0(right_6__1__N_19[9]), 
          .S1(right_6__1__N_19[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_11.INIT0 = 16'h555a;
    defparam left_5__16__I_0_add_2_11.INIT1 = 16'h555a;
    defparam left_5__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_add_2_9 (.A0(\left[5] [7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\left[5] [8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1092), .COUT(n1093), .S0(right_6__1__N_19[7]), 
          .S1(right_6__1__N_19[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_9.INIT0 = 16'h555a;
    defparam left_5__16__I_0_add_2_9.INIT1 = 16'h555a;
    defparam left_5__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_add_2_7 (.A0(right_2__1__N_3[5]), .B0(right_5__1__N_16[3]), 
          .C0(right_4__1__N_11[11]), .D0(right_5__1__N_15[3]), .A1(result_c_15), 
          .B1(right_4__1__N_11[11]), .C1(right_5__1__N_16[4]), .D1(right_5__1__N_15[4]), 
          .CIN(n1091), .COUT(n1092), .S0(right_6__1__N_19[5]), .S1(right_6__1__N_19[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_5__16__I_0_add_2_7.INIT1 = 16'ha695;
    defparam left_5__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_add_2_5 (.A0(\left[5] [3]), .B0(right_4__1__N_11[11]), 
          .C0(GND_net), .D0(VCC_net), .A1(right_3__1__N_7[8]), .B1(right_5__1__N_16[2]), 
          .C1(right_4__1__N_11[11]), .D1(right_5__1__N_15[2]), .CIN(n1090), 
          .COUT(n1091), .S0(right_6__1__N_19[3]), .S1(right_6__1__N_19[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_5.INIT0 = 16'h666a;
    defparam left_5__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_5__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_add_2_3 (.A0(num_c_21), .B0(\right[5] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[5] [1]), .B1(right_5__1__N_16[0]), 
          .C1(right_4__1__N_11[11]), .D1(right_5__1__N_15[0]), .CIN(n1089), 
          .COUT(n1090), .S0(right_6__1__N_19[1]), .S1(right_6__1__N_19[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_5__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_5__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_5__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1089), .S1(right_6__1__N_19[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_5__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_5__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_5__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_5__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_355_15 (.A0(right_4__1__N_11[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[11]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1087), .S0(right_5__1__N_16[13]), 
          .S1(right_5__1__N_16[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_15.INIT0 = 16'haaaa;
    defparam left_4__16__I_0_355_15.INIT1 = 16'haaaa;
    defparam left_4__16__I_0_355_15.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_15.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_355_13 (.A0(right_4__1__N_11[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1086), .COUT(n1087), .S0(right_5__1__N_16[11]), 
          .S1(right_5__1__N_16[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_13.INIT0 = 16'haaaa;
    defparam left_4__16__I_0_355_13.INIT1 = 16'haaaa;
    defparam left_4__16__I_0_355_13.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_13.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_355_11 (.A0(right_4__1__N_11[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1085), .COUT(n1086), .S0(right_5__1__N_16[9]), 
          .S1(right_5__1__N_16[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_11.INIT0 = 16'haaaa;
    defparam left_4__16__I_0_355_11.INIT1 = 16'haaaa;
    defparam left_4__16__I_0_355_11.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_11.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_355_9 (.A0(right_4__1__N_11[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1084), .COUT(n1085), .S0(right_5__1__N_16[7]), 
          .S1(right_5__1__N_16[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_9.INIT0 = 16'haaaa;
    defparam left_4__16__I_0_355_9.INIT1 = 16'haaaa;
    defparam left_4__16__I_0_355_9.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_9.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_355_7 (.A0(num_c_31), .B0(num_c_30), .C0(right_4__1__N_11[3]), 
          .D0(VCC_net), .A1(right_4__1__N_11[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1083), .COUT(n1084), .S0(right_5__1__N_16[5]), 
          .S1(right_5__1__N_16[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_7.INIT0 = 16'h1e1e;
    defparam left_4__16__I_0_355_7.INIT1 = 16'haaaa;
    defparam left_4__16__I_0_355_7.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_7.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_355_5 (.A0(right_4__1__N_11[1]), .B0(right_3__1__N_7[8]), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[2]), .B1(right_2__1__N_3[5]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1082), .COUT(n1083), .S0(right_5__1__N_16[3]), 
          .S1(right_5__1__N_16[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_5.INIT0 = 16'h999a;
    defparam left_4__16__I_0_355_5.INIT1 = 16'h999a;
    defparam left_4__16__I_0_355_5.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_5.INJECT1_1 = "NO";
    OB result_pad_10 (.I(result_c_10), .O(result[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_4__16__I_0_355_3 (.A0(num_c_23), .B0(right_4__1__N_11[11]), 
          .C0(GND_net), .D0(VCC_net), .A1(right_4__1__N_11[0]), .B1(right_4__1__N_11[11]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1081), .COUT(n1082), .S0(right_5__1__N_16[1]), 
          .S1(right_5__1__N_16[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_3.INIT0 = 16'h666a;
    defparam left_4__16__I_0_355_3.INIT1 = 16'h999a;
    defparam left_4__16__I_0_355_3.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_3.INJECT1_1 = "NO";
    CCU2C left_4__16__I_0_355_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1081), .S1(right_5__1__N_16[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_4__16__I_0_355_1.INIT0 = 16'h0000;
    defparam left_4__16__I_0_355_1.INIT1 = 16'h555a;
    defparam left_4__16__I_0_355_1.INJECT1_0 = "NO";
    defparam left_4__16__I_0_355_1.INJECT1_1 = "NO";
    OB result_pad_11 (.I(result_c_11), .O(result[11]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_3__16__I_0_add_2_13 (.A0(right_3__1__N_7[8]), .B0(right_4__1__N_12[10]), 
          .C0(result_c_13), .D0(VCC_net), .A1(right_3__1__N_7[8]), .B1(right_4__1__N_12[11]), 
          .C1(result_c_13), .D1(VCC_net), .CIN(n1079), .S0(right_4__1__N_11[10]), 
          .S1(right_4__1__N_11[11]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_3__16__I_0_add_2_13.INIT0 = 16'h7878;
    defparam left_3__16__I_0_add_2_13.INIT1 = 16'h7878;
    defparam left_3__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_3__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_add_2_11 (.A0(result_c_13), .B0(right_3__1__N_7[8]), 
          .C0(right_4__1__N_12[8]), .D0(right_3__1__N_7[6]), .A1(result_c_13), 
          .B1(right_3__1__N_7[8]), .C1(right_4__1__N_12[9]), .D1(right_3__1__N_7[7]), 
          .CIN(n1078), .COUT(n1079), .S0(right_4__1__N_11[8]), .S1(right_4__1__N_11[9]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_3__16__I_0_add_2_11.INIT0 = 16'h596a;
    defparam left_3__16__I_0_add_2_11.INIT1 = 16'h596a;
    defparam left_3__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_3__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_add_2_9 (.A0(result_c_13), .B0(right_3__1__N_7[8]), 
          .C0(right_4__1__N_12[6]), .D0(right_3__1__N_7[4]), .A1(result_c_13), 
          .B1(right_3__1__N_7[8]), .C1(right_4__1__N_12[7]), .D1(right_3__1__N_7[5]), 
          .CIN(n1077), .COUT(n1078), .S0(right_4__1__N_11[6]), .S1(right_4__1__N_11[7]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_3__16__I_0_add_2_9.INIT0 = 16'h596a;
    defparam left_3__16__I_0_add_2_9.INIT1 = 16'h596a;
    defparam left_3__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_3__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_add_2_7 (.A0(right_3__1__N_7[8]), .B0(result_c_15), 
          .C0(right_4__1__N_12[4]), .D0(right_3__1__N_7[2]), .A1(result_c_13), 
          .B1(right_3__1__N_7[8]), .C1(right_4__1__N_12[5]), .D1(right_3__1__N_7[3]), 
          .CIN(n1076), .COUT(n1077), .S0(right_4__1__N_11[4]), .S1(right_4__1__N_11[5]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_3__16__I_0_add_2_7.INIT0 = 16'he4b1;
    defparam left_3__16__I_0_add_2_7.INIT1 = 16'h596a;
    defparam left_3__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_3__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_add_2_5 (.A0(GND_net), .B0(right_3__1__N_7[8]), 
          .C0(right_4__1__N_12[2]), .D0(right_3__1__N_7[0]), .A1(right_2__1__N_3[5]), 
          .B1(right_3__1__N_7[8]), .C1(right_4__1__N_12[3]), .D1(right_3__1__N_7[1]), 
          .CIN(n1075), .COUT(n1076), .S0(right_4__1__N_11[2]), .S1(right_4__1__N_11[3]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_3__16__I_0_add_2_5.INIT0 = 16'h596a;
    defparam left_3__16__I_0_add_2_5.INIT1 = 16'hd1e2;
    defparam left_3__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_3__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_add_2_3 (.A0(result_c_13), .B0(right_3__1__N_7[8]), 
          .C0(right_4__1__N_12[0]), .D0(num_c_24), .A1(result_c_13), .B1(right_3__1__N_7[8]), 
          .C1(right_4__1__N_12[1]), .D1(num_c_25), .CIN(n1074), .COUT(n1075), 
          .S0(right_4__1__N_11[0]), .S1(right_4__1__N_11[1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_3__16__I_0_add_2_3.INIT0 = 16'h596a;
    defparam left_3__16__I_0_add_2_3.INIT1 = 16'hd1e2;
    defparam left_3__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_3__16__I_0_add_2_3.INJECT1_1 = "NO";
    OB result_pad_12 (.I(result_c_12), .O(result[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    OB result_pad_13 (.I(result_c_13), .O(result[13]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    LUT4 i445_2_lut (.A(num_c_31), .B(num_c_30), .Z(result_c_15)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam i445_2_lut.init = 16'heeee;
    LUT4 right_6__1__I_149_3_lut (.A(right_6__1__N_19[1]), .B(right_6__1__N_20[1]), 
         .C(\right[5] [1]), .Z(\left[6] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_6__1__I_149_3_lut.init = 16'hcaca;
    LUT4 right_4__1__I_0_327_1_lut (.A(right_4__1__N_11[11]), .Z(result_c_12)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(34[34:46])
    defparam right_4__1__I_0_327_1_lut.init = 16'h5555;
    OB result_pad_14 (.I(result_c_14), .O(result[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    LUT4 right_5__1__I_164_3_lut (.A(right_5__1__N_15[1]), .B(right_5__1__N_16[1]), 
         .C(right_4__1__N_11[11]), .Z(\left[5] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_5__1__I_164_3_lut.init = 16'hcaca;
    LUT4 right_7__1__I_128_3_lut (.A(right_7__1__N_23[7]), .B(right_7__1__N_24[7]), 
         .C(\right[6] [1]), .Z(\left[7] [9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(30[18] 32[12])
    defparam right_7__1__I_128_3_lut.init = 16'hcaca;
    OB result_pad_15 (.I(result_c_15), .O(result[15]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(6[26:32])
    CCU2C left_11__16__I_0_add_2_15 (.A0(\left[11] [13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(\left[11] [14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1249), .COUT(n1250), .S0(right_12__1__N_43[13]), 
          .S1(right_12__1__N_43[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_15.INIT0 = 16'h555a;
    defparam left_11__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_11__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_11__16__I_0_add_2_17 (.A0(\left[11] [15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(\left[11] [16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1250), .S1(right_12__1__N_43[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_11__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_11__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_11__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_11__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1252), .S1(right_13__1__N_47[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_12__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_12__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_3 (.A0(num_c_7), .B0(\right[12] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[12] [1]), .B1(right_12__1__N_44[0]), 
          .C1(\right[11] [1]), .D1(right_12__1__N_43[0]), .CIN(n1252), 
          .COUT(n1253), .S0(right_13__1__N_47[1]), .S1(right_13__1__N_47[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_12__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_12__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_5 (.A0(\left[12] [3]), .B0(right_11__1__N_40[16]), 
          .C0(\right[10] [1]), .D0(right_11__1__N_39[16]), .A1(\right[10] [1]), 
          .B1(right_12__1__N_44[2]), .C1(\right[11] [1]), .D1(right_12__1__N_43[2]), 
          .CIN(n1253), .COUT(n1254), .S0(right_13__1__N_47[3]), .S1(right_13__1__N_47[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_12__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_12__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_7 (.A0(\right[9] [1]), .B0(right_12__1__N_44[3]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[3]), .A1(\right[8] [1]), 
          .B1(right_12__1__N_44[4]), .C1(\right[11] [1]), .D1(right_12__1__N_43[4]), 
          .CIN(n1254), .COUT(n1255), .S0(right_13__1__N_47[5]), .S1(right_13__1__N_47[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_12__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_12__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_9 (.A0(\right[7] [1]), .B0(right_12__1__N_44[5]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[5]), .A1(\right[6] [1]), 
          .B1(right_12__1__N_44[6]), .C1(\right[11] [1]), .D1(right_12__1__N_43[6]), 
          .CIN(n1255), .COUT(n1256), .S0(right_13__1__N_47[7]), .S1(right_13__1__N_47[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_12__16__I_0_add_2_9.INIT1 = 16'h656a;
    defparam left_12__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_11 (.A0(\right[5] [1]), .B0(right_12__1__N_44[7]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[7]), .A1(right_4__1__N_11[11]), 
          .B1(right_12__1__N_44[8]), .C1(\right[11] [1]), .D1(right_12__1__N_43[8]), 
          .CIN(n1256), .COUT(n1257), .S0(right_13__1__N_47[9]), .S1(right_13__1__N_47[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_11.INIT0 = 16'h656a;
    defparam left_12__16__I_0_add_2_11.INIT1 = 16'h656a;
    defparam left_12__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_13 (.A0(right_3__1__N_7[8]), .B0(right_12__1__N_44[9]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[9]), .A1(right_2__1__N_3[5]), 
          .B1(right_12__1__N_44[10]), .C1(\right[11] [1]), .D1(right_12__1__N_43[10]), 
          .CIN(n1257), .COUT(n1258), .S0(right_13__1__N_47[11]), .S1(right_13__1__N_47[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_13.INIT0 = 16'h656a;
    defparam left_12__16__I_0_add_2_13.INIT1 = 16'h656a;
    defparam left_12__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_15 (.A0(result_c_15), .B0(\right[11] [1]), 
          .C0(right_12__1__N_44[11]), .D0(right_12__1__N_43[11]), .A1(\left[12] [14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1258), .COUT(n1259), 
          .S0(right_13__1__N_47[13]), .S1(right_13__1__N_47[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_15.INIT0 = 16'ha695;
    defparam left_12__16__I_0_add_2_15.INIT1 = 16'h555a;
    defparam left_12__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_12__16__I_0_add_2_17 (.A0(\left[12] [15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(\left[12] [16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1259), .S1(right_13__1__N_47[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_12__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_12__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_12__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_12__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1261), .S1(right_14__1__N_51[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_13__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_13__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_3 (.A0(num_c_5), .B0(\right[13] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[13] [1]), .B1(right_13__1__N_48[0]), 
          .C1(\right[12] [1]), .D1(right_13__1__N_47[0]), .CIN(n1261), 
          .COUT(n1262), .S0(right_14__1__N_51[1]), .S1(right_14__1__N_51[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_13__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_13__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_5 (.A0(\left[13] [3]), .B0(right_12__1__N_44[16]), 
          .C0(\right[11] [1]), .D0(right_12__1__N_43[16]), .A1(\right[11] [1]), 
          .B1(right_13__1__N_48[2]), .C1(\right[12] [1]), .D1(right_13__1__N_47[2]), 
          .CIN(n1262), .COUT(n1263), .S0(right_14__1__N_51[3]), .S1(right_14__1__N_51[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_13__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_13__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_7 (.A0(\right[10] [1]), .B0(right_13__1__N_48[3]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[3]), .A1(\right[9] [1]), 
          .B1(right_13__1__N_48[4]), .C1(\right[12] [1]), .D1(right_13__1__N_47[4]), 
          .CIN(n1263), .COUT(n1264), .S0(right_14__1__N_51[5]), .S1(right_14__1__N_51[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_13__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_13__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_9 (.A0(\right[8] [1]), .B0(right_13__1__N_48[5]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[5]), .A1(\right[7] [1]), 
          .B1(right_13__1__N_48[6]), .C1(\right[12] [1]), .D1(right_13__1__N_47[6]), 
          .CIN(n1264), .COUT(n1265), .S0(right_14__1__N_51[7]), .S1(right_14__1__N_51[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_13__16__I_0_add_2_9.INIT1 = 16'h656a;
    defparam left_13__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_11 (.A0(\right[6] [1]), .B0(right_13__1__N_48[7]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[7]), .A1(\right[5] [1]), 
          .B1(right_13__1__N_48[8]), .C1(\right[12] [1]), .D1(right_13__1__N_47[8]), 
          .CIN(n1265), .COUT(n1266), .S0(right_14__1__N_51[9]), .S1(right_14__1__N_51[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_11.INIT0 = 16'h656a;
    defparam left_13__16__I_0_add_2_11.INIT1 = 16'h656a;
    defparam left_13__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_13 (.A0(right_4__1__N_11[11]), .B0(right_13__1__N_48[9]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[9]), .A1(right_3__1__N_7[8]), 
          .B1(right_13__1__N_48[10]), .C1(\right[12] [1]), .D1(right_13__1__N_47[10]), 
          .CIN(n1266), .COUT(n1267), .S0(right_14__1__N_51[11]), .S1(right_14__1__N_51[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_13.INIT0 = 16'h656a;
    defparam left_13__16__I_0_add_2_13.INIT1 = 16'h656a;
    defparam left_13__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_15 (.A0(right_2__1__N_3[5]), .B0(right_13__1__N_48[11]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[11]), .A1(result_c_15), 
          .B1(\right[12] [1]), .C1(right_13__1__N_48[12]), .D1(right_13__1__N_47[12]), 
          .CIN(n1267), .COUT(n1268), .S0(right_14__1__N_51[13]), .S1(right_14__1__N_51[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_15.INIT0 = 16'h656a;
    defparam left_13__16__I_0_add_2_15.INIT1 = 16'ha695;
    defparam left_13__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_13__16__I_0_add_2_17 (.A0(\left[13] [15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(\left[13] [16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1268), .S1(right_14__1__N_51[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_13__16__I_0_add_2_17.INIT0 = 16'h555a;
    defparam left_13__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_13__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_13__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1270), .S1(right_15__1__N_55[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_1.INIT0 = 16'h0000;
    defparam left_14__16__I_0_add_2_1.INIT1 = 16'h555a;
    defparam left_14__16__I_0_add_2_1.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_3 (.A0(num_c_3), .B0(\right[14] [1]), .C0(GND_net), 
          .D0(VCC_net), .A1(\right[14] [1]), .B1(right_14__1__N_52[0]), 
          .C1(\right[13] [1]), .D1(right_14__1__N_51[0]), .CIN(n1270), 
          .COUT(n1271), .S0(right_15__1__N_55[1]), .S1(right_15__1__N_55[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_3.INIT0 = 16'h999a;
    defparam left_14__16__I_0_add_2_3.INIT1 = 16'h656a;
    defparam left_14__16__I_0_add_2_3.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_5 (.A0(\left[14] [3]), .B0(right_13__1__N_48[16]), 
          .C0(\right[12] [1]), .D0(right_13__1__N_47[16]), .A1(\right[12] [1]), 
          .B1(right_14__1__N_52[2]), .C1(\right[13] [1]), .D1(right_14__1__N_51[2]), 
          .CIN(n1271), .COUT(n1272), .S0(right_15__1__N_55[3]), .S1(right_15__1__N_55[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_5.INIT0 = 16'h656a;
    defparam left_14__16__I_0_add_2_5.INIT1 = 16'h656a;
    defparam left_14__16__I_0_add_2_5.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_7 (.A0(\right[11] [1]), .B0(right_14__1__N_52[3]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[3]), .A1(\right[10] [1]), 
          .B1(right_14__1__N_52[4]), .C1(\right[13] [1]), .D1(right_14__1__N_51[4]), 
          .CIN(n1272), .COUT(n1273), .S0(right_15__1__N_55[5]), .S1(right_15__1__N_55[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_7.INIT0 = 16'h656a;
    defparam left_14__16__I_0_add_2_7.INIT1 = 16'h656a;
    defparam left_14__16__I_0_add_2_7.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_9 (.A0(\right[9] [1]), .B0(right_14__1__N_52[5]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[5]), .A1(\right[8] [1]), 
          .B1(right_14__1__N_52[6]), .C1(\right[13] [1]), .D1(right_14__1__N_51[6]), 
          .CIN(n1273), .COUT(n1274), .S0(right_15__1__N_55[7]), .S1(right_15__1__N_55[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_9.INIT0 = 16'h656a;
    defparam left_14__16__I_0_add_2_9.INIT1 = 16'h656a;
    defparam left_14__16__I_0_add_2_9.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_11 (.A0(\right[7] [1]), .B0(right_14__1__N_52[7]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[7]), .A1(\right[6] [1]), 
          .B1(right_14__1__N_52[8]), .C1(\right[13] [1]), .D1(right_14__1__N_51[8]), 
          .CIN(n1274), .COUT(n1275), .S0(right_15__1__N_55[9]), .S1(right_15__1__N_55[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_11.INIT0 = 16'h656a;
    defparam left_14__16__I_0_add_2_11.INIT1 = 16'h656a;
    defparam left_14__16__I_0_add_2_11.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_13 (.A0(\right[5] [1]), .B0(right_14__1__N_52[9]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[9]), .A1(right_4__1__N_11[11]), 
          .B1(right_14__1__N_52[10]), .C1(\right[13] [1]), .D1(right_14__1__N_51[10]), 
          .CIN(n1275), .COUT(n1276), .S0(right_15__1__N_55[11]), .S1(right_15__1__N_55[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_13.INIT0 = 16'h656a;
    defparam left_14__16__I_0_add_2_13.INIT1 = 16'h656a;
    defparam left_14__16__I_0_add_2_13.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_13.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_15 (.A0(right_3__1__N_7[8]), .B0(right_14__1__N_52[11]), 
          .C0(\right[13] [1]), .D0(right_14__1__N_51[11]), .A1(right_2__1__N_3[5]), 
          .B1(right_14__1__N_52[12]), .C1(\right[13] [1]), .D1(right_14__1__N_51[12]), 
          .CIN(n1276), .COUT(n1277), .S0(right_15__1__N_55[13]), .S1(right_15__1__N_55[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_15.INIT0 = 16'h656a;
    defparam left_14__16__I_0_add_2_15.INIT1 = 16'h656a;
    defparam left_14__16__I_0_add_2_15.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2C left_14__16__I_0_add_2_17 (.A0(result_c_15), .B0(\right[13] [1]), 
          .C0(right_14__1__N_52[13]), .D0(right_14__1__N_51[13]), .A1(\left[14] [16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1277), .S1(right_15__1__N_55[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_14__16__I_0_add_2_17.INIT0 = 16'ha695;
    defparam left_14__16__I_0_add_2_17.INIT1 = 16'h555a;
    defparam left_14__16__I_0_add_2_17.INJECT1_0 = "NO";
    defparam left_14__16__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_2 (.A0(num_c_0), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(num_c_1), .B1(\right[15] [1]), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1279));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_2.INIT0 = 16'h000a;
    defparam left_15__16__I_0_add_2_2.INIT1 = 16'h999a;
    defparam left_15__16__I_0_add_2_2.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_2.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_4 (.A0(\right[15] [1]), .B0(right_15__1__N_56[0]), 
          .C0(\right[14] [1]), .D0(right_15__1__N_55[0]), .A1(\left[15] [3]), 
          .B1(right_14__1__N_52[16]), .C1(\right[13] [1]), .D1(right_14__1__N_51[16]), 
          .CIN(n1279), .COUT(n1280));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_4.INIT0 = 16'h656a;
    defparam left_15__16__I_0_add_2_4.INIT1 = 16'h656a;
    defparam left_15__16__I_0_add_2_4.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_4.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_6 (.A0(\right[13] [1]), .B0(right_15__1__N_56[2]), 
          .C0(\right[14] [1]), .D0(right_15__1__N_55[2]), .A1(\right[12] [1]), 
          .B1(right_15__1__N_56[3]), .C1(\right[14] [1]), .D1(right_15__1__N_55[3]), 
          .CIN(n1280), .COUT(n1281));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_6.INIT0 = 16'h656a;
    defparam left_15__16__I_0_add_2_6.INIT1 = 16'h656a;
    defparam left_15__16__I_0_add_2_6.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_6.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_8 (.A0(\right[11] [1]), .B0(right_15__1__N_56[4]), 
          .C0(\right[14] [1]), .D0(right_15__1__N_55[4]), .A1(\right[10] [1]), 
          .B1(right_15__1__N_56[5]), .C1(\right[14] [1]), .D1(right_15__1__N_55[5]), 
          .CIN(n1281), .COUT(n1282));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_8.INIT0 = 16'h656a;
    defparam left_15__16__I_0_add_2_8.INIT1 = 16'h656a;
    defparam left_15__16__I_0_add_2_8.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_8.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_10 (.A0(\right[9] [1]), .B0(right_15__1__N_56[6]), 
          .C0(\right[14] [1]), .D0(right_15__1__N_55[6]), .A1(\right[8] [1]), 
          .B1(right_15__1__N_56[7]), .C1(\right[14] [1]), .D1(right_15__1__N_55[7]), 
          .CIN(n1282), .COUT(n1283));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_10.INIT0 = 16'h656a;
    defparam left_15__16__I_0_add_2_10.INIT1 = 16'h656a;
    defparam left_15__16__I_0_add_2_10.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_10.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_12 (.A0(\right[7] [1]), .B0(right_15__1__N_56[8]), 
          .C0(\right[14] [1]), .D0(right_15__1__N_55[8]), .A1(\right[6] [1]), 
          .B1(right_15__1__N_56[9]), .C1(\right[14] [1]), .D1(right_15__1__N_55[9]), 
          .CIN(n1283), .COUT(n1284));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_12.INIT0 = 16'h656a;
    defparam left_15__16__I_0_add_2_12.INIT1 = 16'h656a;
    defparam left_15__16__I_0_add_2_12.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_12.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_14 (.A0(\right[5] [1]), .B0(right_15__1__N_56[10]), 
          .C0(\right[14] [1]), .D0(right_15__1__N_55[10]), .A1(right_4__1__N_11[11]), 
          .B1(right_15__1__N_56[11]), .C1(\right[14] [1]), .D1(right_15__1__N_55[11]), 
          .CIN(n1284), .COUT(n1285));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_14.INIT0 = 16'h656a;
    defparam left_15__16__I_0_add_2_14.INIT1 = 16'h656a;
    defparam left_15__16__I_0_add_2_14.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_14.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_16 (.A0(right_3__1__N_7[8]), .B0(right_15__1__N_56[12]), 
          .C0(\right[14] [1]), .D0(right_15__1__N_55[12]), .A1(right_2__1__N_3[5]), 
          .B1(right_15__1__N_56[13]), .C1(\right[14] [1]), .D1(right_15__1__N_55[13]), 
          .CIN(n1285), .COUT(n1286));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_16.INIT0 = 16'h656a;
    defparam left_15__16__I_0_add_2_16.INIT1 = 16'h656a;
    defparam left_15__16__I_0_add_2_16.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_16.INJECT1_1 = "NO";
    CCU2C left_15__16__I_0_add_2_18 (.A0(result_c_15), .B0(\right[14] [1]), 
          .C0(right_15__1__N_56[14]), .D0(right_15__1__N_55[14]), .A1(GND_net), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1286), .S0(r_16__16__N_59[16]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(31[21:39])
    defparam left_15__16__I_0_add_2_18.INIT0 = 16'ha695;
    defparam left_15__16__I_0_add_2_18.INIT1 = 16'h0000;
    defparam left_15__16__I_0_add_2_18.INJECT1_0 = "NO";
    defparam left_15__16__I_0_add_2_18.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_354_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(num_c_24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1287), .S1(right_4__1__N_12[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_3__16__I_0_354_1.INIT0 = 16'h0000;
    defparam left_3__16__I_0_354_1.INIT1 = 16'h555a;
    defparam left_3__16__I_0_354_1.INJECT1_0 = "NO";
    defparam left_3__16__I_0_354_1.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_354_3 (.A0(num_c_25), .B0(right_3__1__N_7[8]), 
          .C0(GND_net), .D0(VCC_net), .A1(right_3__1__N_7[0]), .B1(right_3__1__N_7[8]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1287), .COUT(n1288), .S0(right_4__1__N_12[1]), 
          .S1(right_4__1__N_12[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_3__16__I_0_354_3.INIT0 = 16'h666a;
    defparam left_3__16__I_0_354_3.INIT1 = 16'h999a;
    defparam left_3__16__I_0_354_3.INJECT1_0 = "NO";
    defparam left_3__16__I_0_354_3.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_354_5 (.A0(right_3__1__N_7[1]), .B0(right_2__1__N_3[5]), 
          .C0(GND_net), .D0(VCC_net), .A1(num_c_31), .B1(num_c_30), 
          .C1(right_3__1__N_7[2]), .D1(VCC_net), .CIN(n1288), .COUT(n1289), 
          .S0(right_4__1__N_12[3]), .S1(right_4__1__N_12[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_3__16__I_0_354_5.INIT0 = 16'h999a;
    defparam left_3__16__I_0_354_5.INIT1 = 16'h1e1e;
    defparam left_3__16__I_0_354_5.INJECT1_0 = "NO";
    defparam left_3__16__I_0_354_5.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_354_7 (.A0(right_3__1__N_7[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_3__1__N_7[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1289), .COUT(n1290), .S0(right_4__1__N_12[5]), 
          .S1(right_4__1__N_12[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_3__16__I_0_354_7.INIT0 = 16'haaaa;
    defparam left_3__16__I_0_354_7.INIT1 = 16'haaaa;
    defparam left_3__16__I_0_354_7.INJECT1_0 = "NO";
    defparam left_3__16__I_0_354_7.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_354_9 (.A0(right_3__1__N_7[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_3__1__N_7[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1290), .COUT(n1291), .S0(right_4__1__N_12[7]), 
          .S1(right_4__1__N_12[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_3__16__I_0_354_9.INIT0 = 16'haaaa;
    defparam left_3__16__I_0_354_9.INIT1 = 16'haaaa;
    defparam left_3__16__I_0_354_9.INJECT1_0 = "NO";
    defparam left_3__16__I_0_354_9.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_354_11 (.A0(right_3__1__N_7[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(right_3__1__N_7[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1291), .COUT(n1292), .S0(right_4__1__N_12[9]), 
          .S1(right_4__1__N_12[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_3__16__I_0_354_11.INIT0 = 16'haaaa;
    defparam left_3__16__I_0_354_11.INIT1 = 16'haaaa;
    defparam left_3__16__I_0_354_11.INJECT1_0 = "NO";
    defparam left_3__16__I_0_354_11.INJECT1_1 = "NO";
    CCU2C left_3__16__I_0_354_13 (.A0(right_3__1__N_7[8]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1292), .S0(right_4__1__N_12[11]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/sqrt_combinatorial_t.v(29[21:39])
    defparam left_3__16__I_0_354_13.INIT0 = 16'haaaa;
    defparam left_3__16__I_0_354_13.INIT1 = 16'h0000;
    defparam left_3__16__I_0_354_13.INJECT1_0 = "NO";
    defparam left_3__16__I_0_354_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

