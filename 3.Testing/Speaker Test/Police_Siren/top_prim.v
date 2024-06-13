// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Mar 15 14:21:14 2024
//
// Verilog Description of module top
//

module top (clk_25mhz, rst, led, wave_outP, wave_outN) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(1[8:11])
    input clk_25mhz;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(2[13:22])
    input rst;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(3[13:16])
    output [7:0]led;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    output wave_outP;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(5[14:23])
    output wave_outN;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(6[14:23])
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(2[13:22])
    
    wire rst_c, cout, led_c_1, wave_outP_c, wave_outN_c, GND_net, 
        VCC_net;
    wire [31:0]counter;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(19[12:19])
    wire [31:0]freq_update_counter;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(19[25:44])
    wire [31:0]half_period;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(20[12:23])
    wire [31:0]current_wave_freq;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(21[12:29])
    wire [31:0]counter_31__N_162;
    
    wire n3504, n3503, n3502, n3501, n3500, n3499, n3121, clk_25mhz_c_enable_54, 
        clk_25mhz_c_enable_23, n64, n67, n70, n73, n76, n79, n82, 
        n85, n88, n91, n94, n97, n100, n103, n106, n109, n112, 
        n115, n118, n3711, n121, n3710, n124, n127, n130, n133, 
        n136, n139, n142, n145, n148, n151, n3705, n64_adj_588, 
        n67_adj_589, n70_adj_590, n73_adj_591, n76_adj_592, n79_adj_593, 
        n82_adj_594, n85_adj_595, n88_adj_596, n91_adj_597, n94_adj_598, 
        n97_adj_599, n100_adj_600, n103_adj_601, n106_adj_602, n109_adj_603, 
        n112_adj_604, n115_adj_605, n118_adj_606, n121_adj_607, n124_adj_608, 
        n127_adj_609, n130_adj_610, n133_adj_611, n136_adj_612, n139_adj_613, 
        n142_adj_614, n145_adj_615, n148_adj_616, n151_adj_617, cout_adj_618, 
        n3698, n3697, n3712, n3707, n3706, n3691, n3709, n3708, 
        n3703, n3702, n3701, n3700, n3683, n3704, n3696, n3695, 
        n3694, n3693, n3674, n3699, n3690, n3689, n3688, n3687, 
        n3686, n3685, n3692, n3682, n3681, n3680, n3679, n3678, 
        n3677, n3676, n3684, n3673, n3672, n3671, n3675, n3508, 
        n3507, n3506, n3505, n3498, n3497, n3496, n3495, n3494, 
        n3493, n3492, n3491, n3490, n3489, n3488, n3487, n3486, 
        n3485, n3484, n3483, n3482, n3481, n3480, n3479, n3478, 
        n3477, n3476, n3475, n3474, n3473, n3472, n3471, n3470, 
        n3469, n3468, n3467, n3466, n3465, n3464, n3463, n3461, 
        n3460, n3459, n3458, n3457, n3456, n3455, n3454, n3453, 
        n3452, n3451, n3450, n3449;
    
    VHI i5 (.Z(VCC_net));
    OB led_pad_6 (.I(GND_net), .O(led[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    CCU2C add_1873_20 (.A0(freq_update_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3706), .COUT(n3707));
    defparam add_1873_20.INIT0 = 16'haaa0;
    defparam add_1873_20.INIT1 = 16'haaa0;
    defparam add_1873_20.INJECT1_0 = "NO";
    defparam add_1873_20.INJECT1_1 = "NO";
    OB led_pad_7 (.I(GND_net), .O(led[7]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    CCU2C add_1873_8 (.A0(freq_update_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3700), .COUT(n3701));
    defparam add_1873_8.INIT0 = 16'h555f;
    defparam add_1873_8.INIT1 = 16'h555f;
    defparam add_1873_8.INJECT1_0 = "NO";
    defparam add_1873_8.INJECT1_1 = "NO";
    CCU2C add_1873_6 (.A0(freq_update_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3699), .COUT(n3700));
    defparam add_1873_6.INIT0 = 16'haaa0;
    defparam add_1873_6.INIT1 = 16'h555f;
    defparam add_1873_6.INJECT1_0 = "NO";
    defparam add_1873_6.INJECT1_1 = "NO";
    CCU2C add_1873_18 (.A0(freq_update_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3705), .COUT(n3706));
    defparam add_1873_18.INIT0 = 16'h555f;
    defparam add_1873_18.INIT1 = 16'haaa0;
    defparam add_1873_18.INJECT1_0 = "NO";
    defparam add_1873_18.INJECT1_1 = "NO";
    CCU2C add_1873_16 (.A0(freq_update_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3704), .COUT(n3705));
    defparam add_1873_16.INIT0 = 16'h555f;
    defparam add_1873_16.INIT1 = 16'haaa0;
    defparam add_1873_16.INJECT1_0 = "NO";
    defparam add_1873_16.INJECT1_1 = "NO";
    CCU2C add_1873_14 (.A0(freq_update_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3703), .COUT(n3704));
    defparam add_1873_14.INIT0 = 16'haaa0;
    defparam add_1873_14.INIT1 = 16'haaa0;
    defparam add_1873_14.INJECT1_0 = "NO";
    defparam add_1873_14.INJECT1_1 = "NO";
    CCU2C add_1873_4 (.A0(freq_update_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3698), .COUT(n3699));
    defparam add_1873_4.INIT0 = 16'haaa0;
    defparam add_1873_4.INIT1 = 16'haaa0;
    defparam add_1873_4.INJECT1_0 = "NO";
    defparam add_1873_4.INJECT1_1 = "NO";
    CCU2C add_1873_2 (.A0(freq_update_counter[0]), .B0(freq_update_counter[1]), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .COUT(n3698));
    defparam add_1873_2.INIT0 = 16'h0008;
    defparam add_1873_2.INIT1 = 16'haaa0;
    defparam add_1873_2.INJECT1_0 = "NO";
    defparam add_1873_2.INJECT1_1 = "NO";
    CCU2C add_1873_32 (.A0(freq_update_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3712), .S1(clk_25mhz_c_enable_23));
    defparam add_1873_32.INIT0 = 16'h555f;
    defparam add_1873_32.INIT1 = 16'h0000;
    defparam add_1873_32.INJECT1_0 = "NO";
    defparam add_1873_32.INJECT1_1 = "NO";
    CCU2C add_1873_30 (.A0(freq_update_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3711), .COUT(n3712));
    defparam add_1873_30.INIT0 = 16'h555f;
    defparam add_1873_30.INIT1 = 16'h555f;
    defparam add_1873_30.INJECT1_0 = "NO";
    defparam add_1873_30.INJECT1_1 = "NO";
    CCU2C add_1873_12 (.A0(freq_update_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3702), .COUT(n3703));
    defparam add_1873_12.INIT0 = 16'haaa0;
    defparam add_1873_12.INIT1 = 16'haaa0;
    defparam add_1873_12.INJECT1_0 = "NO";
    defparam add_1873_12.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3697), .S0(cout));
    defparam _add_1_add_4_cout.INIT0 = 16'h0000;
    defparam _add_1_add_4_cout.INIT1 = 16'h0000;
    defparam _add_1_add_4_cout.INJECT1_0 = "NO";
    defparam _add_1_add_4_cout.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_29 (.A0(current_wave_freq[30]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[31]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3696), .COUT(n3697));
    defparam _add_1_add_4_29.INIT0 = 16'h5555;
    defparam _add_1_add_4_29.INIT1 = 16'h5555;
    defparam _add_1_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_add_4_29.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_27 (.A0(current_wave_freq[28]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[29]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3695), .COUT(n3696));
    defparam _add_1_add_4_27.INIT0 = 16'h5555;
    defparam _add_1_add_4_27.INIT1 = 16'h5555;
    defparam _add_1_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_add_4_27.INJECT1_1 = "NO";
    CCU2C add_1873_28 (.A0(freq_update_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3710), .COUT(n3711));
    defparam add_1873_28.INIT0 = 16'h555f;
    defparam add_1873_28.INIT1 = 16'h555f;
    defparam add_1873_28.INJECT1_0 = "NO";
    defparam add_1873_28.INJECT1_1 = "NO";
    CCU2C add_1873_10 (.A0(freq_update_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3701), .COUT(n3702));
    defparam add_1873_10.INIT0 = 16'h555f;
    defparam add_1873_10.INIT1 = 16'h555f;
    defparam add_1873_10.INJECT1_0 = "NO";
    defparam add_1873_10.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_25 (.A0(current_wave_freq[26]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[27]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3694), .COUT(n3695));
    defparam _add_1_add_4_25.INIT0 = 16'h5555;
    defparam _add_1_add_4_25.INIT1 = 16'h5555;
    defparam _add_1_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_add_4_25.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_23 (.A0(current_wave_freq[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3693), .COUT(n3694));
    defparam _add_1_add_4_23.INIT0 = 16'h5555;
    defparam _add_1_add_4_23.INIT1 = 16'h5555;
    defparam _add_1_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_add_4_23.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_21 (.A0(current_wave_freq[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3692), .COUT(n3693));
    defparam _add_1_add_4_21.INIT0 = 16'h5555;
    defparam _add_1_add_4_21.INIT1 = 16'h5555;
    defparam _add_1_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_add_4_21.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_19 (.A0(current_wave_freq[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3691), .COUT(n3692));
    defparam _add_1_add_4_19.INIT0 = 16'h5555;
    defparam _add_1_add_4_19.INIT1 = 16'h5555;
    defparam _add_1_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_17 (.A0(current_wave_freq[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3690), .COUT(n3691));
    defparam _add_1_add_4_17.INIT0 = 16'h5555;
    defparam _add_1_add_4_17.INIT1 = 16'h5555;
    defparam _add_1_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_15 (.A0(current_wave_freq[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3689), .COUT(n3690));
    defparam _add_1_add_4_15.INIT0 = 16'h5555;
    defparam _add_1_add_4_15.INIT1 = 16'h5555;
    defparam _add_1_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_13 (.A0(current_wave_freq[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3688), .COUT(n3689));
    defparam _add_1_add_4_13.INIT0 = 16'h5555;
    defparam _add_1_add_4_13.INIT1 = 16'h5555;
    defparam _add_1_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_11 (.A0(current_wave_freq[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3687), .COUT(n3688));
    defparam _add_1_add_4_11.INIT0 = 16'h5555;
    defparam _add_1_add_4_11.INIT1 = 16'h5555;
    defparam _add_1_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_9 (.A0(current_wave_freq[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3686), .COUT(n3687));
    defparam _add_1_add_4_9.INIT0 = 16'h5555;
    defparam _add_1_add_4_9.INIT1 = 16'h5555;
    defparam _add_1_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_7 (.A0(current_wave_freq[8]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[9]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3685), .COUT(n3686));
    defparam _add_1_add_4_7.INIT0 = 16'h5555;
    defparam _add_1_add_4_7.INIT1 = 16'h5555;
    defparam _add_1_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_5 (.A0(current_wave_freq[6]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3684), .COUT(n3685));
    defparam _add_1_add_4_5.INIT0 = 16'haaa5;
    defparam _add_1_add_4_5.INIT1 = 16'h5555;
    defparam _add_1_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_3 (.A0(current_wave_freq[4]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[5]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3683), .COUT(n3684));
    defparam _add_1_add_4_3.INIT0 = 16'h5555;
    defparam _add_1_add_4_3.INIT1 = 16'haaa5;
    defparam _add_1_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(current_wave_freq[3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3683));
    defparam _add_1_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_add_4_1.INIT1 = 16'haaa5;
    defparam _add_1_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_add_4_1.INJECT1_1 = "NO";
    CCU2C add_1874_26 (.A0(current_wave_freq[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3682), .S1(cout_adj_618));
    defparam add_1874_26.INIT0 = 16'h555f;
    defparam add_1874_26.INIT1 = 16'h0000;
    defparam add_1874_26.INJECT1_0 = "NO";
    defparam add_1874_26.INJECT1_1 = "NO";
    CCU2C add_1874_24 (.A0(current_wave_freq[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3681), .COUT(n3682));
    defparam add_1874_24.INIT0 = 16'h555f;
    defparam add_1874_24.INIT1 = 16'h555f;
    defparam add_1874_24.INJECT1_0 = "NO";
    defparam add_1874_24.INJECT1_1 = "NO";
    CCU2C add_1874_22 (.A0(current_wave_freq[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3680), .COUT(n3681));
    defparam add_1874_22.INIT0 = 16'h555f;
    defparam add_1874_22.INIT1 = 16'h555f;
    defparam add_1874_22.INJECT1_0 = "NO";
    defparam add_1874_22.INJECT1_1 = "NO";
    CCU2C add_1874_20 (.A0(current_wave_freq[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3679), .COUT(n3680));
    defparam add_1874_20.INIT0 = 16'h555f;
    defparam add_1874_20.INIT1 = 16'h555f;
    defparam add_1874_20.INJECT1_0 = "NO";
    defparam add_1874_20.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_34 (.A0(counter_31__N_162[26]), .B0(counter[31]), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3508), .S1(clk_25mhz_c_enable_54));
    defparam _add_1_48_add_4_34.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_34.INIT1 = 16'h0000;
    defparam _add_1_48_add_4_34.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_34.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_32 (.A0(counter_31__N_162[26]), .B0(counter[29]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[26]), .B1(counter[30]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3507), .COUT(n3508));
    defparam _add_1_48_add_4_32.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_32.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_32.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_32.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_30 (.A0(counter_31__N_162[26]), .B0(counter[27]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[26]), .B1(counter[28]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3506), .COUT(n3507));
    defparam _add_1_48_add_4_30.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_30.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_30.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_30.INJECT1_1 = "NO";
    CCU2C add_1874_18 (.A0(current_wave_freq[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3678), .COUT(n3679));
    defparam add_1874_18.INIT0 = 16'h555f;
    defparam add_1874_18.INIT1 = 16'h555f;
    defparam add_1874_18.INJECT1_0 = "NO";
    defparam add_1874_18.INJECT1_1 = "NO";
    CCU2C add_1874_16 (.A0(current_wave_freq[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3677), .COUT(n3678));
    defparam add_1874_16.INIT0 = 16'h555f;
    defparam add_1874_16.INIT1 = 16'h555f;
    defparam add_1874_16.INJECT1_0 = "NO";
    defparam add_1874_16.INJECT1_1 = "NO";
    CCU2C add_1874_14 (.A0(current_wave_freq[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3676), .COUT(n3677));
    defparam add_1874_14.INIT0 = 16'h555f;
    defparam add_1874_14.INIT1 = 16'h555f;
    defparam add_1874_14.INJECT1_0 = "NO";
    defparam add_1874_14.INJECT1_1 = "NO";
    CCU2C add_1874_12 (.A0(current_wave_freq[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3675), .COUT(n3676));
    defparam add_1874_12.INIT0 = 16'h555f;
    defparam add_1874_12.INIT1 = 16'h555f;
    defparam add_1874_12.INJECT1_0 = "NO";
    defparam add_1874_12.INJECT1_1 = "NO";
    CCU2C add_1874_10 (.A0(current_wave_freq[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3674), .COUT(n3675));
    defparam add_1874_10.INIT0 = 16'h555f;
    defparam add_1874_10.INIT1 = 16'h555f;
    defparam add_1874_10.INJECT1_0 = "NO";
    defparam add_1874_10.INJECT1_1 = "NO";
    CCU2C add_1874_8 (.A0(current_wave_freq[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3673), .COUT(n3674));
    defparam add_1874_8.INIT0 = 16'h555f;
    defparam add_1874_8.INIT1 = 16'h555f;
    defparam add_1874_8.INJECT1_0 = "NO";
    defparam add_1874_8.INJECT1_1 = "NO";
    CCU2C add_1874_6 (.A0(current_wave_freq[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3672), .COUT(n3673));
    defparam add_1874_6.INIT0 = 16'haaa0;
    defparam add_1874_6.INIT1 = 16'haaa0;
    defparam add_1874_6.INJECT1_0 = "NO";
    defparam add_1874_6.INJECT1_1 = "NO";
    CCU2C add_1874_4 (.A0(current_wave_freq[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3671), .COUT(n3672));
    defparam add_1874_4.INIT0 = 16'haaa0;
    defparam add_1874_4.INIT1 = 16'haaa0;
    defparam add_1874_4.INJECT1_0 = "NO";
    defparam add_1874_4.INJECT1_1 = "NO";
    CCU2C add_1874_2 (.A0(current_wave_freq[6]), .B0(current_wave_freq[7]), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .COUT(n3671));
    defparam add_1874_2.INIT0 = 16'h000e;
    defparam add_1874_2.INIT1 = 16'haaa0;
    defparam add_1874_2.INJECT1_0 = "NO";
    defparam add_1874_2.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_28 (.A0(counter_31__N_162[25]), .B0(counter[25]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[26]), .B1(counter[26]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3505), .COUT(n3506));
    defparam _add_1_48_add_4_28.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_28.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_28.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_28.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_26 (.A0(counter_31__N_162[23]), .B0(counter[23]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[24]), .B1(counter[24]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3504), .COUT(n3505));
    defparam _add_1_48_add_4_26.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_26.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_26.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_26.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_24 (.A0(counter_31__N_162[21]), .B0(counter[21]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[22]), .B1(counter[22]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3503), .COUT(n3504));
    defparam _add_1_48_add_4_24.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_24.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_24.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_24.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_22 (.A0(counter_31__N_162[19]), .B0(counter[19]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[20]), .B1(counter[20]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3502), .COUT(n3503));
    defparam _add_1_48_add_4_22.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_22.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_22.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_22.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_20 (.A0(counter_31__N_162[17]), .B0(counter[17]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[18]), .B1(counter[18]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3501), .COUT(n3502));
    defparam _add_1_48_add_4_20.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_20.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_20.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_20.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_18 (.A0(counter_31__N_162[15]), .B0(counter[15]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[16]), .B1(counter[16]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3500), .COUT(n3501));
    defparam _add_1_48_add_4_18.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_18.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_18.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_18.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_16 (.A0(counter_31__N_162[13]), .B0(counter[13]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[14]), .B1(counter[14]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3499), .COUT(n3500));
    defparam _add_1_48_add_4_16.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_16.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_16.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_16.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_14 (.A0(counter_31__N_162[11]), .B0(counter[11]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[12]), .B1(counter[12]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3498), .COUT(n3499));
    defparam _add_1_48_add_4_14.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_14.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_14.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_14.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_12 (.A0(counter_31__N_162[9]), .B0(counter[9]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[10]), .B1(counter[10]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3497), .COUT(n3498));
    defparam _add_1_48_add_4_12.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_12.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_12.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_10 (.A0(counter_31__N_162[7]), .B0(counter[7]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[8]), .B1(counter[8]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3496), .COUT(n3497));
    defparam _add_1_48_add_4_10.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_10.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_10.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_8 (.A0(counter_31__N_162[5]), .B0(counter[5]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[6]), .B1(counter[6]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3495), .COUT(n3496));
    defparam _add_1_48_add_4_8.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_8.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_8.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_6 (.A0(counter_31__N_162[3]), .B0(counter[3]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[4]), .B1(counter[4]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3494), .COUT(n3495));
    defparam _add_1_48_add_4_6.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_6.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_6.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_4 (.A0(counter_31__N_162[1]), .B0(counter[1]), 
          .C0(GND_net), .D0(VCC_net), .A1(counter_31__N_162[2]), .B1(counter[2]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3493), .COUT(n3494));
    defparam _add_1_48_add_4_4.INIT0 = 16'h9995;
    defparam _add_1_48_add_4_4.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_4.INJECT1_1 = "NO";
    CCU2C _add_1_48_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_31__N_162[0]), .B1(counter[0]), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3493));
    defparam _add_1_48_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_48_add_4_2.INIT1 = 16'h9995;
    defparam _add_1_48_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_48_add_4_2.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_31 (.A0(current_wave_freq[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3492), .S0(n64_adj_588));
    defparam _add_1_54_add_4_31.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_31.INIT1 = 16'h0000;
    defparam _add_1_54_add_4_31.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_31.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_29 (.A0(current_wave_freq[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3491), .COUT(n3492), .S0(n70_adj_590), 
          .S1(n67_adj_589));
    defparam _add_1_54_add_4_29.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_29.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_29.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_27 (.A0(current_wave_freq[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3490), .COUT(n3491), .S0(n76_adj_592), 
          .S1(n73_adj_591));
    defparam _add_1_54_add_4_27.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_27.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_27.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_25 (.A0(current_wave_freq[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3489), .COUT(n3490), .S0(n82_adj_594), 
          .S1(n79_adj_593));
    defparam _add_1_54_add_4_25.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_25.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_25.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_23 (.A0(current_wave_freq[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3488), .COUT(n3489), .S0(n88_adj_596), 
          .S1(n85_adj_595));
    defparam _add_1_54_add_4_23.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_23.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_23.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_21 (.A0(current_wave_freq[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3487), .COUT(n3488), .S0(n94_adj_598), 
          .S1(n91_adj_597));
    defparam _add_1_54_add_4_21.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_21.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_21.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_19 (.A0(current_wave_freq[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3486), .COUT(n3487), .S0(n100_adj_600), 
          .S1(n97_adj_599));
    defparam _add_1_54_add_4_19.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_19.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_17 (.A0(current_wave_freq[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3485), .COUT(n3486), .S0(n106_adj_602), 
          .S1(n103_adj_601));
    defparam _add_1_54_add_4_17.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_17.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_15 (.A0(current_wave_freq[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3484), .COUT(n3485), .S0(n112_adj_604), 
          .S1(n109_adj_603));
    defparam _add_1_54_add_4_15.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_15.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_13 (.A0(current_wave_freq[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3483), .COUT(n3484), .S0(n118_adj_606), 
          .S1(n115_adj_605));
    defparam _add_1_54_add_4_13.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_13.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_11 (.A0(current_wave_freq[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3482), .COUT(n3483), .S0(n124_adj_608), 
          .S1(n121_adj_607));
    defparam _add_1_54_add_4_11.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_11.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_9 (.A0(current_wave_freq[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3481), .COUT(n3482), .S0(n130_adj_610), 
          .S1(n127_adj_609));
    defparam _add_1_54_add_4_9.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_9.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_7 (.A0(current_wave_freq[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3480), .COUT(n3481), .S0(n136_adj_612), 
          .S1(n133_adj_611));
    defparam _add_1_54_add_4_7.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_7.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_5 (.A0(current_wave_freq[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3479), .COUT(n3480), .S0(n142_adj_614), 
          .S1(n139_adj_613));
    defparam _add_1_54_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_54_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_54_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_3 (.A0(current_wave_freq[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3478), .COUT(n3479), .S0(n148_adj_616), 
          .S1(n145_adj_615));
    defparam _add_1_54_add_4_3.INIT0 = 16'h555f;
    defparam _add_1_54_add_4_3.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_54_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(current_wave_freq[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3478), .S1(n151_adj_617));
    defparam _add_1_54_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_54_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_54_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_54_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_31 (.A0(current_wave_freq[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3477), .S0(n64));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_31.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_31.INIT1 = 16'h0000;
    defparam _add_1_45_add_4_31.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_31.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_29 (.A0(current_wave_freq[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3476), .COUT(n3477), .S0(n70), 
          .S1(n67));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_29.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_29.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_29.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_27 (.A0(current_wave_freq[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3475), .COUT(n3476), .S0(n76), 
          .S1(n73));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_27.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_27.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_27.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_25 (.A0(current_wave_freq[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3474), .COUT(n3475), .S0(n82), 
          .S1(n79));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_25.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_25.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_25.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_23 (.A0(current_wave_freq[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3473), .COUT(n3474), .S0(n88), 
          .S1(n85));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_23.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_23.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_23.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_21 (.A0(current_wave_freq[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3472), .COUT(n3473), .S0(n94), 
          .S1(n91));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_21.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_21.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_21.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_19 (.A0(current_wave_freq[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3471), .COUT(n3472), .S0(n100), 
          .S1(n97));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_19.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_19.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_17 (.A0(current_wave_freq[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3470), .COUT(n3471), .S0(n106), 
          .S1(n103));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_17.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_15 (.A0(current_wave_freq[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3469), .COUT(n3470), .S0(n112), 
          .S1(n109));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_13 (.A0(current_wave_freq[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3468), .COUT(n3469), .S0(n118), 
          .S1(n115));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_11 (.A0(current_wave_freq[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(current_wave_freq[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3467), .COUT(n3468), .S0(n124), 
          .S1(n121));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_9 (.A0(current_wave_freq[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3466), .COUT(n3467), .S0(n130), .S1(n127));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_7 (.A0(current_wave_freq[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3465), .COUT(n3466), .S0(n136), .S1(n133));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_5 (.A0(current_wave_freq[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3464), .COUT(n3465), .S0(n142), .S1(n139));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_5.INIT0 = 16'h555f;
    defparam _add_1_45_add_4_5.INIT1 = 16'h555f;
    defparam _add_1_45_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_3 (.A0(current_wave_freq[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(current_wave_freq[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3463), .COUT(n3464), .S0(n148), .S1(n145));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_45_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_45_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_45_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(current_wave_freq[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3463), .S1(n151));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam _add_1_45_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_45_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_45_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_45_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_27 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3461), .S0(counter_31__N_162[25]), .S1(counter_31__N_162[26]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_27.INIT0 = 16'hffff;
    defparam _add_1_57_add_4_27.INIT1 = 16'hffff;
    defparam _add_1_57_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_27.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_25 (.A0(half_period[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3460), .COUT(n3461), .S0(counter_31__N_162[23]), 
          .S1(counter_31__N_162[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_25.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_25.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_25.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_23 (.A0(half_period[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3459), .COUT(n3460), .S0(counter_31__N_162[21]), 
          .S1(counter_31__N_162[22]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_23.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_23.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_23.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_21 (.A0(half_period[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3458), .COUT(n3459), .S0(counter_31__N_162[19]), 
          .S1(counter_31__N_162[20]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_21.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_21.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_21.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_19 (.A0(half_period[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3457), .COUT(n3458), .S0(counter_31__N_162[17]), 
          .S1(counter_31__N_162[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_19.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_19.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_17 (.A0(half_period[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3456), .COUT(n3457), .S0(counter_31__N_162[15]), 
          .S1(counter_31__N_162[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_17.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_17.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_15 (.A0(half_period[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3455), .COUT(n3456), .S0(counter_31__N_162[13]), 
          .S1(counter_31__N_162[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_15.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_15.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_13 (.A0(half_period[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3454), .COUT(n3455), .S0(counter_31__N_162[11]), 
          .S1(counter_31__N_162[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_13.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_13.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_11 (.A0(half_period[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3453), .COUT(n3454), .S0(counter_31__N_162[9]), 
          .S1(counter_31__N_162[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_11.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_11.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_9 (.A0(half_period[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3452), .COUT(n3453), .S0(counter_31__N_162[7]), 
          .S1(counter_31__N_162[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_9.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_9.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_7 (.A0(half_period[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3451), .COUT(n3452), .S0(counter_31__N_162[5]), 
          .S1(counter_31__N_162[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_7.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_7.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_5 (.A0(half_period[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3450), .COUT(n3451), .S0(counter_31__N_162[3]), 
          .S1(counter_31__N_162[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_5.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_5.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_3 (.A0(half_period[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(half_period[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3449), .COUT(n3450), .S0(counter_31__N_162[1]), 
          .S1(counter_31__N_162[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_3.INIT0 = 16'h555f;
    defparam _add_1_57_add_4_3.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_57_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(half_period[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3449), .S1(counter_31__N_162[0]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(36[22:37])
    defparam _add_1_57_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_57_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_57_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_57_add_4_1.INJECT1_1 = "NO";
    CCU2C add_1873_26 (.A0(freq_update_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3709), .COUT(n3710));
    defparam add_1873_26.INIT0 = 16'h555f;
    defparam add_1873_26.INIT1 = 16'h555f;
    defparam add_1873_26.INJECT1_0 = "NO";
    defparam add_1873_26.INJECT1_1 = "NO";
    CCU2C add_1873_24 (.A0(freq_update_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3708), .COUT(n3709));
    defparam add_1873_24.INIT0 = 16'h555f;
    defparam add_1873_24.INIT1 = 16'haaa0;
    defparam add_1873_24.INJECT1_0 = "NO";
    defparam add_1873_24.INJECT1_1 = "NO";
    IB rst_pad (.I(rst), .O(rst_c));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(3[13:16])
    IB clk_25mhz_pad (.I(clk_25mhz), .O(clk_25mhz_c));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(2[13:22])
    OB wave_outN_pad (.I(wave_outN_c), .O(wave_outN));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(6[14:23])
    OB wave_outP_pad (.I(wave_outP_c), .O(wave_outP));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(5[14:23])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    OB led_pad_2 (.I(GND_net), .O(led[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    OB led_pad_3 (.I(GND_net), .O(led[3]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    OB led_pad_4 (.I(GND_net), .O(led[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    OB led_pad_5 (.I(GND_net), .O(led[5]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(4[15:18])
    GSR GSR_INST (.GSR(n3121));
    CCU2C add_1873_22 (.A0(freq_update_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(freq_update_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3707), .COUT(n3708));
    defparam add_1873_22.INIT0 = 16'haaa0;
    defparam add_1873_22.INIT1 = 16'haaa0;
    defparam add_1873_22.INJECT1_0 = "NO";
    defparam add_1873_22.INJECT1_1 = "NO";
    LUT4 i1742_1_lut (.A(rst_c), .Z(n3121)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(3[13:16])
    defparam i1742_1_lut.init = 16'h5555;
    VLO i4 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    square_wave_generator swg (.\current_wave_freq[12] (current_wave_freq[12]), 
            .led_c_1(led_c_1), .clk_25mhz_c(clk_25mhz_c), .\half_period[0] (half_period[0]), 
            .clk_25mhz_c_enable_23(clk_25mhz_c_enable_23), .\half_period[1] (half_period[1]), 
            .\half_period[2] (half_period[2]), .\half_period[3] (half_period[3]), 
            .\half_period[4] (half_period[4]), .\half_period[5] (half_period[5]), 
            .\half_period[6] (half_period[6]), .\half_period[7] (half_period[7]), 
            .\half_period[8] (half_period[8]), .\half_period[9] (half_period[9]), 
            .\half_period[10] (half_period[10]), .\half_period[11] (half_period[11]), 
            .\half_period[12] (half_period[12]), .\half_period[13] (half_period[13]), 
            .\half_period[14] (half_period[14]), .\half_period[15] (half_period[15]), 
            .\half_period[16] (half_period[16]), .\half_period[17] (half_period[17]), 
            .\half_period[18] (half_period[18]), .\half_period[19] (half_period[19]), 
            .\half_period[20] (half_period[20]), .\half_period[21] (half_period[21]), 
            .\half_period[24] (half_period[24]), .\current_wave_freq[2] (current_wave_freq[2]), 
            .\current_wave_freq[3] (current_wave_freq[3]), .\current_wave_freq[4] (current_wave_freq[4]), 
            .\current_wave_freq[5] (current_wave_freq[5]), .\current_wave_freq[6] (current_wave_freq[6]), 
            .\current_wave_freq[7] (current_wave_freq[7]), .\current_wave_freq[8] (current_wave_freq[8]), 
            .\current_wave_freq[9] (current_wave_freq[9]), .\current_wave_freq[10] (current_wave_freq[10]), 
            .\current_wave_freq[11] (current_wave_freq[11]), .\current_wave_freq[13] (current_wave_freq[13]), 
            .\current_wave_freq[14] (current_wave_freq[14]), .\current_wave_freq[15] (current_wave_freq[15]), 
            .\current_wave_freq[16] (current_wave_freq[16]), .\current_wave_freq[17] (current_wave_freq[17]), 
            .\current_wave_freq[18] (current_wave_freq[18]), .\current_wave_freq[19] (current_wave_freq[19]), 
            .\current_wave_freq[20] (current_wave_freq[20]), .\current_wave_freq[21] (current_wave_freq[21]), 
            .\current_wave_freq[22] (current_wave_freq[22]), .\current_wave_freq[23] (current_wave_freq[23]), 
            .\current_wave_freq[24] (current_wave_freq[24]), .\current_wave_freq[25] (current_wave_freq[25]), 
            .\current_wave_freq[26] (current_wave_freq[26]), .\current_wave_freq[27] (current_wave_freq[27]), 
            .\current_wave_freq[28] (current_wave_freq[28]), .\current_wave_freq[29] (current_wave_freq[29]), 
            .\current_wave_freq[30] (current_wave_freq[30]), .\current_wave_freq[31] (current_wave_freq[31]), 
            .GND_net(GND_net), .wave_outN_c(wave_outN_c), .clk_25mhz_c_enable_54(clk_25mhz_c_enable_54), 
            .wave_outP_c(wave_outP_c), .counter({counter}), .VCC_net(VCC_net), 
            .freq_update_counter({freq_update_counter}), .n157({n64_adj_588, 
            n67_adj_589, n70_adj_590, n73_adj_591, n76_adj_592, n79_adj_593, 
            n82_adj_594, n85_adj_595, n88_adj_596, n91_adj_597, n94_adj_598, 
            n97_adj_599, n100_adj_600, n103_adj_601, n106_adj_602, n109_adj_603, 
            n112_adj_604, n115_adj_605, n118_adj_606, n121_adj_607, 
            n124_adj_608, n127_adj_609, n130_adj_610, n133_adj_611, 
            n136_adj_612, n139_adj_613, n142_adj_614, n145_adj_615, 
            n148_adj_616, n151_adj_617}), .n157_adj_32({n64, n67, n70, 
            n73, n76, n79, n82, n85, n88, n91, n94, n97, n100, 
            n103, n106, n109, n112, n115, n118, n121, n124, 
            n127, n130, n133, n136, n139, n142, n145, n148, 
            n151}), .cout(cout), .cout_adj_31(cout_adj_618)) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(11[23] 17[2])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module square_wave_generator
//

module square_wave_generator (\current_wave_freq[12] , led_c_1, clk_25mhz_c, 
            \half_period[0] , clk_25mhz_c_enable_23, \half_period[1] , 
            \half_period[2] , \half_period[3] , \half_period[4] , \half_period[5] , 
            \half_period[6] , \half_period[7] , \half_period[8] , \half_period[9] , 
            \half_period[10] , \half_period[11] , \half_period[12] , \half_period[13] , 
            \half_period[14] , \half_period[15] , \half_period[16] , \half_period[17] , 
            \half_period[18] , \half_period[19] , \half_period[20] , \half_period[21] , 
            \half_period[24] , \current_wave_freq[2] , \current_wave_freq[3] , 
            \current_wave_freq[4] , \current_wave_freq[5] , \current_wave_freq[6] , 
            \current_wave_freq[7] , \current_wave_freq[8] , \current_wave_freq[9] , 
            \current_wave_freq[10] , \current_wave_freq[11] , \current_wave_freq[13] , 
            \current_wave_freq[14] , \current_wave_freq[15] , \current_wave_freq[16] , 
            \current_wave_freq[17] , \current_wave_freq[18] , \current_wave_freq[19] , 
            \current_wave_freq[20] , \current_wave_freq[21] , \current_wave_freq[22] , 
            \current_wave_freq[23] , \current_wave_freq[24] , \current_wave_freq[25] , 
            \current_wave_freq[26] , \current_wave_freq[27] , \current_wave_freq[28] , 
            \current_wave_freq[29] , \current_wave_freq[30] , \current_wave_freq[31] , 
            GND_net, wave_outN_c, clk_25mhz_c_enable_54, wave_outP_c, 
            counter, VCC_net, freq_update_counter, n157, n157_adj_32, 
            cout, cout_adj_31) /* synthesis syn_module_defined=1 */ ;
    output \current_wave_freq[12] ;
    output led_c_1;
    input clk_25mhz_c;
    output \half_period[0] ;
    input clk_25mhz_c_enable_23;
    output \half_period[1] ;
    output \half_period[2] ;
    output \half_period[3] ;
    output \half_period[4] ;
    output \half_period[5] ;
    output \half_period[6] ;
    output \half_period[7] ;
    output \half_period[8] ;
    output \half_period[9] ;
    output \half_period[10] ;
    output \half_period[11] ;
    output \half_period[12] ;
    output \half_period[13] ;
    output \half_period[14] ;
    output \half_period[15] ;
    output \half_period[16] ;
    output \half_period[17] ;
    output \half_period[18] ;
    output \half_period[19] ;
    output \half_period[20] ;
    output \half_period[21] ;
    output \half_period[24] ;
    output \current_wave_freq[2] ;
    output \current_wave_freq[3] ;
    output \current_wave_freq[4] ;
    output \current_wave_freq[5] ;
    output \current_wave_freq[6] ;
    output \current_wave_freq[7] ;
    output \current_wave_freq[8] ;
    output \current_wave_freq[9] ;
    output \current_wave_freq[10] ;
    output \current_wave_freq[11] ;
    output \current_wave_freq[13] ;
    output \current_wave_freq[14] ;
    output \current_wave_freq[15] ;
    output \current_wave_freq[16] ;
    output \current_wave_freq[17] ;
    output \current_wave_freq[18] ;
    output \current_wave_freq[19] ;
    output \current_wave_freq[20] ;
    output \current_wave_freq[21] ;
    output \current_wave_freq[22] ;
    output \current_wave_freq[23] ;
    output \current_wave_freq[24] ;
    output \current_wave_freq[25] ;
    output \current_wave_freq[26] ;
    output \current_wave_freq[27] ;
    output \current_wave_freq[28] ;
    output \current_wave_freq[29] ;
    output \current_wave_freq[30] ;
    output \current_wave_freq[31] ;
    input GND_net;
    output wave_outN_c;
    input clk_25mhz_c_enable_54;
    output wave_outP_c;
    output [31:0]counter;
    input VCC_net;
    output [31:0]freq_update_counter;
    input [29:0]n157;
    input [29:0]n157_adj_32;
    input cout;
    input cout_adj_31;
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/top.v(2[13:22])
    
    wire n3090;
    wire [24:0]n1220;
    wire [11:0]n3547;
    
    wire n8008, led_N_284;
    wire [24:0]half_period_31__N_259;
    
    wire n7825, n7859, n7905, n7936, n7963, n7989, n8019, n8044, 
        n8066, n8079, n8084, n8090, n8093, clk_25mhz_c_enable_63;
    wire [31:0]current_wave_freq_31__N_227;
    
    wire n3511, n8086, n5043;
    wire [24:0]n1031;
    wire [31:0]n2;
    
    wire n3526, n3078, n8551;
    wire [24:0]n1085;
    
    wire n3075, n1872, n8097, n50, n1184;
    wire [8:0]n3525;
    
    wire n3527, n3510, n8547, n8087, n1286_adj_296, n8545, n3041, 
        n1285_adj_297, n3509, n3066, n8549, n1287_adj_298, n3670, 
        n3669, n3668, n3667, n3666, n3665, n3664, n3663;
    wire [31:0]n3;
    
    wire n3662, n3661, n3660, n3659, n3658, n3657, n3656, n3655, 
        n3654, n3653, n3652, n3651, n3650, n3649, n3648, n3647, 
        n3646, n3645, n3644, n3643, n3642, n3641, n3640, n3639, 
        n3637, n7861;
    wire [24:0]n1409;
    wire [18:0]n3607;
    wire [24:0]n1;
    
    wire n3636, n3635, n3634, n3633, n3632, n3631, n8539, n8537, 
        n3630, n8543, n8541, n3629, n3628, n50_adj_331, n3110, 
        n3237, n3627, n3626, n3625, n3624, n3623, n3622, n3621, 
        n3620, n3619, n3618, n3108, n3616, n7896, n8105, n50_adj_332, 
        n3257, n7895, n3361, n3615, n7894, n3040, n7893, n3150, 
        n3614, n7892, n2811, n7891, n2927, n3613, n7890, n2570, 
        n7889, n2692, n3612, n7904, n2317, n7903, n2445, n3611, 
        n7902, n2052, n7901, n2186, n3610, n7900, n1775, n7899, 
        n1915, n3609, n7898, n1336_adj_333, n7897, n1776, n3608;
    wire [24:0]n1355;
    
    wire n3105, n3127, n3604, n3102;
    wire [24:0]n1328;
    
    wire n7954, n3603, n7951, n7953, n3602, n7949, n7952, n3601, 
        n7962, n7950, n3600, n7959, n7961, n3599, n7958, n7960, 
        n3598, n7955, n7957, n3597, n2900, n7956, n3596, n50_adj_334, 
        n8099, n2901, n3594, n3099;
    wire [24:0]n1301;
    
    wire n7980, n7981, n3593, n7979, n7978, n3592, n7977, n7976, 
        n3591, n7987, n7988, n3590, n7986, n7985, n3589, n7983, 
        n7984, n3588, n2782, n7982, n3587, n50_adj_335, n3098, 
        n2783, n3586, n3096;
    wire [24:0]n1274;
    wire [13:0]n3563;
    
    wire n3585, n3584, n3583, n3582, n3581, n3580, n3579, n50_adj_336, 
        n8098, n2662, n3577, n3576, n3575, n3574, n3573, n3572, 
        n3571, n3093, n3570, n8018, n3092, n50_adj_337, n3569, 
        n8017, n8016, n3568, n8015, n8014, n3567, n8013, n8012, 
        n3566, n8011, n8010, n3565, n2536, n8009, n3564, n8120, 
        n2537, n3559, n3558, n3557, n3556, n3555, n3554, n3087, 
        n3553;
    wire [10:0]n3538;
    
    wire n3086, n50_adj_338, n3552, n3551, n3550, n3549, n3548, 
        n8033, n3543, n8045, n8094, n50_adj_339, n8048, n3542, 
        n8047, n8046, n3541, n8041, n8049, n3540, n8043, n8042, 
        n3539;
    wire [24:0]n1139;
    
    wire n3081, n2147, n3535, n3534, n3533, n3532, n3531, n3529, 
        n8065, n8064, n3528, n8063, n8062, n1871, n8061, n3522;
    wire [6:0]n3514;
    
    wire n3521, n3520, n3519, n3072, n3517, n8078, n3071, n50_adj_340, 
        n8077, n3516, n8076, n8075, n3515, n6318, n1585, n7869, 
        increasing_freq, clk_25mhz_c_enable_55, increasing_freq_N_289, 
        wave_outP_N_285, n5023, n50_adj_341, n5017, n7934, n7844, 
        n14, n7933, n5664, n8091, n46, n7931, n7932, n7908, 
        n7930, n5011, n7929, n5660, n1437_adj_342, n50_adj_343, 
        n44, n7824, n7254, n40, n16, n42, n5020, n7927, n22, 
        n50_adj_344, n5200, n8083, n8082, n8052, n8054, n8055, 
        n6419, n6428, n1436, n7928, n7925, n7926, n30, n50_adj_345, 
        n5029, n7920, n7923, n7935, n7922, n5850, n7823, n7198, 
        n26, n12, n28, n7907, n7921, n7924, n7191, n29, n49, 
        n7276, n7847, n46_adj_346, n5001, n48, n7266, n7906, n8056, 
        n8058, n8057, n6402, n6413, n8060, n8059, n8004, n8006, 
        n8005, n6574, n6593, n8007, n8002, n6561, n1731, n8020, 
        n6536, n44_adj_347, n32, n46_adj_348, n6993, n5107, n38, 
        n7993, n8001, n8000, n8003, n6552, n3016, n26_adj_349, 
        n28_adj_350, n50_adj_351, n5026, n45, n7239, n6639, n43, 
        n41, n39, n7216, n8021, n6951, n2012, n7870, n34, n42_adj_352, 
        n7914, n8022, n37, n35, n33, n7201, n36, n38_adj_353, 
        n37_adj_354, n8024, n6526, n8067, n8068, n8069, n6382, 
        n6393, n8070, n8071, n5652, n42_adj_355, n8072, n8074, 
        n8073, n43_adj_356, n6375, n27, n7182, n8023, n7842, n38_adj_357, 
        n5101, n34_adj_358, n8081, n8080, n6365, n6886, n25, n23, 
        n21, n7169, n19, n17, n15, n7160, n34_adj_359, n13, 
        n3445, n8027, n8028, n8030, n6489, n6502, n7860, n8029, 
        n8031, n39_adj_360, n6478, n50_adj_361, n8104, n3343, n5646, 
        n32_adj_362, n38_adj_363, n24, n37_adj_364, n8032, n7911, 
        n8025, n19_adj_365, n44_adj_366, n46_adj_367, n8026, n7915, 
        n7827, n7091, n28_adj_368, n30_adj_369, n5650, n30_adj_370, 
        n6534, n7841, n7147, n42_adj_371, n18, n44_adj_372, n34_adj_373, 
        n46_adj_374, n28_adj_375, n7916, n6935, n36_adj_376, n44_adj_377, 
        n18_adj_378, n23_adj_379, n7994, n38_adj_380, n40_adj_381, 
        n7917, n6491, n5666, n50_adj_382, n28_adj_383, n7942, n7941, 
        n7940, n6770, n6785, n7918, n7843, n7912, n40_adj_384, 
        n7919, n36_adj_385, n7826, n7913, n8037, n8038, n6463, 
        n24_adj_386, n23_adj_387, n7938, n6760, n36_adj_388, n22_adj_389, 
        n38_adj_390, n6782, n42_adj_391, n20, n44_adj_392, n40_adj_393, 
        n6775, n6791, n26_adj_394, n7829, n42_adj_395, n34_adj_396, 
        n6471, n38_adj_397, n46_adj_398, n48_adj_399, n7835, n30_adj_400, 
        n8039, n6453, n6466, n5155, n976, n5455, n8135, n7854, 
        n8035, n22_adj_401, n28_adj_402, n46_adj_403, n8134, n24_adj_404, 
        n25_adj_405, n7944, n6751, n8034, n7833, n35_adj_406, n8138, 
        n7834, n32_adj_407, n8137, n26_adj_408, n28_adj_409, n36_adj_410, 
        n7852, n7836, n7837, n7120, n7845, n16_adj_411, n17_adj_412, 
        n7830, n7082, n7831, n8040, n18_adj_413, n7857, n22_adj_414, 
        n8036, n8053, n6430, n42_adj_415, n44_adj_416, n8050, n8051, 
        n6441, n7850, n20_adj_417, n34_adj_418, n48_adj_419, n7862, 
        n7034, n7033, n7864, n7863, n7011, n29_adj_420, n7995, 
        n6630, n7866, n7865, n37_adj_421, n6996, n7867, n7868, 
        n6977, n7871, n7873, n6964, n38_adj_422, n46_adj_423, n48_adj_424, 
        n40_adj_425, n7849, n24_adj_426, n7838, n7858, n34_adj_427, 
        n5071, n18_adj_428, n7832, n7872, n21_adj_429, n19_adj_430, 
        n6955, n6443, n7828, n8133, n8113, n8129, n5014, n36_adj_431, 
        n6410, n46_adj_432, n48_adj_433, n44_adj_434, n7848, n14_adj_435, 
        n7840, n40_adj_436, n42_adj_437, n7887, n12_adj_438, n7851, 
        n38_adj_439, n40_adj_440, n7136, n7839, n7996, n7888, n24_adj_441, 
        n22_adj_442, n30_adj_443, n30_adj_444, n7997, n32_adj_445, 
        n20_adj_446, n32_adj_447, n7998, n5592, n10, n7879, n7881, 
        n7884, n6881, n6894, n38_adj_448, n6612, n7878, n7939, 
        n8110, n18_adj_449, n36_adj_450, n7999, n7886, n7876, n7937, 
        n7877, n8088, n8085, n7853, n7856, n7064, n26_adj_453, 
        n6390, n46_adj_455, n48_adj_456, n44_adj_458, n3342, n7885, 
        n7882, n2885, n2889, n10_adj_461, n7946, n8103, n8128, 
        n6590, n44_adj_462, n30_adj_463, n46_adj_464, n40_adj_465, 
        n42_adj_466, n27_adj_467, n6568, n48_adj_468, n44_adj_469, 
        n7947, n7874, n46_adj_470, n7943, n34_adj_471, n5804, n7948, 
        n36_adj_472, n46_adj_473, n48_adj_474, n7945, n8089, n6358, 
        n48_adj_476, n7966, n6696, n38_adj_477, n24_adj_478, n40_adj_479, 
        n6749, n7969, n6718, n44_adj_480, n46_adj_481, n19_adj_482, 
        n8096, n8119, n6736, n34_adj_483, n44_adj_484, n7259, n1133, 
        n48_adj_485, n5041, n6581, n50_adj_486, n6725, n1132, n8095, 
        n5874, n8108, n5704, n7261, n6984, n42_adj_487, n8101, 
        n12_adj_488, n5994, n8131, n36_adj_489, n5832, n5830, n8112, 
        n8102, n8100, n5964, n8127, n8109, n7227, n8106, n6258, 
        n5920, n5910, n26_adj_490, n32_adj_491, n7883, n8117, n5518, 
        n5814, n40_adj_492, n36_adj_493, n46_adj_494, n7152, n48_adj_495, 
        n8111, n5812, n8118, n5516, n7154, n8130, n6765, n7096, 
        n32_adj_496, n8139, n5820, n8124, n8125, n8115, n8114, 
        n8121, n8122, n8123, n6266, n6350, n6268, n5702, n5700, 
        n8126, n20_adj_497, n32_adj_498, n7031, n7875, n6200, n5790, 
        n15_adj_499, n8132, n6246, n5584, n48_adj_500, n8116, n7846, 
        n16_adj_501, n38_adj_502, n46_adj_503, n7045, n8092, n40_adj_504, 
        n44_adj_505, n7047, n50_adj_506, n7974, n7975, n6687, n7972, 
        n7973, n6674, n36_adj_509, n7022, n7880, n32_adj_514, n6998, 
        n6833, n34_adj_517, n20_adj_518, n36_adj_519, n7234, n7218, 
        n7171, n28_adj_520, n42_adj_521, n6949, n48_adj_522, n7909, 
        n6855, n40_adj_525, n42_adj_526, n6853, n7910, n6869, n36_adj_530, 
        n6918, n38_adj_531, n8107, n32_adj_532, n7855, n30_adj_533, 
        n26_adj_537, n6048, n28_adj_540, n38_adj_542, n48_adj_543, 
        n6867, n46_adj_544, n34_adj_546, n6138, n14_adj_547, n6658, 
        n26_adj_548, n44_adj_551, n30_adj_553, n6838, n7243, n22_adj_554, 
        n6824, n7968, n7967, n6699, n6714, n24_adj_557, n6871, 
        n7141, n7116, n7101, n7080, n7067, n7056, n40_adj_560, 
        n48_adj_561, n6806, n7965, n7964, n6680, n7127, n7111, 
        n42_adj_565, n6667, n42_adj_566, n48_adj_567, n7272, n22_adj_568, 
        n6701, n7024, n7008, n7970, n30_adj_569, n44_adj_570, n48_adj_571, 
        n6652, n46_adj_572, n7268, n6933, n24_adj_573, n6904, n42_adj_574, 
        n6644, n6846, n6829, n6814, n6801, n44_adj_575, n7971, 
        n6595, n48_adj_576, n7990, n6648, n34_adj_577, n7991, n40_adj_578, 
        n6913, n34_adj_579, n20_adj_580, n6909, n6926, n38_adj_581, 
        n40_adj_582, n48_adj_583, n6544, n6947, n6635, n7992, n6620, 
        n6546, n6607, n25_adj_584, n6506, n48_adj_585, n42_adj_586, 
        n6529, n6516, n31, n32_adj_587;
    
    LUT4 div_26_LessThan_1719_i43_2_lut_rep_445_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[12] ), 
         .C(n1220[21]), .D(n3547[8]), .Z(n8008)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i43_2_lut_rep_445_4_lut_4_lut.init = 16'h369c;
    FD1S3AX led_47 (.D(led_N_284), .CK(clk_25mhz_c), .Q(led_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam led_47.GSR = "ENABLED";
    FD1P3AX half_period_i0 (.D(half_period_31__N_259[0]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i0.GSR = "ENABLED";
    FD1P3AX half_period_i1 (.D(n7825), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i1.GSR = "ENABLED";
    FD1P3AX half_period_i2 (.D(n7859), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i2.GSR = "ENABLED";
    FD1P3AY half_period_i3 (.D(half_period_31__N_259[3]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[3] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i3.GSR = "ENABLED";
    FD1P3AX half_period_i4 (.D(n7905), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i4.GSR = "ENABLED";
    FD1P3AX half_period_i5 (.D(n7936), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i5.GSR = "ENABLED";
    FD1P3AY half_period_i6 (.D(n7963), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[6] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i6.GSR = "ENABLED";
    FD1P3AX half_period_i7 (.D(n7989), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i7.GSR = "ENABLED";
    FD1P3AX half_period_i8 (.D(half_period_31__N_259[8]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i8.GSR = "ENABLED";
    FD1P3AX half_period_i9 (.D(n8019), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i9.GSR = "ENABLED";
    FD1P3AX half_period_i10 (.D(half_period_31__N_259[10]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i10.GSR = "ENABLED";
    FD1P3AY half_period_i11 (.D(half_period_31__N_259[11]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[11] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i11.GSR = "ENABLED";
    FD1P3AX half_period_i12 (.D(n8044), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i12.GSR = "ENABLED";
    FD1P3AY half_period_i13 (.D(half_period_31__N_259[13]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[13] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i13.GSR = "ENABLED";
    FD1P3AY half_period_i14 (.D(n8066), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[14] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i14.GSR = "ENABLED";
    FD1P3AY half_period_i15 (.D(half_period_31__N_259[15]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[15] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i15.GSR = "ENABLED";
    FD1P3AY half_period_i16 (.D(n8079), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[16] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i16.GSR = "ENABLED";
    FD1P3AX half_period_i17 (.D(n8084), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[17] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i17.GSR = "ENABLED";
    FD1P3AX half_period_i18 (.D(n8090), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[18] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i18.GSR = "ENABLED";
    FD1P3AX half_period_i19 (.D(n8093), .SP(clk_25mhz_c_enable_23), .CK(clk_25mhz_c), 
            .Q(\half_period[19] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i19.GSR = "ENABLED";
    FD1P3AX half_period_i20 (.D(half_period_31__N_259[20]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[20] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i20.GSR = "ENABLED";
    FD1P3AX half_period_i21 (.D(half_period_31__N_259[21]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[21] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i21.GSR = "ENABLED";
    FD1P3AX half_period_i24 (.D(half_period_31__N_259[23]), .SP(clk_25mhz_c_enable_23), 
            .CK(clk_25mhz_c), .Q(\half_period[24] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam half_period_i24.GSR = "ENABLED";
    FD1P3AY current_wave_freq_i2 (.D(current_wave_freq_31__N_227[2]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[2] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i2.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i3 (.D(current_wave_freq_31__N_227[3]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i3.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i4 (.D(current_wave_freq_31__N_227[4]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i4.GSR = "ENABLED";
    FD1P3AY current_wave_freq_i5 (.D(current_wave_freq_31__N_227[5]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[5] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i5.GSR = "ENABLED";
    FD1P3AY current_wave_freq_i6 (.D(current_wave_freq_31__N_227[6]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[6] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i6.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i7 (.D(current_wave_freq_31__N_227[7]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i7.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i8 (.D(current_wave_freq_31__N_227[8]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i8.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i9 (.D(current_wave_freq_31__N_227[9]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i9.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i10 (.D(current_wave_freq_31__N_227[10]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i10.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i11 (.D(current_wave_freq_31__N_227[11]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i11.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i12 (.D(current_wave_freq_31__N_227[12]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i12.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i13 (.D(current_wave_freq_31__N_227[13]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[13] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i13.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i14 (.D(current_wave_freq_31__N_227[14]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[14] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i14.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i15 (.D(current_wave_freq_31__N_227[15]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[15] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i15.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i16 (.D(current_wave_freq_31__N_227[16]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[16] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i16.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i17 (.D(current_wave_freq_31__N_227[17]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[17] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i17.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i18 (.D(current_wave_freq_31__N_227[18]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[18] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i18.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i19 (.D(current_wave_freq_31__N_227[19]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[19] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i19.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i20 (.D(current_wave_freq_31__N_227[20]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[20] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i20.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i21 (.D(current_wave_freq_31__N_227[21]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[21] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i21.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i22 (.D(current_wave_freq_31__N_227[22]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[22] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i22.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i23 (.D(current_wave_freq_31__N_227[23]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[23] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i23.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i24 (.D(current_wave_freq_31__N_227[24]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[24] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i24.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i25 (.D(current_wave_freq_31__N_227[25]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[25] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i25.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i26 (.D(current_wave_freq_31__N_227[26]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[26] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i26.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i27 (.D(current_wave_freq_31__N_227[27]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[27] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i27.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i28 (.D(current_wave_freq_31__N_227[28]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[28] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i28.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i29 (.D(current_wave_freq_31__N_227[29]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[29] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i29.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i30 (.D(current_wave_freq_31__N_227[30]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[30] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i30.GSR = "ENABLED";
    FD1P3AX current_wave_freq_i31 (.D(current_wave_freq_31__N_227[31]), .SP(clk_25mhz_c_enable_63), 
            .CK(clk_25mhz_c), .Q(\current_wave_freq[31] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i31.GSR = "ENABLED";
    CCU2C add_85_7 (.A0(\current_wave_freq[7] ), .B0(n8086), .C0(n8084), 
          .D0(n5043), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3511), .S0(n1031[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_85_7.INIT0 = 16'h6a65;
    defparam add_85_7.INIT1 = 16'h0000;
    defparam add_85_7.INJECT1_0 = "NO";
    defparam add_85_7.INJECT1_1 = "NO";
    FD1P3AY wave_outN_46 (.D(wave_outP_c), .SP(clk_25mhz_c_enable_54), .CK(clk_25mhz_c), 
            .Q(wave_outN_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam wave_outN_46.GSR = "ENABLED";
    FD1S3IX counter_33__i31 (.D(n2[31]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i31.GSR = "ENABLED";
    CCU2C add_88_3 (.A0(n3078), .B0(n8551), .C0(n1085[17]), .D0(n3075), 
          .A1(n1872), .B1(n8097), .C1(n50), .D1(n1184), .CIN(n3526), 
          .COUT(n3527), .S0(n3525[1]), .S1(n3525[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_88_3.INIT0 = 16'h11e1;
    defparam add_88_3.INIT1 = 16'ha9aa;
    defparam add_88_3.INJECT1_0 = "NO";
    defparam add_88_3.INJECT1_1 = "NO";
    CCU2C add_85_5 (.A0(n8547), .B0(n8087), .C0(n8084), .D0(n1286_adj_296), 
          .A1(n8545), .B1(n3041), .C1(n8084), .D1(n1285_adj_297), .CIN(n3510), 
          .COUT(n3511), .S0(n1031[22]), .S1(n1031[23]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_85_5.INIT0 = 16'h6a65;
    defparam add_85_5.INIT1 = 16'h6a65;
    defparam add_85_5.INJECT1_0 = "NO";
    defparam add_85_5.INJECT1_1 = "NO";
    CCU2C add_85_3 (.A0(n3066), .B0(\current_wave_freq[2] ), .C0(\current_wave_freq[3] ), 
          .D0(VCC_net), .A1(n8549), .B1(n3066), .C1(n1287_adj_298), 
          .D1(\current_wave_freq[3] ), .CIN(n3509), .COUT(n3510), .S0(n1031[20]), 
          .S1(n1031[21]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_85_3.INIT0 = 16'hb4bb;
    defparam add_85_3.INIT1 = 16'h96a5;
    defparam add_85_3.INJECT1_0 = "NO";
    defparam add_85_3.INJECT1_1 = "NO";
    CCU2C add_85_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3509));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_85_1.INIT0 = 16'h000F;
    defparam add_85_1.INIT1 = 16'haaaf;
    defparam add_85_1.INJECT1_0 = "NO";
    defparam add_85_1.INJECT1_1 = "NO";
    FD1S3IX counter_33__i30 (.D(n2[30]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i30.GSR = "ENABLED";
    FD1S3IX counter_33__i29 (.D(n2[29]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i29.GSR = "ENABLED";
    FD1S3IX counter_33__i28 (.D(n2[28]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i28.GSR = "ENABLED";
    FD1S3IX counter_33__i27 (.D(n2[27]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i27.GSR = "ENABLED";
    FD1S3IX counter_33__i26 (.D(n2[26]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i26.GSR = "ENABLED";
    FD1S3IX counter_33__i25 (.D(n2[25]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i25.GSR = "ENABLED";
    FD1S3IX counter_33__i24 (.D(n2[24]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i24.GSR = "ENABLED";
    FD1S3IX counter_33__i23 (.D(n2[23]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i23.GSR = "ENABLED";
    FD1S3IX counter_33__i22 (.D(n2[22]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i22.GSR = "ENABLED";
    FD1S3IX counter_33__i21 (.D(n2[21]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i21.GSR = "ENABLED";
    FD1S3IX counter_33__i20 (.D(n2[20]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i20.GSR = "ENABLED";
    FD1S3IX counter_33__i19 (.D(n2[19]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i19.GSR = "ENABLED";
    FD1S3IX counter_33__i18 (.D(n2[18]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i18.GSR = "ENABLED";
    FD1S3IX counter_33__i17 (.D(n2[17]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i17.GSR = "ENABLED";
    FD1S3IX counter_33__i16 (.D(n2[16]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i16.GSR = "ENABLED";
    FD1S3IX counter_33__i15 (.D(n2[15]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i15.GSR = "ENABLED";
    FD1S3IX counter_33__i14 (.D(n2[14]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i14.GSR = "ENABLED";
    FD1S3IX counter_33__i13 (.D(n2[13]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i13.GSR = "ENABLED";
    FD1S3IX counter_33__i12 (.D(n2[12]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i12.GSR = "ENABLED";
    FD1S3IX counter_33__i11 (.D(n2[11]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i11.GSR = "ENABLED";
    FD1S3IX counter_33__i10 (.D(n2[10]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i10.GSR = "ENABLED";
    FD1S3IX counter_33__i9 (.D(n2[9]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i9.GSR = "ENABLED";
    FD1S3IX counter_33__i8 (.D(n2[8]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i8.GSR = "ENABLED";
    FD1S3IX counter_33__i7 (.D(n2[7]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i7.GSR = "ENABLED";
    FD1S3IX counter_33__i6 (.D(n2[6]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i6.GSR = "ENABLED";
    FD1S3IX counter_33__i5 (.D(n2[5]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i5.GSR = "ENABLED";
    FD1S3IX counter_33__i4 (.D(n2[4]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i4.GSR = "ENABLED";
    FD1S3IX counter_33__i3 (.D(n2[3]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i3.GSR = "ENABLED";
    FD1S3IX counter_33__i2 (.D(n2[2]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i2.GSR = "ENABLED";
    CCU2C counter_33_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3670), .S0(n2[31]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_33.INIT0 = 16'haaa0;
    defparam counter_33_add_4_33.INIT1 = 16'h0000;
    defparam counter_33_add_4_33.INJECT1_0 = "NO";
    defparam counter_33_add_4_33.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3669), .COUT(n3670), .S0(n2[29]), .S1(n2[30]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_31.INIT0 = 16'haaa0;
    defparam counter_33_add_4_31.INIT1 = 16'haaa0;
    defparam counter_33_add_4_31.INJECT1_0 = "NO";
    defparam counter_33_add_4_31.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3668), .COUT(n3669), .S0(n2[27]), .S1(n2[28]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_29.INIT0 = 16'haaa0;
    defparam counter_33_add_4_29.INIT1 = 16'haaa0;
    defparam counter_33_add_4_29.INJECT1_0 = "NO";
    defparam counter_33_add_4_29.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3667), .COUT(n3668), .S0(n2[25]), .S1(n2[26]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_27.INIT0 = 16'haaa0;
    defparam counter_33_add_4_27.INIT1 = 16'haaa0;
    defparam counter_33_add_4_27.INJECT1_0 = "NO";
    defparam counter_33_add_4_27.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3666), .COUT(n3667), .S0(n2[23]), .S1(n2[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_25.INIT0 = 16'haaa0;
    defparam counter_33_add_4_25.INIT1 = 16'haaa0;
    defparam counter_33_add_4_25.INJECT1_0 = "NO";
    defparam counter_33_add_4_25.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3665), .COUT(n3666), .S0(n2[21]), .S1(n2[22]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_23.INIT0 = 16'haaa0;
    defparam counter_33_add_4_23.INIT1 = 16'haaa0;
    defparam counter_33_add_4_23.INJECT1_0 = "NO";
    defparam counter_33_add_4_23.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3664), .COUT(n3665), .S0(n2[19]), .S1(n2[20]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_21.INIT0 = 16'haaa0;
    defparam counter_33_add_4_21.INIT1 = 16'haaa0;
    defparam counter_33_add_4_21.INJECT1_0 = "NO";
    defparam counter_33_add_4_21.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3663), .COUT(n3664), .S0(n2[17]), .S1(n2[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_19.INIT0 = 16'haaa0;
    defparam counter_33_add_4_19.INIT1 = 16'haaa0;
    defparam counter_33_add_4_19.INJECT1_0 = "NO";
    defparam counter_33_add_4_19.INJECT1_1 = "NO";
    FD1S3IX counter_33__i1 (.D(n2[1]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i1.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i31 (.D(n3[31]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[31])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i31.GSR = "ENABLED";
    CCU2C counter_33_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3662), .COUT(n3663), .S0(n2[15]), .S1(n2[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_17.INIT0 = 16'haaa0;
    defparam counter_33_add_4_17.INIT1 = 16'haaa0;
    defparam counter_33_add_4_17.INJECT1_0 = "NO";
    defparam counter_33_add_4_17.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3661), .COUT(n3662), .S0(n2[13]), .S1(n2[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_15.INIT0 = 16'haaa0;
    defparam counter_33_add_4_15.INIT1 = 16'haaa0;
    defparam counter_33_add_4_15.INJECT1_0 = "NO";
    defparam counter_33_add_4_15.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3660), .COUT(n3661), .S0(n2[11]), .S1(n2[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_13.INIT0 = 16'haaa0;
    defparam counter_33_add_4_13.INIT1 = 16'haaa0;
    defparam counter_33_add_4_13.INJECT1_0 = "NO";
    defparam counter_33_add_4_13.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3659), .COUT(n3660), .S0(n2[9]), .S1(n2[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_11.INIT0 = 16'haaa0;
    defparam counter_33_add_4_11.INIT1 = 16'haaa0;
    defparam counter_33_add_4_11.INJECT1_0 = "NO";
    defparam counter_33_add_4_11.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3658), .COUT(n3659), .S0(n2[7]), .S1(n2[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_9.INIT0 = 16'haaa0;
    defparam counter_33_add_4_9.INIT1 = 16'haaa0;
    defparam counter_33_add_4_9.INJECT1_0 = "NO";
    defparam counter_33_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3657), .COUT(n3658), .S0(n2[5]), .S1(n2[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_7.INIT0 = 16'haaa0;
    defparam counter_33_add_4_7.INIT1 = 16'haaa0;
    defparam counter_33_add_4_7.INJECT1_0 = "NO";
    defparam counter_33_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3656), .COUT(n3657), .S0(n2[3]), .S1(n2[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_5.INIT0 = 16'haaa0;
    defparam counter_33_add_4_5.INIT1 = 16'haaa0;
    defparam counter_33_add_4_5.INJECT1_0 = "NO";
    defparam counter_33_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3655), .COUT(n3656), .S0(n2[1]), .S1(n2[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_3.INIT0 = 16'haaa0;
    defparam counter_33_add_4_3.INIT1 = 16'haaa0;
    defparam counter_33_add_4_3.INJECT1_0 = "NO";
    defparam counter_33_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_33_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3655), .S1(n2[0]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33_add_4_1.INIT0 = 16'h0000;
    defparam counter_33_add_4_1.INIT1 = 16'h555f;
    defparam counter_33_add_4_1.INJECT1_0 = "NO";
    defparam counter_33_add_4_1.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_33 (.A0(freq_update_counter[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3654), .S0(n3[31]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_33.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_33.INIT1 = 16'h0000;
    defparam freq_update_counter_34_add_4_33.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_33.INJECT1_1 = "NO";
    FD1S3IX freq_update_counter_34__i30 (.D(n3[30]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[30])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i30.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i29 (.D(n3[29]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[29])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i29.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i28 (.D(n3[28]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[28])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i28.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i27 (.D(n3[27]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[27])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i27.GSR = "ENABLED";
    CCU2C freq_update_counter_34_add_4_31 (.A0(freq_update_counter[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3653), .COUT(n3654), .S0(n3[29]), 
          .S1(n3[30]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_31.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_31.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_31.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_31.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_29 (.A0(freq_update_counter[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3652), .COUT(n3653), .S0(n3[27]), 
          .S1(n3[28]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_29.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_29.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_29.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_29.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_27 (.A0(freq_update_counter[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3651), .COUT(n3652), .S0(n3[25]), 
          .S1(n3[26]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_27.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_27.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_27.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_27.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_25 (.A0(freq_update_counter[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3650), .COUT(n3651), .S0(n3[23]), 
          .S1(n3[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_25.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_25.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_25.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_25.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_23 (.A0(freq_update_counter[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3649), .COUT(n3650), .S0(n3[21]), 
          .S1(n3[22]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_23.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_23.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_23.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_23.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_21 (.A0(freq_update_counter[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3648), .COUT(n3649), .S0(n3[19]), 
          .S1(n3[20]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_21.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_21.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_21.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_21.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_19 (.A0(freq_update_counter[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3647), .COUT(n3648), .S0(n3[17]), 
          .S1(n3[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_19.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_19.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_19.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_19.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_17 (.A0(freq_update_counter[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3646), .COUT(n3647), .S0(n3[15]), 
          .S1(n3[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_17.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_17.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_17.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_17.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_15 (.A0(freq_update_counter[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3645), .COUT(n3646), .S0(n3[13]), 
          .S1(n3[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_15.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_15.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_15.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_15.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_13 (.A0(freq_update_counter[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3644), .COUT(n3645), .S0(n3[11]), 
          .S1(n3[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_13.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_13.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_13.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_13.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_11 (.A0(freq_update_counter[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3643), .COUT(n3644), .S0(n3[9]), 
          .S1(n3[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_11.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_11.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_11.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_11.INJECT1_1 = "NO";
    FD1S3IX freq_update_counter_34__i26 (.D(n3[26]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[26])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i26.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i25 (.D(n3[25]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i25.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i24 (.D(n3[24]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i24.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i23 (.D(n3[23]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i23.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i22 (.D(n3[22]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i22.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i21 (.D(n3[21]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i21.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i20 (.D(n3[20]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i20.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i19 (.D(n3[19]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i19.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i18 (.D(n3[18]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i18.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i17 (.D(n3[17]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i17.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i16 (.D(n3[16]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i16.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i15 (.D(n3[15]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i15.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i14 (.D(n3[14]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i14.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i13 (.D(n3[13]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i13.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i12 (.D(n3[12]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i12.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i11 (.D(n3[11]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i11.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i10 (.D(n3[10]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i10.GSR = "ENABLED";
    CCU2C freq_update_counter_34_add_4_9 (.A0(freq_update_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3642), .COUT(n3643), .S0(n3[7]), 
          .S1(n3[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_9.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_9.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_9.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_9.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_7 (.A0(freq_update_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3641), .COUT(n3642), .S0(n3[5]), 
          .S1(n3[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_7.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_7.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_7.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_7.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_5 (.A0(freq_update_counter[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3640), .COUT(n3641), .S0(n3[3]), 
          .S1(n3[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_5.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_5.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_5.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_5.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_3 (.A0(freq_update_counter[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(freq_update_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3639), .COUT(n3640), .S0(n3[1]), 
          .S1(n3[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_3.INIT0 = 16'haaa0;
    defparam freq_update_counter_34_add_4_3.INIT1 = 16'haaa0;
    defparam freq_update_counter_34_add_4_3.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_3.INJECT1_1 = "NO";
    CCU2C freq_update_counter_34_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freq_update_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3639), .S1(n3[0]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34_add_4_1.INIT0 = 16'h0000;
    defparam freq_update_counter_34_add_4_1.INIT1 = 16'h555f;
    defparam freq_update_counter_34_add_4_1.INJECT1_0 = "NO";
    defparam freq_update_counter_34_add_4_1.INJECT1_1 = "NO";
    CCU2C add_100_21 (.A0(\current_wave_freq[21] ), .B0(n7861), .C0(n1409[23]), 
          .D0(n3607[17]), .A1(\current_wave_freq[22] ), .B1(n7861), .C1(n1409[24]), 
          .D1(n3607[18]), .CIN(n3637), .S0(n1[23]), .S1(n1[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_21.INIT0 = 16'ha965;
    defparam add_100_21.INIT1 = 16'ha965;
    defparam add_100_21.INJECT1_0 = "NO";
    defparam add_100_21.INJECT1_1 = "NO";
    CCU2C add_100_19 (.A0(\current_wave_freq[19] ), .B0(n7861), .C0(n1409[21]), 
          .D0(n3607[15]), .A1(\current_wave_freq[20] ), .B1(n7861), .C1(n1409[22]), 
          .D1(n3607[16]), .CIN(n3636), .COUT(n3637), .S0(n1[21]), .S1(n1[22]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_19.INIT0 = 16'ha965;
    defparam add_100_19.INIT1 = 16'ha965;
    defparam add_100_19.INJECT1_0 = "NO";
    defparam add_100_19.INJECT1_1 = "NO";
    CCU2C add_100_17 (.A0(\current_wave_freq[17] ), .B0(n7861), .C0(n1409[19]), 
          .D0(n3607[13]), .A1(\current_wave_freq[18] ), .B1(n7861), .C1(n1409[20]), 
          .D1(n3607[14]), .CIN(n3635), .COUT(n3636), .S0(n1[19]), .S1(n1[20]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_17.INIT0 = 16'ha965;
    defparam add_100_17.INIT1 = 16'ha965;
    defparam add_100_17.INJECT1_0 = "NO";
    defparam add_100_17.INJECT1_1 = "NO";
    CCU2C add_100_15 (.A0(\current_wave_freq[15] ), .B0(n7861), .C0(n1409[17]), 
          .D0(n3607[11]), .A1(\current_wave_freq[16] ), .B1(n7861), .C1(n1409[18]), 
          .D1(n3607[12]), .CIN(n3634), .COUT(n3635), .S0(n1[17]), .S1(n1[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_15.INIT0 = 16'ha965;
    defparam add_100_15.INIT1 = 16'ha965;
    defparam add_100_15.INJECT1_0 = "NO";
    defparam add_100_15.INJECT1_1 = "NO";
    CCU2C add_100_13 (.A0(\current_wave_freq[13] ), .B0(n7861), .C0(n1409[15]), 
          .D0(n3607[9]), .A1(\current_wave_freq[14] ), .B1(n7861), .C1(n1409[16]), 
          .D1(n3607[10]), .CIN(n3633), .COUT(n3634), .S0(n1[15]), .S1(n1[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_13.INIT0 = 16'ha965;
    defparam add_100_13.INIT1 = 16'ha965;
    defparam add_100_13.INJECT1_0 = "NO";
    defparam add_100_13.INJECT1_1 = "NO";
    CCU2C add_100_11 (.A0(\current_wave_freq[11] ), .B0(n7861), .C0(n1409[13]), 
          .D0(n3607[7]), .A1(\current_wave_freq[12] ), .B1(n7861), .C1(n1409[14]), 
          .D1(n3607[8]), .CIN(n3632), .COUT(n3633), .S0(n1[13]), .S1(n1[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_11.INIT0 = 16'ha965;
    defparam add_100_11.INIT1 = 16'ha965;
    defparam add_100_11.INJECT1_0 = "NO";
    defparam add_100_11.INJECT1_1 = "NO";
    CCU2C add_100_9 (.A0(n8539), .B0(n7861), .C0(n1409[11]), .D0(n3607[5]), 
          .A1(n8537), .B1(n7861), .C1(n1409[12]), .D1(n3607[6]), .CIN(n3631), 
          .COUT(n3632), .S0(n1[11]), .S1(n1[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_9.INIT0 = 16'ha965;
    defparam add_100_9.INIT1 = 16'ha965;
    defparam add_100_9.INJECT1_0 = "NO";
    defparam add_100_9.INJECT1_1 = "NO";
    FD1S3IX freq_update_counter_34__i9 (.D(n3[9]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i9.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i8 (.D(n3[8]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i8.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i7 (.D(n3[7]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i7.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i6 (.D(n3[6]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i6.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i5 (.D(n3[5]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i5.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i4 (.D(n3[4]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i4.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i3 (.D(n3[3]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i3.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i2 (.D(n3[2]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i2.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i1 (.D(n3[1]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i1.GSR = "ENABLED";
    FD1S3IX freq_update_counter_34__i0 (.D(n3[0]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_23), 
            .Q(freq_update_counter[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(47[36:59])
    defparam freq_update_counter_34__i0.GSR = "ENABLED";
    CCU2C add_100_7 (.A0(n8543), .B0(n7861), .C0(n1409[9]), .D0(n3607[3]), 
          .A1(n8541), .B1(n7861), .C1(n1409[10]), .D1(n3607[4]), .CIN(n3630), 
          .COUT(n3631), .S0(n1[9]), .S1(n1[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_7.INIT0 = 16'ha965;
    defparam add_100_7.INIT1 = 16'ha965;
    defparam add_100_7.INJECT1_0 = "NO";
    defparam add_100_7.INJECT1_1 = "NO";
    CCU2C add_100_5 (.A0(n8547), .B0(n7861), .C0(n1409[7]), .D0(n3607[1]), 
          .A1(n8545), .B1(n7861), .C1(n1409[8]), .D1(n3607[2]), .CIN(n3629), 
          .COUT(n3630), .S0(n1[7]), .S1(n1[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_5.INIT0 = 16'ha965;
    defparam add_100_5.INIT1 = 16'ha965;
    defparam add_100_5.INJECT1_0 = "NO";
    defparam add_100_5.INJECT1_1 = "NO";
    CCU2C add_100_3 (.A0(n8551), .B0(n50_adj_331), .C0(n3110), .D0(n1409[5]), 
          .A1(\current_wave_freq[4] ), .B1(n7861), .C1(n1409[6]), .D1(n3237), 
          .CIN(n3628), .COUT(n3629), .S0(n1[5]), .S1(n1[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_3.INIT0 = 16'h5655;
    defparam add_100_3.INIT1 = 16'ha965;
    defparam add_100_3.INJECT1_0 = "NO";
    defparam add_100_3.INJECT1_1 = "NO";
    CCU2C add_100_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3628), .S1(n1[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_100_1.INIT0 = 16'h0000;
    defparam add_100_1.INIT1 = 16'haaaf;
    defparam add_100_1.INJECT1_0 = "NO";
    defparam add_100_1.INJECT1_1 = "NO";
    CCU2C add_99_21 (.A0(n3607[18]), .B0(\current_wave_freq[21] ), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3627), .S0(n1409[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_21.INIT0 = 16'h999a;
    defparam add_99_21.INIT1 = 16'h0000;
    defparam add_99_21.INJECT1_0 = "NO";
    defparam add_99_21.INJECT1_1 = "NO";
    CCU2C add_99_19 (.A0(n3607[16]), .B0(\current_wave_freq[19] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3607[17]), .B1(\current_wave_freq[20] ), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3626), .COUT(n3627), .S0(n1409[22]), 
          .S1(n1409[23]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_19.INIT0 = 16'h999a;
    defparam add_99_19.INIT1 = 16'h999a;
    defparam add_99_19.INJECT1_0 = "NO";
    defparam add_99_19.INJECT1_1 = "NO";
    CCU2C add_99_17 (.A0(n3607[14]), .B0(\current_wave_freq[17] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3607[15]), .B1(\current_wave_freq[18] ), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3625), .COUT(n3626), .S0(n1409[20]), 
          .S1(n1409[21]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_17.INIT0 = 16'h999a;
    defparam add_99_17.INIT1 = 16'h999a;
    defparam add_99_17.INJECT1_0 = "NO";
    defparam add_99_17.INJECT1_1 = "NO";
    CCU2C add_99_15 (.A0(n3607[12]), .B0(\current_wave_freq[15] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3607[13]), .B1(\current_wave_freq[16] ), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3624), .COUT(n3625), .S0(n1409[18]), 
          .S1(n1409[19]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_15.INIT0 = 16'h999a;
    defparam add_99_15.INIT1 = 16'h999a;
    defparam add_99_15.INJECT1_0 = "NO";
    defparam add_99_15.INJECT1_1 = "NO";
    CCU2C add_99_13 (.A0(n3607[10]), .B0(\current_wave_freq[13] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3607[11]), .B1(\current_wave_freq[14] ), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3623), .COUT(n3624), .S0(n1409[16]), 
          .S1(n1409[17]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_13.INIT0 = 16'h999a;
    defparam add_99_13.INIT1 = 16'h999a;
    defparam add_99_13.INJECT1_0 = "NO";
    defparam add_99_13.INJECT1_1 = "NO";
    CCU2C add_99_11 (.A0(n3607[8]), .B0(\current_wave_freq[11] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3607[9]), .B1(\current_wave_freq[12] ), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3622), .COUT(n3623), .S0(n1409[14]), .S1(n1409[15]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_11.INIT0 = 16'h999a;
    defparam add_99_11.INIT1 = 16'h999a;
    defparam add_99_11.INJECT1_0 = "NO";
    defparam add_99_11.INJECT1_1 = "NO";
    CCU2C add_99_9 (.A0(n3607[6]), .B0(n8539), .C0(GND_net), .D0(VCC_net), 
          .A1(n3607[7]), .B1(n8537), .C1(GND_net), .D1(VCC_net), .CIN(n3621), 
          .COUT(n3622), .S0(n1409[12]), .S1(n1409[13]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_9.INIT0 = 16'h999a;
    defparam add_99_9.INIT1 = 16'h999a;
    defparam add_99_9.INJECT1_0 = "NO";
    defparam add_99_9.INJECT1_1 = "NO";
    CCU2C add_99_7 (.A0(n3607[4]), .B0(n8543), .C0(GND_net), .D0(VCC_net), 
          .A1(n3607[5]), .B1(n8541), .C1(GND_net), .D1(VCC_net), .CIN(n3620), 
          .COUT(n3621), .S0(n1409[10]), .S1(n1409[11]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_7.INIT0 = 16'h999a;
    defparam add_99_7.INIT1 = 16'h999a;
    defparam add_99_7.INJECT1_0 = "NO";
    defparam add_99_7.INJECT1_1 = "NO";
    CCU2C add_99_5 (.A0(n3607[2]), .B0(n8547), .C0(GND_net), .D0(VCC_net), 
          .A1(n3607[3]), .B1(\current_wave_freq[6] ), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3619), .COUT(n3620), .S0(n1409[8]), .S1(n1409[9]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_5.INIT0 = 16'h999a;
    defparam add_99_5.INIT1 = 16'h999a;
    defparam add_99_5.INJECT1_0 = "NO";
    defparam add_99_5.INJECT1_1 = "NO";
    CCU2C add_99_3 (.A0(n3108), .B0(\current_wave_freq[2] ), .C0(n8551), 
          .D0(VCC_net), .A1(n3607[1]), .B1(n8549), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3618), .COUT(n3619), .S0(n1409[6]), .S1(n1409[7]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_3.INIT0 = 16'hb4bb;
    defparam add_99_3.INIT1 = 16'h999a;
    defparam add_99_3.INJECT1_0 = "NO";
    defparam add_99_3.INJECT1_1 = "NO";
    CCU2C add_99_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3618), .S1(n1409[5]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_99_1.INIT0 = 16'h0000;
    defparam add_99_1.INIT1 = 16'haaaf;
    defparam add_99_1.INJECT1_0 = "NO";
    defparam add_99_1.INJECT1_1 = "NO";
    CCU2C add_98_19 (.A0(n7896), .B0(n8105), .C0(n50_adj_332), .D0(n3257), 
          .A1(n7895), .B1(n8105), .C1(n50_adj_332), .D1(n3361), .CIN(n3616), 
          .S0(n3607[17]), .S1(n3607[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_19.INIT0 = 16'ha9aa;
    defparam add_98_19.INIT1 = 16'ha9aa;
    defparam add_98_19.INJECT1_0 = "NO";
    defparam add_98_19.INJECT1_1 = "NO";
    CCU2C add_98_17 (.A0(n7894), .B0(n8105), .C0(n50_adj_332), .D0(n3040), 
          .A1(n7893), .B1(n8105), .C1(n50_adj_332), .D1(n3150), .CIN(n3615), 
          .COUT(n3616), .S0(n3607[15]), .S1(n3607[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_17.INIT0 = 16'ha9aa;
    defparam add_98_17.INIT1 = 16'ha9aa;
    defparam add_98_17.INJECT1_0 = "NO";
    defparam add_98_17.INJECT1_1 = "NO";
    CCU2C add_98_15 (.A0(n7892), .B0(n8105), .C0(n50_adj_332), .D0(n2811), 
          .A1(n7891), .B1(n8105), .C1(n50_adj_332), .D1(n2927), .CIN(n3614), 
          .COUT(n3615), .S0(n3607[13]), .S1(n3607[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_15.INIT0 = 16'ha9aa;
    defparam add_98_15.INIT1 = 16'ha9aa;
    defparam add_98_15.INJECT1_0 = "NO";
    defparam add_98_15.INJECT1_1 = "NO";
    CCU2C add_98_13 (.A0(n7890), .B0(n8105), .C0(n50_adj_332), .D0(n2570), 
          .A1(n7889), .B1(n8105), .C1(n50_adj_332), .D1(n2692), .CIN(n3613), 
          .COUT(n3614), .S0(n3607[11]), .S1(n3607[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_13.INIT0 = 16'ha9aa;
    defparam add_98_13.INIT1 = 16'ha9aa;
    defparam add_98_13.INJECT1_0 = "NO";
    defparam add_98_13.INJECT1_1 = "NO";
    CCU2C add_98_11 (.A0(n7904), .B0(n8105), .C0(n50_adj_332), .D0(n2317), 
          .A1(n7903), .B1(n8105), .C1(n50_adj_332), .D1(n2445), .CIN(n3612), 
          .COUT(n3613), .S0(n3607[9]), .S1(n3607[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_11.INIT0 = 16'ha9aa;
    defparam add_98_11.INIT1 = 16'ha9aa;
    defparam add_98_11.INJECT1_0 = "NO";
    defparam add_98_11.INJECT1_1 = "NO";
    CCU2C add_98_9 (.A0(n7902), .B0(n8105), .C0(n50_adj_332), .D0(n2052), 
          .A1(n7901), .B1(n8105), .C1(n50_adj_332), .D1(n2186), .CIN(n3611), 
          .COUT(n3612), .S0(n3607[7]), .S1(n3607[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_9.INIT0 = 16'ha9aa;
    defparam add_98_9.INIT1 = 16'ha9aa;
    defparam add_98_9.INJECT1_0 = "NO";
    defparam add_98_9.INJECT1_1 = "NO";
    CCU2C add_98_7 (.A0(n7900), .B0(n8105), .C0(n50_adj_332), .D0(n1775), 
          .A1(n7899), .B1(n8105), .C1(n50_adj_332), .D1(n1915), .CIN(n3610), 
          .COUT(n3611), .S0(n3607[5]), .S1(n3607[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_7.INIT0 = 16'ha9aa;
    defparam add_98_7.INIT1 = 16'ha9aa;
    defparam add_98_7.INJECT1_0 = "NO";
    defparam add_98_7.INJECT1_1 = "NO";
    CCU2C add_98_5 (.A0(n7898), .B0(n8105), .C0(n50_adj_332), .D0(n1336_adj_333), 
          .A1(n7897), .B1(n8105), .C1(n50_adj_332), .D1(n1776), .CIN(n3609), 
          .COUT(n3610), .S0(n3607[3]), .S1(n3607[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_5.INIT0 = 16'ha9aa;
    defparam add_98_5.INIT1 = 16'ha9aa;
    defparam add_98_5.INJECT1_0 = "NO";
    defparam add_98_5.INJECT1_1 = "NO";
    CCU2C add_98_3 (.A0(n3108), .B0(n8551), .C0(n1355[7]), .D0(n3105), 
          .A1(n3127), .B1(n8105), .C1(n50_adj_332), .D1(n1184), .CIN(n3608), 
          .COUT(n3609), .S0(n3607[1]), .S1(n3607[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_3.INIT0 = 16'h11e1;
    defparam add_98_3.INIT1 = 16'ha9aa;
    defparam add_98_3.INJECT1_0 = "NO";
    defparam add_98_3.INJECT1_1 = "NO";
    CCU2C add_98_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n50_adj_332), .B1(n8105), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3608));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_98_1.INIT0 = 16'h0000;
    defparam add_98_1.INIT1 = 16'heee1;
    defparam add_98_1.INJECT1_0 = "NO";
    defparam add_98_1.INJECT1_1 = "NO";
    CCU2C add_97_19 (.A0(\current_wave_freq[19] ), .B0(n3102), .C0(n1328[24]), 
          .D0(n7954), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3604), .S0(n1355[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_19.INIT0 = 16'ha965;
    defparam add_97_19.INIT1 = 16'h0000;
    defparam add_97_19.INJECT1_0 = "NO";
    defparam add_97_19.INJECT1_1 = "NO";
    CCU2C add_97_17 (.A0(\current_wave_freq[17] ), .B0(n3102), .C0(n1328[22]), 
          .D0(n7951), .A1(\current_wave_freq[18] ), .B1(n3102), .C1(n1328[23]), 
          .D1(n7953), .CIN(n3603), .COUT(n3604), .S0(n1355[22]), .S1(n1355[23]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_17.INIT0 = 16'ha965;
    defparam add_97_17.INIT1 = 16'ha965;
    defparam add_97_17.INJECT1_0 = "NO";
    defparam add_97_17.INJECT1_1 = "NO";
    CCU2C add_97_15 (.A0(\current_wave_freq[15] ), .B0(n3102), .C0(n1328[20]), 
          .D0(n7949), .A1(\current_wave_freq[16] ), .B1(n3102), .C1(n1328[21]), 
          .D1(n7952), .CIN(n3602), .COUT(n3603), .S0(n1355[20]), .S1(n1355[21]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_15.INIT0 = 16'ha965;
    defparam add_97_15.INIT1 = 16'ha965;
    defparam add_97_15.INJECT1_0 = "NO";
    defparam add_97_15.INJECT1_1 = "NO";
    CCU2C add_97_13 (.A0(\current_wave_freq[13] ), .B0(n3102), .C0(n1328[18]), 
          .D0(n7962), .A1(\current_wave_freq[14] ), .B1(n3102), .C1(n1328[19]), 
          .D1(n7950), .CIN(n3601), .COUT(n3602), .S0(n1355[18]), .S1(n1355[19]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_13.INIT0 = 16'ha965;
    defparam add_97_13.INIT1 = 16'ha965;
    defparam add_97_13.INJECT1_0 = "NO";
    defparam add_97_13.INJECT1_1 = "NO";
    CCU2C add_97_11 (.A0(\current_wave_freq[11] ), .B0(n3102), .C0(n1328[16]), 
          .D0(n7959), .A1(\current_wave_freq[12] ), .B1(n3102), .C1(n1328[17]), 
          .D1(n7961), .CIN(n3600), .COUT(n3601), .S0(n1355[16]), .S1(n1355[17]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_11.INIT0 = 16'ha965;
    defparam add_97_11.INIT1 = 16'ha965;
    defparam add_97_11.INJECT1_0 = "NO";
    defparam add_97_11.INJECT1_1 = "NO";
    CCU2C add_97_9 (.A0(n8539), .B0(n3102), .C0(n1328[14]), .D0(n7958), 
          .A1(n8537), .B1(n3102), .C1(n1328[15]), .D1(n7960), .CIN(n3599), 
          .COUT(n3600), .S0(n1355[14]), .S1(n1355[15]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_9.INIT0 = 16'ha965;
    defparam add_97_9.INIT1 = 16'ha965;
    defparam add_97_9.INJECT1_0 = "NO";
    defparam add_97_9.INJECT1_1 = "NO";
    CCU2C add_97_7 (.A0(n8543), .B0(n3102), .C0(n1328[12]), .D0(n7955), 
          .A1(n8541), .B1(n3102), .C1(n1328[13]), .D1(n7957), .CIN(n3598), 
          .COUT(n3599), .S0(n1355[12]), .S1(n1355[13]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_7.INIT0 = 16'ha965;
    defparam add_97_7.INIT1 = 16'ha965;
    defparam add_97_7.INJECT1_0 = "NO";
    defparam add_97_7.INJECT1_1 = "NO";
    CCU2C add_97_5 (.A0(n8547), .B0(n3102), .C0(n1328[10]), .D0(n2900), 
          .A1(n8545), .B1(n3102), .C1(n1328[11]), .D1(n7956), .CIN(n3597), 
          .COUT(n3598), .S0(n1355[10]), .S1(n1355[11]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_5.INIT0 = 16'ha965;
    defparam add_97_5.INIT1 = 16'ha965;
    defparam add_97_5.INJECT1_0 = "NO";
    defparam add_97_5.INJECT1_1 = "NO";
    CCU2C add_97_3 (.A0(n8551), .B0(n50_adj_334), .C0(n8099), .D0(n1328[8]), 
          .A1(\current_wave_freq[4] ), .B1(n3102), .C1(n1328[9]), .D1(n2901), 
          .CIN(n3596), .COUT(n3597), .S0(n1355[8]), .S1(n1355[9]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_3.INIT0 = 16'h5655;
    defparam add_97_3.INIT1 = 16'ha965;
    defparam add_97_3.INJECT1_0 = "NO";
    defparam add_97_3.INJECT1_1 = "NO";
    CCU2C add_97_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3596), .S1(n1355[7]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_97_1.INIT0 = 16'h0000;
    defparam add_97_1.INIT1 = 16'haaaf;
    defparam add_97_1.INJECT1_0 = "NO";
    defparam add_97_1.INJECT1_1 = "NO";
    CCU2C add_96_18 (.A0(\current_wave_freq[17] ), .B0(n3099), .C0(n1301[23]), 
          .D0(n7980), .A1(\current_wave_freq[18] ), .B1(n3099), .C1(n1301[24]), 
          .D1(n7981), .CIN(n3594), .S0(n1328[23]), .S1(n1328[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_18.INIT0 = 16'ha965;
    defparam add_96_18.INIT1 = 16'ha965;
    defparam add_96_18.INJECT1_0 = "NO";
    defparam add_96_18.INJECT1_1 = "NO";
    CCU2C add_96_16 (.A0(\current_wave_freq[15] ), .B0(n3099), .C0(n1301[21]), 
          .D0(n7979), .A1(\current_wave_freq[16] ), .B1(n3099), .C1(n1301[22]), 
          .D1(n7978), .CIN(n3593), .COUT(n3594), .S0(n1328[21]), .S1(n1328[22]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_16.INIT0 = 16'ha965;
    defparam add_96_16.INIT1 = 16'ha965;
    defparam add_96_16.INJECT1_0 = "NO";
    defparam add_96_16.INJECT1_1 = "NO";
    CCU2C add_96_14 (.A0(\current_wave_freq[13] ), .B0(n3099), .C0(n1301[19]), 
          .D0(n7977), .A1(\current_wave_freq[14] ), .B1(n3099), .C1(n1301[20]), 
          .D1(n7976), .CIN(n3592), .COUT(n3593), .S0(n1328[19]), .S1(n1328[20]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_14.INIT0 = 16'ha965;
    defparam add_96_14.INIT1 = 16'ha965;
    defparam add_96_14.INJECT1_0 = "NO";
    defparam add_96_14.INJECT1_1 = "NO";
    CCU2C add_96_12 (.A0(\current_wave_freq[11] ), .B0(n3099), .C0(n1301[17]), 
          .D0(n7987), .A1(\current_wave_freq[12] ), .B1(n3099), .C1(n1301[18]), 
          .D1(n7988), .CIN(n3591), .COUT(n3592), .S0(n1328[17]), .S1(n1328[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_12.INIT0 = 16'ha965;
    defparam add_96_12.INIT1 = 16'ha965;
    defparam add_96_12.INJECT1_0 = "NO";
    defparam add_96_12.INJECT1_1 = "NO";
    CCU2C add_96_10 (.A0(n8539), .B0(n3099), .C0(n1301[15]), .D0(n7986), 
          .A1(n8537), .B1(n3099), .C1(n1301[16]), .D1(n7985), .CIN(n3590), 
          .COUT(n3591), .S0(n1328[15]), .S1(n1328[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_10.INIT0 = 16'ha965;
    defparam add_96_10.INIT1 = 16'ha965;
    defparam add_96_10.INJECT1_0 = "NO";
    defparam add_96_10.INJECT1_1 = "NO";
    CCU2C add_96_8 (.A0(n8543), .B0(n3099), .C0(n1301[13]), .D0(n7983), 
          .A1(n8541), .B1(n3099), .C1(n1301[14]), .D1(n7984), .CIN(n3589), 
          .COUT(n3590), .S0(n1328[13]), .S1(n1328[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_8.INIT0 = 16'ha965;
    defparam add_96_8.INIT1 = 16'ha965;
    defparam add_96_8.INJECT1_0 = "NO";
    defparam add_96_8.INJECT1_1 = "NO";
    CCU2C add_96_6 (.A0(n8547), .B0(n3099), .C0(n1301[11]), .D0(n2782), 
          .A1(\current_wave_freq[6] ), .B1(n3099), .C1(n1301[12]), .D1(n7982), 
          .CIN(n3588), .COUT(n3589), .S0(n1328[11]), .S1(n1328[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_6.INIT0 = 16'ha965;
    defparam add_96_6.INIT1 = 16'ha965;
    defparam add_96_6.INJECT1_0 = "NO";
    defparam add_96_6.INJECT1_1 = "NO";
    CCU2C add_96_4 (.A0(n8551), .B0(n50_adj_335), .C0(n3098), .D0(n1301[9]), 
          .A1(n8549), .B1(n3099), .C1(n1301[10]), .D1(n2783), .CIN(n3587), 
          .COUT(n3588), .S0(n1328[9]), .S1(n1328[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_4.INIT0 = 16'h5655;
    defparam add_96_4.INIT1 = 16'ha965;
    defparam add_96_4.INJECT1_0 = "NO";
    defparam add_96_4.INJECT1_1 = "NO";
    CCU2C add_96_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3587), .S1(n1328[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_96_2.INIT0 = 16'h000f;
    defparam add_96_2.INIT1 = 16'h5550;
    defparam add_96_2.INJECT1_0 = "NO";
    defparam add_96_2.INJECT1_1 = "NO";
    CCU2C add_95_17 (.A0(\current_wave_freq[17] ), .B0(n3096), .C0(n1274[24]), 
          .D0(n3563[13]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3586), .S0(n1301[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_17.INIT0 = 16'ha965;
    defparam add_95_17.INIT1 = 16'h0000;
    defparam add_95_17.INJECT1_0 = "NO";
    defparam add_95_17.INJECT1_1 = "NO";
    CCU2C add_95_15 (.A0(\current_wave_freq[15] ), .B0(n3096), .C0(n1274[22]), 
          .D0(n3563[11]), .A1(\current_wave_freq[16] ), .B1(n3096), .C1(n1274[23]), 
          .D1(n3563[12]), .CIN(n3585), .COUT(n3586), .S0(n1301[22]), 
          .S1(n1301[23]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_15.INIT0 = 16'ha965;
    defparam add_95_15.INIT1 = 16'ha965;
    defparam add_95_15.INJECT1_0 = "NO";
    defparam add_95_15.INJECT1_1 = "NO";
    CCU2C add_95_13 (.A0(\current_wave_freq[13] ), .B0(n3096), .C0(n1274[20]), 
          .D0(n3563[9]), .A1(\current_wave_freq[14] ), .B1(n3096), .C1(n1274[21]), 
          .D1(n3563[10]), .CIN(n3584), .COUT(n3585), .S0(n1301[20]), 
          .S1(n1301[21]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_13.INIT0 = 16'ha965;
    defparam add_95_13.INIT1 = 16'ha965;
    defparam add_95_13.INJECT1_0 = "NO";
    defparam add_95_13.INJECT1_1 = "NO";
    CCU2C add_95_11 (.A0(\current_wave_freq[11] ), .B0(n3096), .C0(n1274[18]), 
          .D0(n3563[7]), .A1(\current_wave_freq[12] ), .B1(n3096), .C1(n1274[19]), 
          .D1(n3563[8]), .CIN(n3583), .COUT(n3584), .S0(n1301[18]), 
          .S1(n1301[19]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_11.INIT0 = 16'ha965;
    defparam add_95_11.INIT1 = 16'ha965;
    defparam add_95_11.INJECT1_0 = "NO";
    defparam add_95_11.INJECT1_1 = "NO";
    CCU2C add_95_9 (.A0(n8539), .B0(n3096), .C0(n1274[16]), .D0(n3563[5]), 
          .A1(n8537), .B1(n3096), .C1(n1274[17]), .D1(n3563[6]), .CIN(n3582), 
          .COUT(n3583), .S0(n1301[16]), .S1(n1301[17]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_9.INIT0 = 16'ha965;
    defparam add_95_9.INIT1 = 16'ha965;
    defparam add_95_9.INJECT1_0 = "NO";
    defparam add_95_9.INJECT1_1 = "NO";
    CCU2C add_95_7 (.A0(n8543), .B0(n3096), .C0(n1274[14]), .D0(n3563[3]), 
          .A1(n8541), .B1(n3096), .C1(n1274[15]), .D1(n3563[4]), .CIN(n3581), 
          .COUT(n3582), .S0(n1301[14]), .S1(n1301[15]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_7.INIT0 = 16'ha965;
    defparam add_95_7.INIT1 = 16'ha965;
    defparam add_95_7.INJECT1_0 = "NO";
    defparam add_95_7.INJECT1_1 = "NO";
    CCU2C add_95_5 (.A0(n8547), .B0(n3096), .C0(n1274[12]), .D0(n3563[1]), 
          .A1(n8545), .B1(n3096), .C1(n1274[13]), .D1(n3563[2]), .CIN(n3580), 
          .COUT(n3581), .S0(n1301[12]), .S1(n1301[13]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_5.INIT0 = 16'ha965;
    defparam add_95_5.INIT1 = 16'ha965;
    defparam add_95_5.INJECT1_0 = "NO";
    defparam add_95_5.INJECT1_1 = "NO";
    CCU2C add_95_3 (.A0(n8551), .B0(n50_adj_336), .C0(n8098), .D0(n1274[10]), 
          .A1(n8549), .B1(n3096), .C1(n1274[11]), .D1(n2662), .CIN(n3579), 
          .COUT(n3580), .S0(n1301[10]), .S1(n1301[11]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_3.INIT0 = 16'h5655;
    defparam add_95_3.INIT1 = 16'ha965;
    defparam add_95_3.INJECT1_0 = "NO";
    defparam add_95_3.INJECT1_1 = "NO";
    CCU2C add_95_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3579), .S1(n1301[9]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_95_1.INIT0 = 16'h0000;
    defparam add_95_1.INIT1 = 16'haaaf;
    defparam add_95_1.INJECT1_0 = "NO";
    defparam add_95_1.INJECT1_1 = "NO";
    CCU2C add_94_15 (.A0(n3563[12]), .B0(\current_wave_freq[15] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3563[13]), .B1(\current_wave_freq[16] ), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3577), .S0(n1274[23]), .S1(n1274[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_15.INIT0 = 16'h999a;
    defparam add_94_15.INIT1 = 16'h999a;
    defparam add_94_15.INJECT1_0 = "NO";
    defparam add_94_15.INJECT1_1 = "NO";
    CCU2C add_94_13 (.A0(n3563[10]), .B0(\current_wave_freq[13] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3563[11]), .B1(\current_wave_freq[14] ), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3576), .COUT(n3577), .S0(n1274[21]), 
          .S1(n1274[22]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_13.INIT0 = 16'h999a;
    defparam add_94_13.INIT1 = 16'h999a;
    defparam add_94_13.INJECT1_0 = "NO";
    defparam add_94_13.INJECT1_1 = "NO";
    CCU2C add_94_11 (.A0(n3563[8]), .B0(\current_wave_freq[11] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3563[9]), .B1(\current_wave_freq[12] ), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3575), .COUT(n3576), .S0(n1274[19]), .S1(n1274[20]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_11.INIT0 = 16'h999a;
    defparam add_94_11.INIT1 = 16'h999a;
    defparam add_94_11.INJECT1_0 = "NO";
    defparam add_94_11.INJECT1_1 = "NO";
    CCU2C add_94_9 (.A0(n3563[6]), .B0(n8539), .C0(GND_net), .D0(VCC_net), 
          .A1(n3563[7]), .B1(n8537), .C1(GND_net), .D1(VCC_net), .CIN(n3574), 
          .COUT(n3575), .S0(n1274[17]), .S1(n1274[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_9.INIT0 = 16'h999a;
    defparam add_94_9.INIT1 = 16'h999a;
    defparam add_94_9.INJECT1_0 = "NO";
    defparam add_94_9.INJECT1_1 = "NO";
    CCU2C add_94_7 (.A0(n3563[4]), .B0(n8543), .C0(GND_net), .D0(VCC_net), 
          .A1(n3563[5]), .B1(n8541), .C1(GND_net), .D1(VCC_net), .CIN(n3573), 
          .COUT(n3574), .S0(n1274[15]), .S1(n1274[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_7.INIT0 = 16'h999a;
    defparam add_94_7.INIT1 = 16'h999a;
    defparam add_94_7.INJECT1_0 = "NO";
    defparam add_94_7.INJECT1_1 = "NO";
    CCU2C add_94_5 (.A0(n3563[2]), .B0(n8547), .C0(GND_net), .D0(VCC_net), 
          .A1(n3563[3]), .B1(n8545), .C1(GND_net), .D1(VCC_net), .CIN(n3572), 
          .COUT(n3573), .S0(n1274[13]), .S1(n1274[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_5.INIT0 = 16'h999a;
    defparam add_94_5.INIT1 = 16'h999a;
    defparam add_94_5.INJECT1_0 = "NO";
    defparam add_94_5.INJECT1_1 = "NO";
    CCU2C add_94_3 (.A0(n3093), .B0(\current_wave_freq[2] ), .C0(n8551), 
          .D0(VCC_net), .A1(n3563[1]), .B1(n8549), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3571), .COUT(n3572), .S0(n1274[11]), .S1(n1274[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_3.INIT0 = 16'hb4bb;
    defparam add_94_3.INIT1 = 16'h999a;
    defparam add_94_3.INJECT1_0 = "NO";
    defparam add_94_3.INJECT1_1 = "NO";
    CCU2C add_94_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3571), .S1(n1274[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_94_1.INIT0 = 16'h0000;
    defparam add_94_1.INIT1 = 16'haaaf;
    defparam add_94_1.INJECT1_0 = "NO";
    defparam add_94_1.INJECT1_1 = "NO";
    CCU2C add_93_15 (.A0(n8018), .B0(n3092), .C0(n50_adj_337), .D0(n2811), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3570), 
          .S0(n3563[13]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_15.INIT0 = 16'ha9aa;
    defparam add_93_15.INIT1 = 16'h0000;
    defparam add_93_15.INJECT1_0 = "NO";
    defparam add_93_15.INJECT1_1 = "NO";
    CCU2C add_93_13 (.A0(n8017), .B0(n3092), .C0(n50_adj_337), .D0(n2570), 
          .A1(n8016), .B1(n3092), .C1(n50_adj_337), .D1(n2692), .CIN(n3569), 
          .COUT(n3570), .S0(n3563[11]), .S1(n3563[12]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_13.INIT0 = 16'ha9aa;
    defparam add_93_13.INIT1 = 16'ha9aa;
    defparam add_93_13.INJECT1_0 = "NO";
    defparam add_93_13.INJECT1_1 = "NO";
    CCU2C add_93_11 (.A0(n8015), .B0(n3092), .C0(n50_adj_337), .D0(n2317), 
          .A1(n8014), .B1(n3092), .C1(n50_adj_337), .D1(n2445), .CIN(n3568), 
          .COUT(n3569), .S0(n3563[9]), .S1(n3563[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_11.INIT0 = 16'ha9aa;
    defparam add_93_11.INIT1 = 16'ha9aa;
    defparam add_93_11.INJECT1_0 = "NO";
    defparam add_93_11.INJECT1_1 = "NO";
    CCU2C add_93_9 (.A0(n8013), .B0(n3092), .C0(n50_adj_337), .D0(n2052), 
          .A1(n8012), .B1(n3092), .C1(n50_adj_337), .D1(n2186), .CIN(n3567), 
          .COUT(n3568), .S0(n3563[7]), .S1(n3563[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_9.INIT0 = 16'ha9aa;
    defparam add_93_9.INIT1 = 16'ha9aa;
    defparam add_93_9.INJECT1_0 = "NO";
    defparam add_93_9.INJECT1_1 = "NO";
    CCU2C add_93_7 (.A0(n8011), .B0(n3092), .C0(n50_adj_337), .D0(n1775), 
          .A1(n8010), .B1(n3092), .C1(n50_adj_337), .D1(n1915), .CIN(n3566), 
          .COUT(n3567), .S0(n3563[5]), .S1(n3563[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_7.INIT0 = 16'ha9aa;
    defparam add_93_7.INIT1 = 16'ha9aa;
    defparam add_93_7.INJECT1_0 = "NO";
    defparam add_93_7.INJECT1_1 = "NO";
    CCU2C add_93_5 (.A0(n2536), .B0(n3092), .C0(n50_adj_337), .D0(n1336_adj_333), 
          .A1(n8009), .B1(n3092), .C1(n50_adj_337), .D1(n1776), .CIN(n3565), 
          .COUT(n3566), .S0(n3563[3]), .S1(n3563[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_5.INIT0 = 16'ha9aa;
    defparam add_93_5.INIT1 = 16'ha9aa;
    defparam add_93_5.INJECT1_0 = "NO";
    defparam add_93_5.INJECT1_1 = "NO";
    CCU2C add_93_3 (.A0(n3093), .B0(n8551), .C0(n8120), .D0(n3090), 
          .A1(n2537), .B1(n3092), .C1(n50_adj_337), .D1(n1184), .CIN(n3564), 
          .COUT(n3565), .S0(n3563[1]), .S1(n3563[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_3.INIT0 = 16'heee1;
    defparam add_93_3.INIT1 = 16'ha9aa;
    defparam add_93_3.INJECT1_0 = "NO";
    defparam add_93_3.INJECT1_1 = "NO";
    CCU2C add_93_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n50_adj_337), .B1(n3092), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3564));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_93_1.INIT0 = 16'h0000;
    defparam add_93_1.INIT1 = 16'heee1;
    defparam add_93_1.INJECT1_0 = "NO";
    defparam add_93_1.INJECT1_1 = "NO";
    CCU2C add_92_13 (.A0(n3547[10]), .B0(\current_wave_freq[13] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3547[11]), .B1(\current_wave_freq[14] ), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3559), .S0(n1220[23]), .S1(n1220[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_92_13.INIT0 = 16'h999a;
    defparam add_92_13.INIT1 = 16'h999a;
    defparam add_92_13.INJECT1_0 = "NO";
    defparam add_92_13.INJECT1_1 = "NO";
    CCU2C add_92_11 (.A0(n3547[8]), .B0(\current_wave_freq[11] ), .C0(GND_net), 
          .D0(VCC_net), .A1(n3547[9]), .B1(\current_wave_freq[12] ), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3558), .COUT(n3559), .S0(n1220[21]), .S1(n1220[22]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_92_11.INIT0 = 16'h999a;
    defparam add_92_11.INIT1 = 16'h999a;
    defparam add_92_11.INJECT1_0 = "NO";
    defparam add_92_11.INJECT1_1 = "NO";
    CCU2C add_92_9 (.A0(n3547[6]), .B0(n8539), .C0(GND_net), .D0(VCC_net), 
          .A1(n3547[7]), .B1(n8537), .C1(GND_net), .D1(VCC_net), .CIN(n3557), 
          .COUT(n3558), .S0(n1220[19]), .S1(n1220[20]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_92_9.INIT0 = 16'h999a;
    defparam add_92_9.INIT1 = 16'h999a;
    defparam add_92_9.INJECT1_0 = "NO";
    defparam add_92_9.INJECT1_1 = "NO";
    CCU2C add_92_7 (.A0(n3547[4]), .B0(n8543), .C0(GND_net), .D0(VCC_net), 
          .A1(n3547[5]), .B1(n8541), .C1(GND_net), .D1(VCC_net), .CIN(n3556), 
          .COUT(n3557), .S0(n1220[17]), .S1(n1220[18]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_92_7.INIT0 = 16'h999a;
    defparam add_92_7.INIT1 = 16'h999a;
    defparam add_92_7.INJECT1_0 = "NO";
    defparam add_92_7.INJECT1_1 = "NO";
    CCU2C add_92_5 (.A0(n3547[2]), .B0(n8547), .C0(GND_net), .D0(VCC_net), 
          .A1(n3547[3]), .B1(n8545), .C1(GND_net), .D1(VCC_net), .CIN(n3555), 
          .COUT(n3556), .S0(n1220[15]), .S1(n1220[16]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_92_5.INIT0 = 16'h999a;
    defparam add_92_5.INIT1 = 16'h999a;
    defparam add_92_5.INJECT1_0 = "NO";
    defparam add_92_5.INJECT1_1 = "NO";
    CCU2C add_92_3 (.A0(n3087), .B0(\current_wave_freq[2] ), .C0(n8551), 
          .D0(VCC_net), .A1(n3547[1]), .B1(n8549), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3554), .COUT(n3555), .S0(n1220[13]), .S1(n1220[14]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_92_3.INIT0 = 16'hb4bb;
    defparam add_92_3.INIT1 = 16'h999a;
    defparam add_92_3.INJECT1_0 = "NO";
    defparam add_92_3.INJECT1_1 = "NO";
    CCU2C add_92_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3554));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_92_1.INIT0 = 16'h000F;
    defparam add_92_1.INIT1 = 16'haaaf;
    defparam add_92_1.INJECT1_0 = "NO";
    defparam add_92_1.INJECT1_1 = "NO";
    CCU2C add_91_13 (.A0(n3538[10]), .B0(n3086), .C0(n50_adj_338), .D0(n2570), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3553), 
          .S0(n3547[11]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_91_13.INIT0 = 16'ha9aa;
    defparam add_91_13.INIT1 = 16'h0000;
    defparam add_91_13.INJECT1_0 = "NO";
    defparam add_91_13.INJECT1_1 = "NO";
    CCU2C add_91_11 (.A0(n3538[8]), .B0(n3086), .C0(n50_adj_338), .D0(n2317), 
          .A1(n3538[9]), .B1(n3086), .C1(n50_adj_338), .D1(n2445), .CIN(n3552), 
          .COUT(n3553), .S0(n3547[9]), .S1(n3547[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_91_11.INIT0 = 16'ha9aa;
    defparam add_91_11.INIT1 = 16'ha9aa;
    defparam add_91_11.INJECT1_0 = "NO";
    defparam add_91_11.INJECT1_1 = "NO";
    CCU2C add_91_9 (.A0(n3538[6]), .B0(n3086), .C0(n50_adj_338), .D0(n2052), 
          .A1(n3538[7]), .B1(n3086), .C1(n50_adj_338), .D1(n2186), .CIN(n3551), 
          .COUT(n3552), .S0(n3547[7]), .S1(n3547[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_91_9.INIT0 = 16'ha9aa;
    defparam add_91_9.INIT1 = 16'ha9aa;
    defparam add_91_9.INJECT1_0 = "NO";
    defparam add_91_9.INJECT1_1 = "NO";
    CCU2C add_91_7 (.A0(n3538[4]), .B0(n3086), .C0(n50_adj_338), .D0(n1775), 
          .A1(n3538[5]), .B1(n3086), .C1(n50_adj_338), .D1(n1915), .CIN(n3550), 
          .COUT(n3551), .S0(n3547[5]), .S1(n3547[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_91_7.INIT0 = 16'ha9aa;
    defparam add_91_7.INIT1 = 16'ha9aa;
    defparam add_91_7.INJECT1_0 = "NO";
    defparam add_91_7.INJECT1_1 = "NO";
    CCU2C add_91_5 (.A0(n3538[2]), .B0(n3086), .C0(n50_adj_338), .D0(n1336_adj_333), 
          .A1(n3538[3]), .B1(n3086), .C1(n50_adj_338), .D1(n1776), .CIN(n3549), 
          .COUT(n3550), .S0(n3547[3]), .S1(n3547[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_91_5.INIT0 = 16'ha9aa;
    defparam add_91_5.INIT1 = 16'ha9aa;
    defparam add_91_5.INJECT1_0 = "NO";
    defparam add_91_5.INJECT1_1 = "NO";
    CCU2C add_91_3 (.A0(n3087), .B0(n8551), .C0(n8120), .D0(n8033), 
          .A1(n3538[1]), .B1(n3086), .C1(n50_adj_338), .D1(n1184), .CIN(n3548), 
          .COUT(n3549), .S0(n3547[1]), .S1(n3547[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_91_3.INIT0 = 16'heee1;
    defparam add_91_3.INIT1 = 16'ha9aa;
    defparam add_91_3.INJECT1_0 = "NO";
    defparam add_91_3.INJECT1_1 = "NO";
    CCU2C add_91_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n50_adj_338), .B1(n3086), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3548));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_91_1.INIT0 = 16'h0000;
    defparam add_91_1.INIT1 = 16'heee1;
    defparam add_91_1.INJECT1_0 = "NO";
    defparam add_91_1.INJECT1_1 = "NO";
    CCU2C add_90_11 (.A0(n8045), .B0(n8094), .C0(n50_adj_339), .D0(n2317), 
          .A1(n8048), .B1(n8094), .C1(n50_adj_339), .D1(n2445), .CIN(n3543), 
          .S0(n3538[9]), .S1(n3538[10]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_90_11.INIT0 = 16'ha9aa;
    defparam add_90_11.INIT1 = 16'ha9aa;
    defparam add_90_11.INJECT1_0 = "NO";
    defparam add_90_11.INJECT1_1 = "NO";
    CCU2C add_90_9 (.A0(n8047), .B0(n8094), .C0(n50_adj_339), .D0(n2052), 
          .A1(n8046), .B1(n8094), .C1(n50_adj_339), .D1(n2186), .CIN(n3542), 
          .COUT(n3543), .S0(n3538[7]), .S1(n3538[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_90_9.INIT0 = 16'ha9aa;
    defparam add_90_9.INIT1 = 16'ha9aa;
    defparam add_90_9.INJECT1_0 = "NO";
    defparam add_90_9.INJECT1_1 = "NO";
    CCU2C add_90_7 (.A0(n8041), .B0(n8094), .C0(n50_adj_339), .D0(n1775), 
          .A1(n8049), .B1(n8094), .C1(n50_adj_339), .D1(n1915), .CIN(n3541), 
          .COUT(n3542), .S0(n3538[5]), .S1(n3538[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_90_7.INIT0 = 16'ha9aa;
    defparam add_90_7.INIT1 = 16'ha9aa;
    defparam add_90_7.INJECT1_0 = "NO";
    defparam add_90_7.INJECT1_1 = "NO";
    CCU2C add_90_5 (.A0(n8043), .B0(n8094), .C0(n50_adj_339), .D0(n1336_adj_333), 
          .A1(n8042), .B1(n8094), .C1(n50_adj_339), .D1(n1776), .CIN(n3540), 
          .COUT(n3541), .S0(n3538[3]), .S1(n3538[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_90_5.INIT0 = 16'ha9aa;
    defparam add_90_5.INIT1 = 16'ha9aa;
    defparam add_90_5.INJECT1_0 = "NO";
    defparam add_90_5.INJECT1_1 = "NO";
    CCU2C add_90_3 (.A0(n8033), .B0(\current_wave_freq[3] ), .C0(n1139[15]), 
          .D0(n3081), .A1(n2147), .B1(n8094), .C1(n50_adj_339), .D1(n1184), 
          .CIN(n3539), .COUT(n3540), .S0(n3538[1]), .S1(n3538[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_90_3.INIT0 = 16'h11e1;
    defparam add_90_3.INIT1 = 16'ha9aa;
    defparam add_90_3.INJECT1_0 = "NO";
    defparam add_90_3.INJECT1_1 = "NO";
    CCU2C add_90_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n50_adj_339), .B1(n8094), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3539));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_90_1.INIT0 = 16'h0000;
    defparam add_90_1.INIT1 = 16'heee1;
    defparam add_90_1.INJECT1_0 = "NO";
    defparam add_90_1.INJECT1_1 = "NO";
    CCU2C add_89_12 (.A0(n3525[8]), .B0(\current_wave_freq[11] ), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3535), .S0(n1139[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_89_12.INIT0 = 16'h999a;
    defparam add_89_12.INIT1 = 16'h0000;
    defparam add_89_12.INJECT1_0 = "NO";
    defparam add_89_12.INJECT1_1 = "NO";
    CCU2C add_89_10 (.A0(n3525[6]), .B0(n8539), .C0(GND_net), .D0(VCC_net), 
          .A1(n3525[7]), .B1(n8537), .C1(GND_net), .D1(VCC_net), .CIN(n3534), 
          .COUT(n3535), .S0(n1139[22]), .S1(n1139[23]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_89_10.INIT0 = 16'h999a;
    defparam add_89_10.INIT1 = 16'h999a;
    defparam add_89_10.INJECT1_0 = "NO";
    defparam add_89_10.INJECT1_1 = "NO";
    CCU2C add_89_8 (.A0(n3525[4]), .B0(n8543), .C0(GND_net), .D0(VCC_net), 
          .A1(n3525[5]), .B1(n8541), .C1(GND_net), .D1(VCC_net), .CIN(n3533), 
          .COUT(n3534), .S0(n1139[20]), .S1(n1139[21]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_89_8.INIT0 = 16'h999a;
    defparam add_89_8.INIT1 = 16'h999a;
    defparam add_89_8.INJECT1_0 = "NO";
    defparam add_89_8.INJECT1_1 = "NO";
    CCU2C add_89_6 (.A0(n3525[2]), .B0(n8547), .C0(GND_net), .D0(VCC_net), 
          .A1(n3525[3]), .B1(n8545), .C1(GND_net), .D1(VCC_net), .CIN(n3532), 
          .COUT(n3533), .S0(n1139[18]), .S1(n1139[19]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_89_6.INIT0 = 16'h999a;
    defparam add_89_6.INIT1 = 16'h999a;
    defparam add_89_6.INJECT1_0 = "NO";
    defparam add_89_6.INJECT1_1 = "NO";
    CCU2C add_89_4 (.A0(n3078), .B0(\current_wave_freq[2] ), .C0(n8551), 
          .D0(VCC_net), .A1(n3525[1]), .B1(n8549), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3531), .COUT(n3532), .S0(n1139[16]), .S1(n1139[17]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_89_4.INIT0 = 16'hb4bb;
    defparam add_89_4.INIT1 = 16'h999a;
    defparam add_89_4.INJECT1_0 = "NO";
    defparam add_89_4.INJECT1_1 = "NO";
    CCU2C add_89_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3531), .S1(n1139[15]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_89_2.INIT0 = 16'h000f;
    defparam add_89_2.INIT1 = 16'h5550;
    defparam add_89_2.INJECT1_0 = "NO";
    defparam add_89_2.INJECT1_1 = "NO";
    CCU2C add_88_9 (.A0(n8065), .B0(n8097), .C0(n50), .D0(n2052), .A1(n8064), 
          .B1(n8097), .C1(n50), .D1(n2186), .CIN(n3529), .S0(n3525[7]), 
          .S1(n3525[8]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_88_9.INIT0 = 16'ha9aa;
    defparam add_88_9.INIT1 = 16'ha9aa;
    defparam add_88_9.INJECT1_0 = "NO";
    defparam add_88_9.INJECT1_1 = "NO";
    CCU2C add_88_7 (.A0(n8063), .B0(n8097), .C0(n50), .D0(n1775), .A1(n8062), 
          .B1(n8097), .C1(n50), .D1(n1915), .CIN(n3528), .COUT(n3529), 
          .S0(n3525[5]), .S1(n3525[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_88_7.INIT0 = 16'ha9aa;
    defparam add_88_7.INIT1 = 16'ha9aa;
    defparam add_88_7.INJECT1_0 = "NO";
    defparam add_88_7.INJECT1_1 = "NO";
    CCU2C add_88_5 (.A0(n1871), .B0(n8097), .C0(n50), .D0(n1336_adj_333), 
          .A1(n8061), .B1(n8097), .C1(n50), .D1(n1776), .CIN(n3527), 
          .COUT(n3528), .S0(n3525[3]), .S1(n3525[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_88_5.INIT0 = 16'ha9aa;
    defparam add_88_5.INIT1 = 16'ha9aa;
    defparam add_88_5.INJECT1_0 = "NO";
    defparam add_88_5.INJECT1_1 = "NO";
    CCU2C add_88_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n50), .B1(n8097), .C1(GND_net), .D1(VCC_net), .COUT(n3526));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_88_1.INIT0 = 16'h0000;
    defparam add_88_1.INIT1 = 16'heee1;
    defparam add_88_1.INJECT1_0 = "NO";
    defparam add_88_1.INJECT1_1 = "NO";
    CCU2C add_87_9 (.A0(n3514[6]), .B0(\current_wave_freq[9] ), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3522), .S0(n1085[24]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_87_9.INIT0 = 16'h999a;
    defparam add_87_9.INIT1 = 16'h0000;
    defparam add_87_9.INJECT1_0 = "NO";
    defparam add_87_9.INJECT1_1 = "NO";
    CCU2C add_87_7 (.A0(n3514[4]), .B0(n8543), .C0(GND_net), .D0(VCC_net), 
          .A1(n3514[5]), .B1(n8541), .C1(GND_net), .D1(VCC_net), .CIN(n3521), 
          .COUT(n3522), .S0(n1085[22]), .S1(n1085[23]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_87_7.INIT0 = 16'h999a;
    defparam add_87_7.INIT1 = 16'h999a;
    defparam add_87_7.INJECT1_0 = "NO";
    defparam add_87_7.INJECT1_1 = "NO";
    CCU2C add_87_5 (.A0(n3514[2]), .B0(n8547), .C0(GND_net), .D0(VCC_net), 
          .A1(n3514[3]), .B1(n8545), .C1(GND_net), .D1(VCC_net), .CIN(n3520), 
          .COUT(n3521), .S0(n1085[20]), .S1(n1085[21]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_87_5.INIT0 = 16'h999a;
    defparam add_87_5.INIT1 = 16'h999a;
    defparam add_87_5.INJECT1_0 = "NO";
    defparam add_87_5.INJECT1_1 = "NO";
    CCU2C add_87_3 (.A0(n3072), .B0(\current_wave_freq[2] ), .C0(n8551), 
          .D0(VCC_net), .A1(n3514[1]), .B1(\current_wave_freq[4] ), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3519), .COUT(n3520), .S0(n1085[18]), .S1(n1085[19]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_87_3.INIT0 = 16'hb4bb;
    defparam add_87_3.INIT1 = 16'h999a;
    defparam add_87_3.INJECT1_0 = "NO";
    defparam add_87_3.INJECT1_1 = "NO";
    CCU2C add_87_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\current_wave_freq[2] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3519), .S1(n1085[17]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_87_1.INIT0 = 16'h0000;
    defparam add_87_1.INIT1 = 16'haaaf;
    defparam add_87_1.INJECT1_0 = "NO";
    defparam add_87_1.INJECT1_1 = "NO";
    CCU2C add_86_7 (.A0(n8078), .B0(n3071), .C0(n50_adj_340), .D0(n1775), 
          .A1(n8077), .B1(n3071), .C1(n50_adj_340), .D1(n1915), .CIN(n3517), 
          .S0(n3514[5]), .S1(n3514[6]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_86_7.INIT0 = 16'ha9aa;
    defparam add_86_7.INIT1 = 16'ha9aa;
    defparam add_86_7.INJECT1_0 = "NO";
    defparam add_86_7.INJECT1_1 = "NO";
    CCU2C add_86_5 (.A0(n8076), .B0(n3071), .C0(n50_adj_340), .D0(n1336_adj_333), 
          .A1(n8075), .B1(n3071), .C1(n50_adj_340), .D1(n1776), .CIN(n3516), 
          .COUT(n3517), .S0(n3514[3]), .S1(n3514[4]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_86_5.INIT0 = 16'ha9aa;
    defparam add_86_5.INIT1 = 16'ha9aa;
    defparam add_86_5.INJECT1_0 = "NO";
    defparam add_86_5.INJECT1_1 = "NO";
    CCU2C add_86_3 (.A0(n3072), .B0(n8551), .C0(n8120), .D0(n6318), 
          .A1(n1585), .B1(n3071), .C1(n50_adj_340), .D1(n1184), .CIN(n3515), 
          .COUT(n3516), .S0(n3514[1]), .S1(n3514[2]));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_86_3.INIT0 = 16'heee1;
    defparam add_86_3.INIT1 = 16'ha9aa;
    defparam add_86_3.INJECT1_0 = "NO";
    defparam add_86_3.INJECT1_1 = "NO";
    CCU2C add_86_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n50_adj_340), .B1(n3071), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3515));   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam add_86_1.INIT0 = 16'h0000;
    defparam add_86_1.INIT1 = 16'heee1;
    defparam add_86_1.INJECT1_0 = "NO";
    defparam add_86_1.INJECT1_1 = "NO";
    FD1S3IX counter_33__i0 (.D(n2[0]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_54), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(37[24:35])
    defparam counter_33__i0.GSR = "ENABLED";
    LUT4 div_26_LessThan_2187_i33_2_lut_rep_306 (.A(n3607[10]), .B(\current_wave_freq[13] ), 
         .Z(n7869)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i33_2_lut_rep_306.init = 16'h6666;
    FD1P3AY increasing_freq_48 (.D(increasing_freq_N_289), .SP(clk_25mhz_c_enable_55), 
            .CK(clk_25mhz_c), .Q(increasing_freq)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam increasing_freq_48.GSR = "ENABLED";
    FD1S3AX wave_outP_45 (.D(wave_outP_N_285), .CK(clk_25mhz_c), .Q(wave_outP_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam wave_outP_45.GSR = "ENABLED";
    LUT4 i4599_1_lut_2_lut (.A(n50_adj_338), .B(n5023), .Z(half_period_31__N_259[10])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4599_1_lut_2_lut.init = 16'h1111;
    LUT4 div_26_i2099_3_lut_rep_341_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[15]), .D(n7934), .Z(n7904)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2099_3_lut_rep_341_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_2258_i14_3_lut_3_lut (.A(n7844), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2098_3_lut_rep_340_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[16]), .D(n7933), .Z(n7903)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2098_3_lut_rep_340_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_882_i46_4_lut (.A(n5664), .B(\current_wave_freq[4] ), 
         .C(n1286_adj_296), .D(n8091), .Z(n46)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_882_i46_4_lut.init = 16'h0c8e;
    LUT4 div_26_i2101_3_lut_rep_339_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[13]), .D(n7931), .Z(n7902)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2101_3_lut_rep_339_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2100_3_lut_rep_338_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[14]), .D(n7932), .Z(n7901)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2100_3_lut_rep_338_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_2039_i43_2_lut_rep_345_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[16] ), 
         .C(n1328[21]), .D(n7952), .Z(n7908)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i43_2_lut_rep_345_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i2103_3_lut_rep_337_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[11]), .D(n7930), .Z(n7900)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2103_3_lut_rep_337_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1721_1_lut_2_lut (.A(n50_adj_337), .B(n5011), .Z(half_period_31__N_259[8])) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1721_1_lut_2_lut.init = 16'h1111;
    LUT4 div_26_i1084_1_lut_2_lut (.A(n50_adj_340), .B(n3071), .Z(half_period_31__N_259[15])) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1084_1_lut_2_lut.init = 16'h1111;
    LUT4 div_26_i2102_3_lut_rep_336_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[12]), .D(n7929), .Z(n7899)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2102_3_lut_rep_336_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_983_i44_4_lut (.A(n5660), .B(\current_wave_freq[4] ), 
         .C(n1437_adj_342), .D(n50_adj_343), .Z(n44)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_983_i44_4_lut.init = 16'h0c8e;
    LUT4 i5645_4_lut_4_lut (.A(n7824), .B(n7254), .C(n40), .D(n16), 
         .Z(n42)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5645_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_i1944_3_lut_rep_399_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[18]), .D(n7988), .Z(n7962)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1944_3_lut_rep_399_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2105_3_lut_rep_335_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[9]), .D(n7927), .Z(n7898)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2105_3_lut_rep_335_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1945_3_lut_rep_398_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[17]), .D(n7987), .Z(n7961)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1945_3_lut_rep_398_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_2114_i22_3_lut_3_lut (.A(n7904), .B(\current_wave_freq[11] ), 
         .C(\current_wave_freq[7] ), .Z(n22)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i1058_3_lut_rep_514_3_lut_4_lut (.A(n50_adj_344), .B(n5200), 
         .C(n1031[24]), .D(n8083), .Z(n8077)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam div_26_i1058_3_lut_rep_514_3_lut_4_lut.init = 16'h10fe;
    LUT4 div_26_i1059_3_lut_rep_515_3_lut_4_lut (.A(n50_adj_344), .B(n5200), 
         .C(n1031[23]), .D(n8082), .Z(n8078)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1059_3_lut_rep_515_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4714_4_lut (.A(n8052), .B(n8054), .C(n8055), .D(n6419), .Z(n6428)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4714_4_lut.init = 16'h1011;
    LUT4 div_26_i1060_3_lut_rep_512_3_lut_4_lut (.A(n50_adj_344), .B(n5200), 
         .C(n1031[22]), .D(n1436), .Z(n8075)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1060_3_lut_rep_512_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1061_3_lut_rep_513_3_lut_4_lut (.A(n50_adj_344), .B(n5200), 
         .C(n1031[21]), .D(n1437_adj_342), .Z(n8076)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1061_3_lut_rep_513_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4609_1_lut_rep_516_2_lut (.A(n50_adj_344), .B(n5200), .Z(n8079)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4609_1_lut_rep_516_2_lut.init = 16'h1111;
    LUT4 div_26_i1947_3_lut_rep_397_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[15]), .D(n7986), .Z(n7960)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1947_3_lut_rep_397_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1946_3_lut_rep_396_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[16]), .D(n7985), .Z(n7959)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1946_3_lut_rep_396_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2104_3_lut_rep_334_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[10]), .D(n7928), .Z(n7897)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2104_3_lut_rep_334_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1948_3_lut_rep_395_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[14]), .D(n7984), .Z(n7958)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1948_3_lut_rep_395_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1949_3_lut_rep_394_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[13]), .D(n7983), .Z(n7957)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1949_3_lut_rep_394_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2091_3_lut_rep_333_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[23]), .D(n7925), .Z(n7896)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2091_3_lut_rep_333_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2090_3_lut_rep_332_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[24]), .D(n7926), .Z(n7895)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2090_3_lut_rep_332_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_2114_i30_3_lut_3_lut (.A(n7903), .B(\current_wave_freq[12] ), 
         .C(n22), .Z(n30)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i1251_3_lut_rep_502_3_lut_4_lut (.A(n50_adj_345), .B(n5029), 
         .C(n1085[23]), .D(n3514[5]), .Z(n8065)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1251_3_lut_rep_502_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2096_3_lut_rep_326_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[18]), .D(n7920), .Z(n7889)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2096_3_lut_rep_326_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1942_3_lut_rep_386_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[20]), .D(n7976), .Z(n7949)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1942_3_lut_rep_386_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1943_3_lut_rep_387_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[19]), .D(n7977), .Z(n7950)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1943_3_lut_rep_387_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2018_3_lut_rep_360_3_lut (.A(n3102), .B(n1328[21]), .C(n7952), 
         .Z(n7923)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2018_3_lut_rep_360_3_lut.init = 16'he4e4;
    LUT4 div_26_i2097_3_lut_rep_327_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[17]), .D(n7935), .Z(n7890)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2097_3_lut_rep_327_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2094_3_lut_rep_328_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[20]), .D(n7922), .Z(n7891)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2094_3_lut_rep_328_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1250_3_lut_rep_501_3_lut_4_lut (.A(n50_adj_345), .B(n5029), 
         .C(n1085[24]), .D(n3514[6]), .Z(n8064)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1250_3_lut_rep_501_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1940_3_lut_rep_388_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[22]), .D(n7978), .Z(n7951)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1940_3_lut_rep_388_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1706_4_lut_4_lut (.A(n3090), .B(n50_adj_338), .C(n1220[13]), 
         .D(n5850), .Z(n2537)) /* synthesis lut_function=(A (B+(D))+!A (C)) */ ;
    defparam div_26_i1706_4_lut_4_lut.init = 16'hfad8;
    LUT4 div_26_i1941_3_lut_rep_389_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[21]), .D(n7979), .Z(n7952)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1941_3_lut_rep_389_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5647_4_lut_4_lut (.A(n7823), .B(n7198), .C(n26), .D(n12), 
         .Z(n28)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5647_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_2039_i41_2_lut_rep_344_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[15] ), 
         .C(n1328[20]), .D(n7949), .Z(n7907)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i41_2_lut_rep_344_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i2095_3_lut_rep_329_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[19]), .D(n7921), .Z(n7892)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2095_3_lut_rep_329_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1939_3_lut_rep_390_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[23]), .D(n7980), .Z(n7953)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1939_3_lut_rep_390_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2019_3_lut_rep_359_3_lut (.A(n3102), .B(n1328[20]), .C(n7949), 
         .Z(n7922)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2019_3_lut_rep_359_3_lut.init = 16'he4e4;
    LUT4 div_26_i1255_3_lut_3_lut_4_lut (.A(n50_adj_345), .B(n5029), .C(n1085[19]), 
         .D(n3514[1]), .Z(n1871)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1255_3_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2092_3_lut_rep_330_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[22]), .D(n7924), .Z(n7893)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2092_3_lut_rep_330_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1254_3_lut_rep_498_3_lut_4_lut (.A(n50_adj_345), .B(n5029), 
         .C(n1085[20]), .D(n3514[2]), .Z(n8061)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1254_3_lut_rep_498_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5703_4_lut_4_lut (.A(n7823), .B(n7191), .C(n29), .D(n49), 
         .Z(n7276)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5703_4_lut_4_lut.init = 16'hff04;
    LUT4 div_26_i1952_3_lut_3_lut_4_lut (.A(n50_adj_335), .B(n5020), .C(n1301[10]), 
         .D(n2783), .Z(n2900)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1952_3_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_2327_i31_4_lut_rep_260 (.A(n7847), .B(\current_wave_freq[14] ), 
         .C(n1[15]), .D(n7825), .Z(n7823)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i31_4_lut_rep_260.init = 16'h3c66;
    LUT4 i5679_4_lut (.A(n46_adj_346), .B(n5001), .C(n48), .D(n7266), 
         .Z(half_period_31__N_259[0])) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!((D)+!C)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5679_4_lut.init = 16'h1103;
    LUT4 div_26_LessThan_2039_i39_2_lut_rep_343_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[14] ), 
         .C(n1328[19]), .D(n7950), .Z(n7906)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i39_2_lut_rep_343_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1938_3_lut_rep_391_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[24]), .D(n7981), .Z(n7954)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1938_3_lut_rep_391_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1252_3_lut_rep_499_3_lut_4_lut (.A(n50_adj_345), .B(n5029), 
         .C(n1085[22]), .D(n3514[4]), .Z(n8062)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1252_3_lut_rep_499_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5729_4_lut (.A(n8056), .B(n8058), .C(n8057), .D(n6402), .Z(n6413)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5729_4_lut.init = 16'hfffe;
    LUT4 i4688_4_lut (.A(n8060), .B(n8059), .C(n1871), .D(\current_wave_freq[5] ), 
         .Z(n6402)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4688_4_lut.init = 16'h1001;
    LUT4 i5769_4_lut (.A(n8004), .B(n8006), .C(n8005), .D(n6574), .Z(n6593)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5769_4_lut.init = 16'hfeff;
    LUT4 i4860_4_lut (.A(n8008), .B(n8007), .C(n8002), .D(n6561), .Z(n6574)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4860_4_lut.init = 16'h1011;
    LUT4 div_26_i1253_3_lut_rep_500_3_lut_4_lut (.A(n50_adj_345), .B(n5029), 
         .C(n1085[21]), .D(n3514[3]), .Z(n8063)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1253_3_lut_rep_500_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1256_3_lut_3_lut_4_lut (.A(n50_adj_345), .B(n5029), .C(n1085[18]), 
         .D(n1731), .Z(n1872)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1256_3_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i1950_3_lut_rep_392_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[12]), .D(n7982), .Z(n7955)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1950_3_lut_rep_392_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5583_4_lut_4_lut (.A(n8020), .B(n6536), .C(n44_adj_347), .D(n32), 
         .Z(n46_adj_348)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5583_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i4593_1_lut_rep_503_2_lut (.A(n50_adj_345), .B(n5029), .Z(n8066)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4593_1_lut_rep_503_2_lut.init = 16'h1111;
    LUT4 div_26_i1951_3_lut_rep_393_3_lut_4_lut (.A(n50_adj_335), .B(n5020), 
         .C(n1301[11]), .D(n2782), .Z(n7956)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1951_3_lut_rep_393_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5279_2_lut_3_lut_4_lut (.A(n3607[10]), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .D(n3607[9]), .Z(n6993)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5279_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1274_i38_4_lut (.A(\current_wave_freq[3] ), .B(\current_wave_freq[4] ), 
         .C(n1872), .D(n5107), .Z(n38)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1274_i38_4_lut.init = 16'h0c8e;
    LUT4 div_26_LessThan_1634_i49_2_lut_rep_457 (.A(n3547[11]), .B(\current_wave_freq[14] ), 
         .Z(n8020)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i49_2_lut_rep_457.init = 16'h6666;
    LUT4 i4603_1_lut_rep_400_2_lut (.A(n50_adj_335), .B(n5020), .Z(n7963)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4603_1_lut_rep_400_2_lut.init = 16'h1111;
    LUT4 div_26_LessThan_1802_i43_2_lut_rep_430 (.A(n3563[10]), .B(\current_wave_freq[13] ), 
         .Z(n7993)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i43_2_lut_rep_430.init = 16'h6666;
    LUT4 i4847_4_lut (.A(n8001), .B(n8000), .C(n8003), .D(n6552), .Z(n6561)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4847_4_lut.init = 16'h1011;
    LUT4 div_26_LessThan_1634_i44_3_lut_3_lut (.A(n3547[11]), .B(\current_wave_freq[14] ), 
         .C(\current_wave_freq[13] ), .Z(n44_adj_347)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2106_3_lut_3_lut_4_lut (.A(n50_adj_341), .B(n5017), .C(n1355[8]), 
         .D(n3016), .Z(n3127)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2106_3_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_i2093_3_lut_rep_331_3_lut_4_lut (.A(n50_adj_341), .B(n5017), 
         .C(n1355[21]), .D(n7923), .Z(n7894)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2093_3_lut_rep_331_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_2114_i26_3_lut_3_lut (.A(n7896), .B(\current_wave_freq[19] ), 
         .C(\current_wave_freq[10] ), .Z(n26_adj_349)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut (.A(n5029), .B(n50_adj_345), .C(n1085[17]), .Z(n5107)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut.init = 16'h1010;
    LUT4 div_26_LessThan_2187_i28_3_lut_3_lut (.A(n3607[10]), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .Z(n28_adj_350)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4607_1_lut_rep_342_2_lut (.A(n50_adj_341), .B(n5017), .Z(n7905)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4607_1_lut_rep_342_2_lut.init = 16'h1111;
    LUT4 div_26_i1438_3_lut_rep_486_4_lut (.A(n3525[4]), .B(n1139[20]), 
         .C(n50_adj_351), .D(n5026), .Z(n8049)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1438_3_lut_rep_486_4_lut.init = 16'haaac;
    LUT4 i5552_4_lut (.A(n49), .B(n7824), .C(n45), .D(n7239), .Z(n7266)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5552_4_lut.init = 16'h5455;
    LUT4 div_26_i1434_3_lut_rep_485_4_lut (.A(n3525[8]), .B(n1139[24]), 
         .C(n50_adj_351), .D(n5026), .Z(n8048)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1434_3_lut_rep_485_4_lut.init = 16'haaac;
    LUT4 div_26_i1437_3_lut_rep_484_4_lut (.A(n3525[5]), .B(n1139[21]), 
         .C(n50_adj_351), .D(n5026), .Z(n8047)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1437_3_lut_rep_484_4_lut.init = 16'haaac;
    LUT4 i4925_2_lut_3_lut_4_lut (.A(n3563[10]), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .D(n3563[9]), .Z(n6639)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4925_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i5525_4_lut (.A(n43), .B(n41), .C(n39), .D(n7216), .Z(n7239)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5525_4_lut.init = 16'h0100;
    LUT4 div_26_LessThan_1634_i45_2_lut_rep_458 (.A(n3547[9]), .B(\current_wave_freq[12] ), 
         .Z(n8021)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i45_2_lut_rep_458.init = 16'h6666;
    LUT4 div_26_i1436_3_lut_rep_483_4_lut (.A(n3525[6]), .B(n1139[22]), 
         .C(n50_adj_351), .D(n5026), .Z(n8046)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1436_3_lut_rep_483_4_lut.init = 16'haaac;
    LUT4 i5746_2_lut_3_lut_4_lut (.A(n7896), .B(\current_wave_freq[19] ), 
         .C(\current_wave_freq[10] ), .D(n7901), .Z(n6951)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5746_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 div_26_i1435_3_lut_rep_482_4_lut (.A(n3525[7]), .B(n1139[23]), 
         .C(n50_adj_351), .D(n5026), .Z(n8045)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1435_3_lut_rep_482_4_lut.init = 16'haaac;
    LUT4 div_26_i1442_3_lut_3_lut_4_lut (.A(n50_adj_351), .B(n5026), .C(n1139[16]), 
         .D(n2012), .Z(n2147)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i1442_3_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4595_1_lut_rep_481_2_lut (.A(n50_adj_351), .B(n5026), .Z(n8044)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4595_1_lut_rep_481_2_lut.init = 16'h1111;
    LUT4 div_26_i2020_3_lut_rep_358_3_lut (.A(n3102), .B(n1328[19]), .C(n7950), 
         .Z(n7921)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2020_3_lut_rep_358_3_lut.init = 16'he4e4;
    LUT4 div_26_i1441_3_lut_rep_480_4_lut (.A(n3525[1]), .B(n1139[17]), 
         .C(n50_adj_351), .D(n5026), .Z(n8043)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1441_3_lut_rep_480_4_lut.init = 16'haaac;
    LUT4 div_26_LessThan_2187_i27_2_lut_rep_307 (.A(n3607[7]), .B(n8537), 
         .Z(n7870)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i27_2_lut_rep_307.init = 16'h6666;
    LUT4 div_26_i1440_3_lut_rep_479_4_lut (.A(n3525[2]), .B(n1139[18]), 
         .C(n50_adj_351), .D(n5026), .Z(n8042)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1440_3_lut_rep_479_4_lut.init = 16'haaac;
    LUT4 div_26_LessThan_1634_i42_3_lut_3_lut (.A(n3547[9]), .B(\current_wave_freq[12] ), 
         .C(n34), .Z(n42_adj_352)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i1439_3_lut_rep_478_4_lut (.A(n3525[3]), .B(n1139[19]), 
         .C(n50_adj_351), .D(n5026), .Z(n8041)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1439_3_lut_rep_478_4_lut.init = 16'haaac;
    LUT4 div_26_LessThan_2039_i37_2_lut_rep_351_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[13] ), 
         .C(n1328[18]), .D(n7962), .Z(n7914)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i37_2_lut_rep_351_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1634_i41_2_lut_rep_459 (.A(n3547[7]), .B(\current_wave_freq[10] ), 
         .Z(n8022)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i41_2_lut_rep_459.init = 16'h6666;
    LUT4 div_26_i2021_3_lut_rep_357_3_lut (.A(n3102), .B(n1328[18]), .C(n7962), 
         .Z(n7920)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2021_3_lut_rep_357_3_lut.init = 16'he4e4;
    LUT4 i5502_4_lut (.A(n37), .B(n35), .C(n33), .D(n7201), .Z(n7216)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5502_4_lut.init = 16'h0001;
    LUT4 div_26_LessThan_1634_i38_3_lut_3_lut (.A(n3547[7]), .B(\current_wave_freq[10] ), 
         .C(n36), .Z(n38_adj_353)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5689_3_lut_4_lut (.A(n3547[7]), .B(\current_wave_freq[10] ), .C(n37_adj_354), 
         .D(n8024), .Z(n6526)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5689_3_lut_4_lut.init = 16'hfff6;
    LUT4 i5735_4_lut (.A(n8067), .B(n8068), .C(n8069), .D(n6382), .Z(n6393)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5735_4_lut.init = 16'hfffe;
    LUT4 i4668_4_lut (.A(n8070), .B(n8071), .C(n3514[1]), .D(\current_wave_freq[4] ), 
         .Z(n6382)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4668_4_lut.init = 16'h1001;
    LUT4 i1_2_lut (.A(led_c_1), .B(clk_25mhz_c_enable_54), .Z(led_N_284)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 div_26_LessThan_1082_i42_4_lut (.A(n5652), .B(\current_wave_freq[4] ), 
         .C(n1585), .D(n50_adj_344), .Z(n42_adj_355)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1082_i42_4_lut.init = 16'h0c8e;
    LUT4 i5670_4_lut (.A(n8072), .B(n8074), .C(n8073), .D(n43_adj_356), 
         .Z(n6375)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5670_4_lut.init = 16'haaab;
    LUT4 i5487_4_lut (.A(n7823), .B(n29), .C(n27), .D(n7182), .Z(n7201)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5487_4_lut.init = 16'h0100;
    LUT4 div_26_LessThan_1634_i43_2_lut_rep_460 (.A(n3547[8]), .B(\current_wave_freq[11] ), 
         .Z(n8023)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i43_2_lut_rep_460.init = 16'h6666;
    LUT4 div_26_LessThan_2327_i47_4_lut_rep_261 (.A(n7842), .B(\current_wave_freq[22] ), 
         .C(n1[23]), .D(n7825), .Z(n7824)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i47_4_lut_rep_261.init = 16'h3c66;
    LUT4 div_26_LessThan_1802_i38_3_lut_3_lut (.A(n3563[10]), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .Z(n38_adj_357)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1458_i34_4_lut (.A(\current_wave_freq[3] ), .B(\current_wave_freq[4] ), 
         .C(n2147), .D(n5101), .Z(n34_adj_358)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i34_4_lut.init = 16'h0c8e;
    LUT4 i5672_4_lut (.A(n8081), .B(n8080), .C(n1436), .D(\current_wave_freq[5] ), 
         .Z(n6365)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5672_4_lut.init = 16'heffe;
    LUT4 i5172_2_lut_3_lut_4_lut (.A(n7902), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .D(n7899), .Z(n6886)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5172_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i5468_4_lut (.A(n25), .B(n23), .C(n21), .D(n7169), .Z(n7182)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5468_4_lut.init = 16'h1011;
    LUT4 i5455_4_lut (.A(n19), .B(n17), .C(n15), .D(n7160), .Z(n7169)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5455_4_lut.init = 16'h1011;
    LUT4 div_26_LessThan_1367_i34_3_lut_4_lut (.A(\current_wave_freq[2] ), 
         .B(\current_wave_freq[3] ), .C(n50), .D(n8097), .Z(n34_adj_359)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i34_3_lut_4_lut.init = 16'h888a;
    LUT4 i5446_3_lut (.A(n13), .B(n3445), .C(n8549), .Z(n7160)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5446_3_lut.init = 16'h4141;
    LUT4 div_26_LessThan_1634_i34_3_lut_3_lut (.A(n3547[8]), .B(\current_wave_freq[11] ), 
         .C(\current_wave_freq[7] ), .Z(n34)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5694_4_lut (.A(n8027), .B(n8028), .C(n8030), .D(n6489), .Z(n6502)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5694_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_2327_i49_4_lut (.A(n7860), .B(\current_wave_freq[23] ), 
         .C(n1[24]), .D(n7825), .Z(n49)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i49_4_lut.init = 16'h3c66;
    LUT4 i4775_4_lut (.A(n8029), .B(n8031), .C(n39_adj_360), .D(n6478), 
         .Z(n6489)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4775_4_lut.init = 16'h0001;
    LUT4 div_26_i2322_3_lut_4_lut (.A(n50_adj_361), .B(n8104), .C(n1[5]), 
         .D(n3343), .Z(n3445)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2322_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_26_LessThan_1547_i32_4_lut (.A(n5646), .B(\current_wave_freq[4] ), 
         .C(n3538[1]), .D(n50_adj_339), .Z(n32_adj_362)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i32_4_lut.init = 16'h0c8e;
    LUT4 div_26_LessThan_1179_i38_3_lut_4_lut (.A(\current_wave_freq[2] ), 
         .B(\current_wave_freq[3] ), .C(n3071), .D(n50_adj_340), .Z(n38_adj_363)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i38_3_lut_4_lut.init = 16'h888a;
    LUT4 div_26_LessThan_2114_i24_3_lut_3_lut (.A(n7902), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .Z(n24)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4764_4_lut (.A(n37_adj_364), .B(n8032), .C(n3538[2]), .D(\current_wave_freq[5] ), 
         .Z(n6478)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4764_4_lut.init = 16'h1001;
    LUT4 div_26_LessThan_2039_i49_2_lut_rep_348_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[19] ), 
         .C(n1328[24]), .D(n7954), .Z(n7911)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i49_2_lut_rep_348_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1634_i39_2_lut_rep_461 (.A(n3547[6]), .B(\current_wave_freq[9] ), 
         .Z(n8024)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i39_2_lut_rep_461.init = 16'h6666;
    LUT4 div_26_LessThan_1634_i36_3_lut_3_lut (.A(n3547[6]), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .Z(n36)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2030_3_lut_rep_364_3_lut (.A(n3102), .B(n1328[9]), .C(n2901), 
         .Z(n7927)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2030_3_lut_rep_364_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1634_i33_2_lut_rep_462 (.A(n3547[3]), .B(\current_wave_freq[6] ), 
         .Z(n8025)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i33_2_lut_rep_462.init = 16'h6666;
    LUT4 div_26_LessThan_2039_i19_2_lut_4_lut_4_lut (.A(n3102), .B(n8549), 
         .C(n1328[9]), .D(n2901), .Z(n19_adj_365)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i19_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1634_i32_3_lut_3_lut (.A(n3547[3]), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n32)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2114_i46_3_lut_3_lut (.A(n7895), .B(\current_wave_freq[20] ), 
         .C(n44_adj_366), .Z(n46_adj_367)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2029_3_lut_rep_365_3_lut (.A(n3102), .B(n1328[10]), .C(n2900), 
         .Z(n7928)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2029_3_lut_rep_365_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1634_i35_2_lut_rep_463 (.A(n3547[4]), .B(\current_wave_freq[7] ), 
         .Z(n8026)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i35_2_lut_rep_463.init = 16'h6666;
    LUT4 div_26_LessThan_2039_i21_2_lut_rep_352_4_lut_4_lut (.A(n3102), .B(n8547), 
         .C(n1328[10]), .D(n2900), .Z(n7915)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i21_2_lut_rep_352_4_lut_4_lut.init = 16'h369c;
    LUT4 i5637_4_lut_4_lut (.A(n7827), .B(n7091), .C(n28_adj_368), .D(n14), 
         .Z(n30_adj_369)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5637_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_1634_i30_4_lut (.A(n5650), .B(\current_wave_freq[4] ), 
         .C(n3547[1]), .D(n50_adj_338), .Z(n30_adj_370)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i30_4_lut.init = 16'h0c8e;
    LUT4 i4820_2_lut_3_lut_4_lut (.A(n3547[4]), .B(\current_wave_freq[7] ), 
         .C(\current_wave_freq[11] ), .D(n3547[8]), .Z(n6534)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4820_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i5639_4_lut_4_lut (.A(n7841), .B(n7147), .C(n42_adj_371), .D(n18), 
         .Z(n44_adj_372)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5639_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_1547_i49_2_lut_rep_464 (.A(n3538[10]), .B(\current_wave_freq[13] ), 
         .Z(n8027)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i49_2_lut_rep_464.init = 16'h6666;
    LUT4 div_26_i2027_3_lut_rep_366_3_lut (.A(n3102), .B(n1328[12]), .C(n7955), 
         .Z(n7929)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2027_3_lut_rep_366_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1547_i46_3_lut_3_lut (.A(n3538[10]), .B(\current_wave_freq[13] ), 
         .C(n34_adj_373), .Z(n46_adj_374)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2114_i28_3_lut_3_lut (.A(n7894), .B(\current_wave_freq[17] ), 
         .C(\current_wave_freq[16] ), .Z(n28_adj_375)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1547_i47_2_lut_rep_465 (.A(n3538[9]), .B(\current_wave_freq[12] ), 
         .Z(n8028)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i47_2_lut_rep_465.init = 16'h6666;
    LUT4 div_26_LessThan_2039_i25_2_lut_rep_353_4_lut_4_lut (.A(n3102), .B(n8543), 
         .C(n1328[12]), .D(n7955), .Z(n7916)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i25_2_lut_rep_353_4_lut_4_lut.init = 16'h369c;
    LUT4 i5221_2_lut_3_lut_4_lut (.A(n7894), .B(\current_wave_freq[17] ), 
         .C(\current_wave_freq[16] ), .D(n7891), .Z(n6935)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5221_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1547_i44_3_lut_3_lut (.A(n3538[9]), .B(\current_wave_freq[12] ), 
         .C(n36_adj_376), .Z(n44_adj_377)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2028_3_lut_rep_367_3_lut (.A(n3102), .B(n1328[11]), .C(n7956), 
         .Z(n7930)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2028_3_lut_rep_367_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_2187_i18_3_lut_3_lut (.A(n3607[7]), .B(\current_wave_freq[10] ), 
         .C(\current_wave_freq[6] ), .Z(n18_adj_378)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2039_i23_2_lut_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[6] ), 
         .C(n1328[11]), .D(n7956), .Z(n23_adj_379)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i23_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1547_i43_2_lut_rep_466 (.A(n3538[7]), .B(\current_wave_freq[10] ), 
         .Z(n8029)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i43_2_lut_rep_466.init = 16'h6666;
    LUT4 div_26_i2026_3_lut_rep_368_3_lut (.A(n3102), .B(n1328[13]), .C(n7957), 
         .Z(n7931)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2026_3_lut_rep_368_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1802_i39_2_lut_rep_431 (.A(n3563[8]), .B(\current_wave_freq[11] ), 
         .Z(n7994)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i39_2_lut_rep_431.init = 16'h6666;
    LUT4 div_26_LessThan_1547_i40_3_lut_3_lut (.A(n3538[7]), .B(\current_wave_freq[10] ), 
         .C(n38_adj_380), .Z(n40_adj_381)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2039_i27_2_lut_rep_354_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[8] ), 
         .C(n1328[13]), .D(n7957), .Z(n7917)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i27_2_lut_rep_354_4_lut_4_lut.init = 16'h369c;
    LUT4 i5698_3_lut_4_lut (.A(n3538[7]), .B(\current_wave_freq[10] ), .C(n39_adj_360), 
         .D(n8031), .Z(n6491)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5698_3_lut_4_lut.init = 16'hfff6;
    LUT4 div_26_i2025_3_lut_rep_369_3_lut (.A(n3102), .B(n1328[14]), .C(n7958), 
         .Z(n7932)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2025_3_lut_rep_369_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1547_i45_2_lut_rep_467 (.A(n3538[8]), .B(\current_wave_freq[11] ), 
         .Z(n8030)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i45_2_lut_rep_467.init = 16'h6666;
    LUT4 div_26_LessThan_1547_i36_3_lut_3_lut (.A(n3538[8]), .B(\current_wave_freq[11] ), 
         .C(\current_wave_freq[7] ), .Z(n36_adj_376)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1547_i41_2_lut_rep_468 (.A(n3538[6]), .B(\current_wave_freq[9] ), 
         .Z(n8031)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i41_2_lut_rep_468.init = 16'h6666;
    LUT4 div_26_LessThan_1719_i28_4_lut (.A(n5666), .B(\current_wave_freq[4] ), 
         .C(n2537), .D(n50_adj_382), .Z(n28_adj_383)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i28_4_lut.init = 16'h0c8e;
    LUT4 div_26_LessThan_1547_i38_3_lut_3_lut (.A(n3538[6]), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .Z(n38_adj_380)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1547_i35_2_lut_rep_469 (.A(n3538[3]), .B(\current_wave_freq[6] ), 
         .Z(n8032)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i35_2_lut_rep_469.init = 16'h6666;
    LUT4 i5669_4_lut (.A(n7942), .B(n7941), .C(n7940), .D(n6770), .Z(n6785)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5669_4_lut.init = 16'hfeff;
    LUT4 div_26_LessThan_2039_i29_2_lut_rep_355_4_lut_4_lut (.A(n3102), .B(n8539), 
         .C(n1328[14]), .D(n7958), .Z(n7918)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i29_2_lut_rep_355_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1547_i34_3_lut_3_lut (.A(n3538[3]), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n34_adj_373)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2327_i45_4_lut (.A(n7843), .B(\current_wave_freq[21] ), 
         .C(n1[22]), .D(n7825), .Z(n45)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i45_4_lut.init = 16'h3c66;
    LUT4 div_26_i2023_3_lut_rep_370_3_lut (.A(n3102), .B(n1328[16]), .C(n7959), 
         .Z(n7933)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2023_3_lut_rep_370_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_2039_i33_2_lut_rep_349_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[11] ), 
         .C(n1328[16]), .D(n7959), .Z(n7912)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i33_2_lut_rep_349_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i2024_3_lut_rep_371_3_lut (.A(n3102), .B(n1328[15]), .C(n7960), 
         .Z(n7934)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2024_3_lut_rep_371_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_2114_i40_3_lut_3_lut (.A(n7893), .B(\current_wave_freq[18] ), 
         .C(n28_adj_375), .Z(n40_adj_384)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2039_i31_2_lut_rep_356_4_lut_4_lut (.A(n3102), .B(n8537), 
         .C(n1328[15]), .D(n7960), .Z(n7919)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i31_2_lut_rep_356_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1458_i36_3_lut_3_lut (.A(n8042), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n36_adj_385)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2022_3_lut_rep_372_3_lut (.A(n3102), .B(n1328[17]), .C(n7961), 
         .Z(n7935)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2022_3_lut_rep_372_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_2258_i31_2_lut_rep_263_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[13] ), 
         .C(n1409[15]), .D(n3607[9]), .Z(n7826)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i31_2_lut_rep_263_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2039_i35_2_lut_rep_350_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[12] ), 
         .C(n1328[17]), .D(n7961), .Z(n7913)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i35_2_lut_rep_350_4_lut_4_lut.init = 16'h369c;
    LUT4 i5705_3_lut_4_lut (.A(n8049), .B(\current_wave_freq[8] ), .C(n8037), 
         .D(n8038), .Z(n6463)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5705_3_lut_4_lut.init = 16'hfff6;
    LUT4 div_26_LessThan_1802_i24_3_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(n2662), .Z(n24_adj_386)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i24_3_lut.init = 16'h8e8e;
    LUT4 div_26_LessThan_2258_i23_2_lut_4_lut_4_lut (.A(n7861), .B(n8539), 
         .C(n1409[11]), .D(n3607[5]), .Z(n23_adj_387)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i23_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 i5606_4_lut_4_lut (.A(n7938), .B(n6760), .C(n36_adj_388), .D(n22_adj_389), 
         .Z(n38_adj_390)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5606_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5608_4_lut_4_lut (.A(n7941), .B(n6782), .C(n42_adj_391), .D(n20), 
         .Z(n44_adj_392)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5608_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_1458_i40_3_lut_3_lut (.A(n8047), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .Z(n40_adj_393)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5667_4_lut_4_lut (.A(n7941), .B(n6775), .C(n7940), .D(n7942), 
         .Z(n6791)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5667_4_lut_4_lut.init = 16'hff04;
    LUT4 div_26_LessThan_2258_i26_3_lut_3_lut (.A(n7847), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .Z(n26_adj_394)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i25_2_lut_rep_266_4_lut_4_lut (.A(n7861), .B(n8537), 
         .C(n1409[12]), .D(n3607[6]), .Z(n7829)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i25_2_lut_rep_266_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1458_i42_3_lut_3_lut (.A(n8046), .B(\current_wave_freq[10] ), 
         .C(n40_adj_393), .Z(n42_adj_395)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1962_i34_3_lut_3_lut (.A(n7950), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .Z(n34_adj_396)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1962_i36_3_lut_3_lut (.A(n7949), .B(\current_wave_freq[14] ), 
         .C(n34_adj_396), .Z(n36_adj_388)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5699_2_lut_3_lut_4_lut (.A(n8045), .B(\current_wave_freq[11] ), 
         .C(\current_wave_freq[7] ), .D(n8041), .Z(n6471)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5699_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 div_26_LessThan_1458_i38_3_lut_3_lut (.A(n8045), .B(\current_wave_freq[11] ), 
         .C(\current_wave_freq[7] ), .Z(n38_adj_397)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5068_2_lut_3_lut_4_lut (.A(n7951), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .D(n7952), .Z(n6782)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5068_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1458_i48_3_lut_3_lut (.A(n8048), .B(\current_wave_freq[12] ), 
         .C(n46_adj_398), .Z(n48_adj_399)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i48_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i15_2_lut_rep_272_4_lut_4_lut (.A(n7861), .B(n8547), 
         .C(n1409[7]), .D(n3607[1]), .Z(n7835)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i15_2_lut_rep_272_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1962_i30_3_lut_3_lut (.A(n7951), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .Z(n30_adj_400)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4752_4_lut (.A(n8039), .B(n8038), .C(n8037), .D(n6453), .Z(n6466)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4752_4_lut.init = 16'h5455;
    LUT4 div_26_LessThan_779_i48_4_lut_then_4_lut (.A(\current_wave_freq[3] ), 
         .B(n5155), .C(n976), .D(n5455), .Z(n8135)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_779_i48_4_lut_then_4_lut.init = 16'h0f2f;
    LUT4 div_26_LessThan_2258_i28_3_lut_3_lut (.A(n7854), .B(\current_wave_freq[14] ), 
         .C(n26_adj_394), .Z(n28_adj_368)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1458_i39_2_lut_rep_472_4_lut (.A(n3525[3]), .B(n1139[19]), 
         .C(n3081), .D(n8543), .Z(n8035)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i39_2_lut_rep_472_4_lut.init = 16'h53ac;
    LUT4 div_26_LessThan_1962_i42_3_lut_3_lut (.A(n7953), .B(\current_wave_freq[17] ), 
         .C(n30_adj_400), .Z(n42_adj_391)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1883_i22_3_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(n2783), .Z(n22_adj_401)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i22_3_lut.init = 16'h8e8e;
    LUT4 div_26_LessThan_1962_i46_3_lut_3_lut (.A(n7954), .B(\current_wave_freq[18] ), 
         .C(n28_adj_402), .Z(n46_adj_403)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_779_i48_4_lut_else_4_lut (.A(\current_wave_freq[3] ), 
         .B(\current_wave_freq[2] ), .C(n5155), .D(n976), .Z(n8134)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_779_i48_4_lut_else_4_lut.init = 16'h0800;
    LUT4 div_26_LessThan_1962_i24_3_lut_3_lut (.A(n7959), .B(\current_wave_freq[10] ), 
         .C(\current_wave_freq[6] ), .Z(n24_adj_404)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5037_3_lut_4_lut (.A(n7959), .B(\current_wave_freq[10] ), .C(n25_adj_405), 
         .D(n7944), .Z(n6751)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5037_3_lut_4_lut.init = 16'h0009;
    LUT4 div_26_LessThan_1458_i37_2_lut_rep_471_4_lut (.A(n3525[2]), .B(n1139[18]), 
         .C(n3081), .D(n8545), .Z(n8034)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i37_2_lut_rep_471_4_lut.init = 16'h53ac;
    LUT4 div_26_LessThan_2258_i45_2_lut_rep_270_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[20] ), 
         .C(n1409[22]), .D(n3607[16]), .Z(n7833)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i45_2_lut_rep_270_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1458_i35_2_lut_4_lut (.A(n3525[1]), .B(n1139[17]), 
         .C(n3081), .D(n8547), .Z(n35_adj_406)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i35_2_lut_4_lut.init = 16'h53ac;
    LUT4 div_26_LessThan_1962_i20_3_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(n2901), .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i20_3_lut.init = 16'h8e8e;
    LUT4 i1462_4_lut_then_4_lut (.A(n5155), .B(\current_wave_freq[3] ), 
         .C(n976), .D(n5455), .Z(n8138)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1462_4_lut_then_4_lut.init = 16'hf0b0;
    LUT4 div_26_LessThan_2258_i47_2_lut_rep_271_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[21] ), 
         .C(n1409[23]), .D(n3607[17]), .Z(n7834)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i47_2_lut_rep_271_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1962_i32_3_lut_3_lut (.A(n7961), .B(\current_wave_freq[11] ), 
         .C(n24_adj_404), .Z(n32_adj_407)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i32_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX current_wave_freq_i7_rep_577 (.D(current_wave_freq_31__N_227[7]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8543)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i7_rep_577.GSR = "ENABLED";
    LUT4 i1462_4_lut_else_4_lut (.A(n5155), .B(\current_wave_freq[3] ), 
         .C(\current_wave_freq[2] ), .D(n976), .Z(n8137)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1462_4_lut_else_4_lut.init = 16'hbfff;
    LUT4 div_26_LessThan_1458_i47_2_lut_rep_476_4_lut (.A(n3525[7]), .B(n1139[23]), 
         .C(n3081), .D(\current_wave_freq[11] ), .Z(n8039)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i47_2_lut_rep_476_4_lut.init = 16'h53ac;
    LUT4 i5046_2_lut_3_lut_4_lut (.A(n7962), .B(\current_wave_freq[12] ), 
         .C(\current_wave_freq[13] ), .D(n7950), .Z(n6760)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5046_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1962_i22_3_lut_3_lut (.A(n7956), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n22_adj_389)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1458_i45_2_lut_rep_475_4_lut (.A(n3525[6]), .B(n1139[22]), 
         .C(n3081), .D(\current_wave_freq[10] ), .Z(n8038)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i45_2_lut_rep_475_4_lut.init = 16'h53ac;
    LUT4 div_26_LessThan_1962_i26_3_lut_3_lut (.A(n7958), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n26_adj_408)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1458_i43_2_lut_rep_474_4_lut (.A(n3525[5]), .B(n1139[21]), 
         .C(n3081), .D(\current_wave_freq[9] ), .Z(n8037)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i43_2_lut_rep_474_4_lut.init = 16'h53ac;
    LUT4 div_26_LessThan_1962_i28_3_lut_3_lut (.A(n7960), .B(\current_wave_freq[9] ), 
         .C(n26_adj_408), .Z(n28_adj_402)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1962_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1802_i36_3_lut_3_lut (.A(n3563[8]), .B(\current_wave_freq[11] ), 
         .C(n28_adj_409), .Z(n36_adj_410)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5731_3_lut_4_lut (.A(n7852), .B(\current_wave_freq[15] ), .C(n7836), 
         .D(n7837), .Z(n7120)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5731_3_lut_4_lut.init = 16'hfff6;
    LUT4 div_26_LessThan_2258_i16_3_lut_3_lut (.A(n7845), .B(\current_wave_freq[10] ), 
         .C(\current_wave_freq[6] ), .Z(n16_adj_411)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5368_3_lut_4_lut (.A(n7845), .B(\current_wave_freq[10] ), .C(n17_adj_412), 
         .D(n7830), .Z(n7082)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5368_3_lut_4_lut.init = 16'h0009;
    LUT4 div_26_LessThan_2258_i29_2_lut_rep_268_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[12] ), 
         .C(n1409[14]), .D(n3607[8]), .Z(n7831)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i29_2_lut_rep_268_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1458_i49_2_lut_rep_477_4_lut (.A(n3525[8]), .B(n1139[24]), 
         .C(n3081), .D(\current_wave_freq[12] ), .Z(n8040)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i49_2_lut_rep_477_4_lut.init = 16'h53ac;
    LUT4 div_26_LessThan_2039_i18_3_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(n3016), .Z(n18_adj_413)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i18_3_lut.init = 16'h8e8e;
    LUT4 div_26_LessThan_2258_i22_3_lut_3_lut (.A(n7857), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .Z(n22_adj_414)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1458_i41_2_lut_rep_473_4_lut (.A(n3525[4]), .B(n1139[20]), 
         .C(n3081), .D(\current_wave_freq[8] ), .Z(n8036)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i41_2_lut_rep_473_4_lut.init = 16'h53ac;
    LUT4 i5575_4_lut_4_lut (.A(n8053), .B(n6430), .C(n42_adj_415), .D(n34_adj_359), 
         .Z(n44_adj_416)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5575_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5718_4_lut_4_lut (.A(n8053), .B(n6428), .C(n8050), .D(n8051), 
         .Z(n6441)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5718_4_lut_4_lut.init = 16'hfff4;
    LUT4 div_26_LessThan_2258_i20_3_lut_3_lut (.A(n7850), .B(\current_wave_freq[18] ), 
         .C(\current_wave_freq[9] ), .Z(n20_adj_417)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2187_i50_4_lut (.A(n34_adj_418), .B(n48_adj_419), 
         .C(n7862), .D(n7034), .Z(n50_adj_331)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i50_4_lut.init = 16'hcacc;
    LUT4 i5320_4_lut (.A(n7033), .B(n7864), .C(n7863), .D(n7011), .Z(n7034)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5320_4_lut.init = 16'h0200;
    LUT4 i4916_3_lut_4_lut (.A(n3563[8]), .B(\current_wave_freq[11] ), .C(n29_adj_420), 
         .D(n7995), .Z(n6630)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4916_3_lut_4_lut.init = 16'h0009;
    LUT4 i5297_4_lut (.A(n7866), .B(n7865), .C(n37_adj_421), .D(n6996), 
         .Z(n7011)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5297_4_lut.init = 16'h0001;
    LUT4 i5282_4_lut (.A(n7867), .B(n7869), .C(n7868), .D(n6977), .Z(n6996)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5282_4_lut.init = 16'h0100;
    LUT4 div_26_LessThan_1367_i47_2_lut_rep_487 (.A(n3525[7]), .B(\current_wave_freq[10] ), 
         .Z(n8050)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i47_2_lut_rep_487.init = 16'h6666;
    LUT4 i5263_4_lut (.A(n7871), .B(n7870), .C(n7873), .D(n6964), .Z(n6977)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5263_4_lut.init = 16'h1011;
    LUT4 div_26_LessThan_1367_i38_3_lut_3_lut (.A(n3525[7]), .B(\current_wave_freq[10] ), 
         .C(\current_wave_freq[6] ), .Z(n38_adj_422)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1367_i49_2_lut_rep_488 (.A(n3525[8]), .B(\current_wave_freq[11] ), 
         .Z(n8051)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i49_2_lut_rep_488.init = 16'h6666;
    LUT4 div_26_LessThan_2258_i27_2_lut_rep_267_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[11] ), 
         .C(n1409[13]), .D(n3607[7]), .Z(n7830)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i27_2_lut_rep_267_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1367_i48_3_lut_3_lut (.A(n3525[8]), .B(\current_wave_freq[11] ), 
         .C(n46_adj_423), .Z(n48_adj_424)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i48_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1367_i43_2_lut_rep_489 (.A(n3525[5]), .B(\current_wave_freq[8] ), 
         .Z(n8052)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i43_2_lut_rep_489.init = 16'h6666;
    LUT4 div_26_LessThan_1367_i40_3_lut_3_lut (.A(n3525[5]), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n40_adj_425)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i24_3_lut_3_lut (.A(n7849), .B(\current_wave_freq[11] ), 
         .C(n16_adj_411), .Z(n24_adj_426)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i41_2_lut_rep_275_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[18] ), 
         .C(n1409[20]), .D(n3607[14]), .Z(n7838)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i41_2_lut_rep_275_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1367_i45_2_lut_rep_490 (.A(n3525[6]), .B(\current_wave_freq[9] ), 
         .Z(n8053)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i45_2_lut_rep_490.init = 16'h6666;
    LUT4 div_26_LessThan_2258_i34_3_lut_3_lut (.A(n7858), .B(\current_wave_freq[17] ), 
         .C(n22_adj_414), .Z(n34_adj_427)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2114_i18_4_lut (.A(\current_wave_freq[3] ), .B(\current_wave_freq[4] ), 
         .C(n3127), .D(n5071), .Z(n18_adj_428)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i18_4_lut.init = 16'h0c8e;
    LUT4 div_26_LessThan_1367_i42_3_lut_3_lut (.A(n3525[6]), .B(\current_wave_freq[9] ), 
         .C(n40_adj_425), .Z(n42_adj_415)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i43_2_lut_rep_269_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[19] ), 
         .C(n1409[21]), .D(n3607[15]), .Z(n7832)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i43_2_lut_rep_269_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1367_i41_2_lut_rep_491 (.A(n3525[4]), .B(\current_wave_freq[7] ), 
         .Z(n8054)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i41_2_lut_rep_491.init = 16'h6666;
    LUT4 i5250_4_lut (.A(n7872), .B(n21_adj_429), .C(n19_adj_430), .D(n6955), 
         .Z(n6964)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5250_4_lut.init = 16'h1011;
    LUT4 i4716_2_lut_3_lut_4_lut (.A(n3525[4]), .B(\current_wave_freq[7] ), 
         .C(\current_wave_freq[8] ), .D(n3525[5]), .Z(n6430)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4716_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1367_i39_2_lut_rep_492 (.A(n3525[3]), .B(\current_wave_freq[6] ), 
         .Z(n8055)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i39_2_lut_rep_492.init = 16'h6666;
    LUT4 i5716_2_lut_3_lut_4_lut (.A(n3525[3]), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[10] ), .D(n3525[7]), .Z(n6443)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5716_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 div_26_LessThan_2258_i35_2_lut_rep_265_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[15] ), 
         .C(n1409[17]), .D(n3607[11]), .Z(n7828)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i35_2_lut_rep_265_4_lut_4_lut.init = 16'h369c;
    LUT4 i4705_3_lut_4_lut (.A(n3525[2]), .B(\current_wave_freq[5] ), .C(\current_wave_freq[4] ), 
         .D(n3525[1]), .Z(n6419)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4705_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_4_lut (.A(n8133), .B(n8113), .C(n8129), .D(\current_wave_freq[22] ), 
         .Z(n5014)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_1367_i36_3_lut_3_lut (.A(n3525[2]), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n36_adj_431)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1367_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5571_4_lut_4_lut (.A(n8056), .B(n6410), .C(n46_adj_432), .D(n38), 
         .Z(n48_adj_433)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5571_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_1274_i46_3_lut_3_lut (.A(n8064), .B(\current_wave_freq[10] ), 
         .C(n44_adj_434), .Z(n46_adj_432)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1274_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5377_2_lut_3_lut_4_lut (.A(n7848), .B(\current_wave_freq[12] ), 
         .C(\current_wave_freq[13] ), .D(n7847), .Z(n7091)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5377_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_2187_i14_3_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(n3237), .Z(n14_adj_435)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i14_3_lut.init = 16'h8e8e;
    LUT4 i4696_2_lut_3_lut_4_lut (.A(n8065), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .D(n8062), .Z(n6410)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4696_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1274_i44_3_lut_3_lut (.A(n8065), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .Z(n44_adj_434)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1274_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i21_2_lut_rep_277_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[8] ), 
         .C(n1409[10]), .D(n3607[4]), .Z(n7840)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i21_2_lut_rep_277_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1274_i40_3_lut_3_lut (.A(n8061), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n40_adj_436)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1274_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1274_i42_3_lut_3_lut (.A(n8063), .B(\current_wave_freq[7] ), 
         .C(n40_adj_436), .Z(n42_adj_437)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1274_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i33_2_lut_rep_264_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[14] ), 
         .C(n1409[16]), .D(n3607[10]), .Z(n7827)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i33_2_lut_rep_264_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1802_i37_2_lut_rep_432 (.A(n3563[7]), .B(\current_wave_freq[10] ), 
         .Z(n7995)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i37_2_lut_rep_432.init = 16'h6666;
    LUT4 div_26_LessThan_2114_i43_2_lut_rep_324_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[17] ), 
         .C(n1355[21]), .D(n7923), .Z(n7887)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i43_2_lut_rep_324_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2258_i12_3_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(n3343), .Z(n12_adj_438)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i12_3_lut.init = 16'h8e8e;
    LUT4 div_26_LessThan_2258_i38_3_lut_3_lut (.A(n7851), .B(\current_wave_freq[19] ), 
         .C(n20_adj_417), .Z(n38_adj_439)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i40_3_lut_3_lut (.A(n7842), .B(\current_wave_freq[21] ), 
         .C(\current_wave_freq[20] ), .Z(n40_adj_440)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2116_1_lut (.A(n3108), .Z(half_period_31__N_259[3])) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2116_1_lut.init = 16'h5555;
    LUT4 i5422_3_lut_4_lut (.A(n7851), .B(\current_wave_freq[19] ), .C(n23_adj_387), 
         .D(n7838), .Z(n7136)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5422_3_lut_4_lut.init = 16'h0009;
    LUT4 div_26_LessThan_2258_i17_2_lut_4_lut_4_lut (.A(n7861), .B(n8545), 
         .C(n1409[8]), .D(n3607[2]), .Z(n17_adj_412)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i17_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1962_i25_2_lut_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[6] ), 
         .C(n1301[12]), .D(n7982), .Z(n25_adj_405)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i25_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1802_i28_3_lut_3_lut (.A(n3563[7]), .B(\current_wave_freq[10] ), 
         .C(\current_wave_freq[6] ), .Z(n28_adj_409)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1962_i49_2_lut_rep_379_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[18] ), 
         .C(n1301[24]), .D(n7981), .Z(n7942)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i49_2_lut_rep_379_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2258_i19_2_lut_rep_276_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[7] ), 
         .C(n1409[9]), .D(n3607[3]), .Z(n7839)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i19_2_lut_rep_276_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1274_i45_2_lut_rep_494_4_lut_4_lut (.A(n3075), .B(\current_wave_freq[8] ), 
         .C(n1085[22]), .D(n3514[4]), .Z(n8057)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1274_i45_2_lut_rep_494_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1802_i33_2_lut_rep_433 (.A(n3563[5]), .B(\current_wave_freq[8] ), 
         .Z(n7996)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i33_2_lut_rep_433.init = 16'h6666;
    LUT4 i5433_2_lut_3_lut_4_lut (.A(n7842), .B(\current_wave_freq[21] ), 
         .C(\current_wave_freq[20] ), .D(n7843), .Z(n7147)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5433_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_2114_i45_2_lut_rep_325_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[18] ), 
         .C(n1355[22]), .D(n7924), .Z(n7888)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i45_2_lut_rep_325_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2327_i26_3_lut (.A(n24_adj_441), .B(\current_wave_freq[14] ), 
         .C(n7823), .Z(n26)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i26_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_1274_i41_2_lut_rep_496_4_lut_4_lut (.A(n3075), .B(\current_wave_freq[6] ), 
         .C(n1085[20]), .D(n3514[2]), .Z(n8059)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1274_i41_2_lut_rep_496_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2327_i12_3_lut (.A(\current_wave_freq[4] ), .B(\current_wave_freq[5] ), 
         .C(n13), .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i12_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_1274_i49_2_lut_rep_493_4_lut_4_lut (.A(n3075), .B(\current_wave_freq[10] ), 
         .C(n1085[24]), .D(n3514[6]), .Z(n8056)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1274_i49_2_lut_rep_493_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2327_i30_3_lut (.A(n22_adj_442), .B(\current_wave_freq[23] ), 
         .C(n49), .Z(n30_adj_443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i30_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_1802_i30_3_lut_3_lut (.A(n3563[5]), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n30_adj_444)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1802_i35_2_lut_rep_434 (.A(n3563[6]), .B(\current_wave_freq[9] ), 
         .Z(n7997)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i35_2_lut_rep_434.init = 16'h6666;
    LUT4 div_26_LessThan_1802_i32_3_lut_3_lut (.A(n3563[6]), .B(\current_wave_freq[9] ), 
         .C(n30_adj_444), .Z(n32_adj_445)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2258_i37_2_lut_rep_273_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[16] ), 
         .C(n1409[18]), .D(n3607[12]), .Z(n7836)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i37_2_lut_rep_273_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2327_i32_3_lut (.A(n20_adj_446), .B(\current_wave_freq[17] ), 
         .C(n37), .Z(n32_adj_447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i32_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_1802_i31_2_lut_rep_435 (.A(n3563[4]), .B(\current_wave_freq[7] ), 
         .Z(n7998)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i31_2_lut_rep_435.init = 16'h6666;
    LUT4 div_26_LessThan_2327_i10_4_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(n5592), .D(n50_adj_361), .Z(n10)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B ((D)+!C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i10_4_lut.init = 16'hee8e;
    LUT4 i5180_4_lut (.A(n7879), .B(n7881), .C(n7884), .D(n6881), .Z(n6894)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5180_4_lut.init = 16'h5455;
    LUT4 div_26_LessThan_2327_i40_3_lut (.A(n38_adj_448), .B(\current_wave_freq[22] ), 
         .C(n7824), .Z(n40)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i40_3_lut.init = 16'hcaca;
    LUT4 i4898_2_lut_3_lut_4_lut (.A(n3563[4]), .B(\current_wave_freq[7] ), 
         .C(\current_wave_freq[8] ), .D(n3563[5]), .Z(n6612)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4898_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_2258_i39_2_lut_rep_274_4_lut_4_lut (.A(n7861), .B(\current_wave_freq[17] ), 
         .C(n1409[19]), .D(n3607[13]), .Z(n7837)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2258_i39_2_lut_rep_274_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1962_i47_2_lut_rep_378_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[17] ), 
         .C(n1301[23]), .D(n7980), .Z(n7941)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i47_2_lut_rep_378_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2327_i16_3_lut (.A(\current_wave_freq[7] ), .B(\current_wave_freq[8] ), 
         .C(n19), .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i16_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_2114_i39_2_lut_rep_315_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[15] ), 
         .C(n1355[19]), .D(n7921), .Z(n7878)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i39_2_lut_rep_315_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1962_i43_2_lut_rep_376_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[15] ), 
         .C(n1301[21]), .D(n7979), .Z(n7939)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i43_2_lut_rep_376_4_lut_4_lut.init = 16'h369c;
    LUT4 i1_2_lut_adj_3 (.A(n50_adj_341), .B(n5017), .Z(n3105)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'heeee;
    LUT4 div_26_LessThan_1962_i45_2_lut_rep_377_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[16] ), 
         .C(n1301[22]), .D(n7978), .Z(n7940)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i45_2_lut_rep_377_4_lut_4_lut.init = 16'h369c;
    LUT4 i1_4_lut_adj_4 (.A(n8113), .B(n8110), .C(n8133), .D(\current_wave_freq[20] ), 
         .Z(n5017)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_4.init = 16'hfffe;
    LUT4 div_26_LessThan_2258_i49_2_lut_rep_278_4_lut (.A(n3607[18]), .B(n1409[24]), 
         .C(n7861), .D(\current_wave_freq[22] ), .Z(n7841)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i49_2_lut_rep_278_4_lut.init = 16'h53ac;
    LUT4 div_26_LessThan_2327_i36_3_lut (.A(n18_adj_449), .B(\current_wave_freq[19] ), 
         .C(n41), .Z(n36_adj_450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i36_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_1802_i27_2_lut_rep_436 (.A(n3563[2]), .B(\current_wave_freq[5] ), 
         .Z(n7999)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i27_2_lut_rep_436.init = 16'h6666;
    LUT4 div_26_LessThan_1274_i43_2_lut_rep_497_4_lut_4_lut (.A(n3075), .B(\current_wave_freq[7] ), 
         .C(n1085[21]), .D(n3514[3]), .Z(n8060)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1274_i43_2_lut_rep_497_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2114_i41_2_lut_rep_323_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[16] ), 
         .C(n1355[20]), .D(n7922), .Z(n7886)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i41_2_lut_rep_323_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2114_i35_2_lut_rep_313_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[13] ), 
         .C(n1355[17]), .D(n7935), .Z(n7876)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i35_2_lut_rep_313_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1962_i39_2_lut_rep_374_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[13] ), 
         .C(n1301[19]), .D(n7977), .Z(n7937)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i39_2_lut_rep_374_4_lut_4_lut.init = 16'h369c;
    LUT4 i4614_2_lut_rep_298 (.A(n50_adj_331), .B(n5014), .Z(n7861)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4614_2_lut_rep_298.init = 16'heeee;
    LUT4 div_26_LessThan_2114_i37_2_lut_rep_314_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[14] ), 
         .C(n1355[18]), .D(n7920), .Z(n7877)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i37_2_lut_rep_314_4_lut_4_lut.init = 16'h369c;
    LUT4 mux_24_i27_4_lut (.A(n157[24]), .B(n157_adj_32[24]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[26])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i27_4_lut.init = 16'hc0ca;
    LUT4 div_26_LessThan_1962_i41_2_lut_rep_375_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[14] ), 
         .C(n1301[20]), .D(n7976), .Z(n7938)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i41_2_lut_rep_375_4_lut_4_lut.init = 16'h369c;
    LUT4 mux_24_i28_4_lut (.A(n157[25]), .B(n157_adj_32[25]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[27])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i28_4_lut.init = 16'hc0ca;
    LUT4 i5350_2_lut_3_lut_4_lut (.A(n7853), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .D(n7856), .Z(n7064)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5350_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1802_i26_3_lut_3_lut (.A(n3563[2]), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n26_adj_453)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1274_i47_2_lut_rep_495_4_lut_4_lut (.A(n3075), .B(\current_wave_freq[9] ), 
         .C(n1085[23]), .D(n3514[5]), .Z(n8058)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1274_i47_2_lut_rep_495_4_lut_4_lut.init = 16'h369c;
    LUT4 mux_24_i29_4_lut (.A(n157[26]), .B(n157_adj_32[26]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[28])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i29_4_lut.init = 16'hc0ca;
    LUT4 i5568_4_lut_4_lut (.A(n8067), .B(n6390), .C(n46_adj_455), .D(n38_adj_363), 
         .Z(n48_adj_456)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5568_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i4615_1_lut_rep_296_2_lut (.A(n50_adj_331), .B(n5014), .Z(n7859)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4615_1_lut_rep_296_2_lut.init = 16'h1111;
    LUT4 mux_24_i30_4_lut (.A(n157[27]), .B(n157_adj_32[27]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[29])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i30_4_lut.init = 16'hc0ca;
    LUT4 div_26_LessThan_1179_i49_2_lut_rep_504 (.A(n3514[6]), .B(\current_wave_freq[9] ), 
         .Z(n8067)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i49_2_lut_rep_504.init = 16'h6666;
    LUT4 div_26_LessThan_1179_i46_3_lut_3_lut (.A(n3514[6]), .B(\current_wave_freq[9] ), 
         .C(n44_adj_458), .Z(n46_adj_455)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_24_i31_4_lut (.A(n157[28]), .B(n157_adj_32[28]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[30])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i31_4_lut.init = 16'hc0ca;
    LUT4 mux_24_i32_4_lut (.A(n157[29]), .B(n157_adj_32[29]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[31])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i32_4_lut.init = 16'hc0ca;
    LUT4 div_26_LessThan_2258_i18_3_lut_3_lut (.A(n7853), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2252_3_lut_3_lut_4_lut (.A(n50_adj_331), .B(n5014), .C(n3237), 
         .D(n1409[6]), .Z(n3342)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2252_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_LessThan_1179_i47_2_lut_rep_505 (.A(n3514[5]), .B(\current_wave_freq[8] ), 
         .Z(n8068)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i47_2_lut_rep_505.init = 16'h6666;
    LUT4 div_26_LessThan_2114_i49_2_lut_rep_322_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[20] ), 
         .C(n1355[24]), .D(n7926), .Z(n7885)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i49_2_lut_rep_322_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2258_i42_3_lut_3_lut (.A(n7860), .B(\current_wave_freq[22] ), 
         .C(n40_adj_440), .Z(n42_adj_371)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2114_i47_2_lut_rep_319_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[19] ), 
         .C(n1355[23]), .D(n7925), .Z(n7882)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i47_2_lut_rep_319_4_lut_4_lut.init = 16'h369c;
    LUT4 i1547_4_lut (.A(n1285_adj_297), .B(\current_wave_freq[5] ), .C(n2885), 
         .D(n2889), .Z(n10_adj_461)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B+!(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1547_4_lut.init = 16'hbbb2;
    LUT4 div_26_LessThan_1179_i44_3_lut_3_lut (.A(n3514[5]), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n44_adj_458)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1962_i23_2_lut_rep_383_4_lut_4_lut (.A(n3099), .B(n8547), 
         .C(n1301[11]), .D(n2782), .Z(n7946)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i23_2_lut_rep_383_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1179_i45_2_lut_rep_506 (.A(n3514[4]), .B(\current_wave_freq[7] ), 
         .Z(n8069)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i45_2_lut_rep_506.init = 16'h6666;
    LUT4 i4676_2_lut_3_lut_4_lut (.A(n3514[4]), .B(\current_wave_freq[7] ), 
         .C(\current_wave_freq[8] ), .D(n3514[5]), .Z(n6390)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4676_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1179_i43_2_lut_rep_507 (.A(n3514[3]), .B(\current_wave_freq[6] ), 
         .Z(n8070)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i43_2_lut_rep_507.init = 16'h6666;
    LUT4 i4602_2_lut (.A(n50_adj_335), .B(n5020), .Z(n3099)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4602_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_5 (.A(n8103), .B(n8133), .C(n8128), .D(\current_wave_freq[18] ), 
         .Z(n5020)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_5.init = 16'hfffe;
    LUT4 i5588_4_lut_4_lut (.A(n8004), .B(n6590), .C(n44_adj_462), .D(n30_adj_463), 
         .Z(n46_adj_464)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5588_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_1179_i42_3_lut_3_lut (.A(n3514[3]), .B(\current_wave_freq[6] ), 
         .C(n40_adj_465), .Z(n42_adj_466)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1179_i41_2_lut_rep_508 (.A(n3514[2]), .B(\current_wave_freq[5] ), 
         .Z(n8071)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i41_2_lut_rep_508.init = 16'h6666;
    LUT4 div_26_LessThan_1962_i27_2_lut_4_lut_4_lut (.A(n3099), .B(n8543), 
         .C(n1301[13]), .D(n7983), .Z(n27_adj_467)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i27_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i2280_1_lut (.A(\current_wave_freq[11] ), .Z(n2317)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2280_1_lut.init = 16'h5555;
    LUT4 div_26_i2279_1_lut (.A(\current_wave_freq[12] ), .Z(n2445)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2279_1_lut.init = 16'h5555;
    LUT4 div_26_LessThan_1179_i40_3_lut_3_lut (.A(n3514[2]), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n40_adj_465)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1179_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2282_1_lut (.A(\current_wave_freq[9] ), .Z(n2052)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2282_1_lut.init = 16'h5555;
    LUT4 div_26_i2281_1_lut (.A(\current_wave_freq[10] ), .Z(n2186)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2281_1_lut.init = 16'h5555;
    LUT4 div_26_i2284_1_lut (.A(\current_wave_freq[7] ), .Z(n1775)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2284_1_lut.init = 16'h5555;
    LUT4 i5676_3_lut_4_lut (.A(n8010), .B(\current_wave_freq[8] ), .C(n8001), 
         .D(n8002), .Z(n6568)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5676_3_lut_4_lut.init = 16'hfff6;
    LUT4 div_26_LessThan_1082_i48_3_lut_3_lut (.A(n8077), .B(\current_wave_freq[8] ), 
         .C(n42_adj_355), .Z(n48_adj_468)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1082_i48_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2283_1_lut (.A(\current_wave_freq[8] ), .Z(n1915)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2283_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_adj_6 (.A(\current_wave_freq[2] ), .B(n50_adj_337), .C(n5011), 
         .Z(n2662)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_6.init = 16'hfdfd;
    LUT4 div_26_i2286_1_lut (.A(\current_wave_freq[5] ), .Z(n1336_adj_333)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2286_1_lut.init = 16'h5555;
    LUT4 div_26_i2285_1_lut (.A(\current_wave_freq[6] ), .Z(n1776)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2285_1_lut.init = 16'h5555;
    LUT4 div_26_LessThan_1082_i44_3_lut_3_lut (.A(n8075), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n44_adj_469)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1082_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1962_i29_2_lut_rep_384_4_lut_4_lut (.A(n3099), .B(n8541), 
         .C(n1301[14]), .D(n7984), .Z(n7947)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i29_2_lut_rep_384_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2114_i21_2_lut_rep_311_4_lut_4_lut (.A(n3105), .B(n8545), 
         .C(n1355[10]), .D(n7928), .Z(n7874)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i21_2_lut_rep_311_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1082_i46_3_lut_3_lut (.A(n8078), .B(\current_wave_freq[7] ), 
         .C(n44_adj_469), .Z(n46_adj_470)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1082_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1962_i33_2_lut_rep_380_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[10] ), 
         .C(n1301[16]), .D(n7985), .Z(n7943)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i33_2_lut_rep_380_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1082_i43_2_lut_4_lut_4_lut (.A(n6318), .B(\current_wave_freq[5] ), 
         .C(n1031[21]), .D(n1437_adj_342), .Z(n43_adj_356)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1082_i43_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1082_i45_2_lut_rep_510_4_lut_4_lut (.A(n6318), .B(\current_wave_freq[6] ), 
         .C(n1031[22]), .D(n1436), .Z(n8073)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1082_i45_2_lut_rep_510_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1719_i34_3_lut_3_lut (.A(n8013), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[8] ), .Z(n34_adj_471)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i1062_4_lut_4_lut (.A(n6318), .B(n50_adj_343), .C(n1031[20]), 
         .D(n5804), .Z(n1585)) /* synthesis lut_function=(A (B+(D))+!A (C)) */ ;
    defparam div_26_i1062_4_lut_4_lut.init = 16'hfad8;
    LUT4 div_26_LessThan_1082_i47_2_lut_rep_511_4_lut_4_lut (.A(n6318), .B(\current_wave_freq[7] ), 
         .C(n1031[23]), .D(n8082), .Z(n8074)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1082_i47_2_lut_rep_511_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1082_i49_2_lut_rep_509_4_lut_4_lut (.A(n6318), .B(\current_wave_freq[8] ), 
         .C(n1031[24]), .D(n8083), .Z(n8072)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A !(B (C)+!B !(C))) */ ;
    defparam div_26_LessThan_1082_i49_2_lut_rep_509_4_lut_4_lut.init = 16'h9c36;
    LUT4 div_26_LessThan_1962_i31_2_lut_rep_385_4_lut_4_lut (.A(n3099), .B(n8539), 
         .C(n1301[15]), .D(n7986), .Z(n7948)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i31_2_lut_rep_385_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_1719_i36_3_lut_3_lut (.A(n8012), .B(\current_wave_freq[10] ), 
         .C(n34_adj_471), .Z(n36_adj_472)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_983_i46_3_lut_3_lut (.A(n8082), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n46_adj_473)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_983_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_adj_7 (.A(n8098), .B(n50_adj_336), .C(n1274[10]), .Z(n2783)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_7.init = 16'h1010;
    LUT4 div_26_LessThan_1962_i35_2_lut_rep_381_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[11] ), 
         .C(n1301[17]), .D(n7987), .Z(n7944)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i35_2_lut_rep_381_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_983_i48_3_lut_3_lut (.A(n8083), .B(\current_wave_freq[7] ), 
         .C(n46_adj_473), .Z(n48_adj_474)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_983_i48_3_lut_3_lut.init = 16'he8e8;
    LUT4 i4613_1_lut_rep_521 (.A(n3066), .Z(n8084)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4613_1_lut_rep_521.init = 16'h5555;
    LUT4 div_26_LessThan_1962_i37_2_lut_rep_382_4_lut_4_lut (.A(n3099), .B(\current_wave_freq[12] ), 
         .C(n1301[18]), .D(n7988), .Z(n7945)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1962_i37_2_lut_rep_382_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_983_i47_2_lut_rep_517_4_lut_4_lut (.A(n3066), .B(\current_wave_freq[6] ), 
         .C(n3041), .D(n1285_adj_297), .Z(n8080)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_983_i47_2_lut_rep_517_4_lut_4_lut.init = 16'h63c9;
    LUT4 div_26_i960_3_lut_rep_519_3_lut (.A(n3066), .B(n3041), .C(n1285_adj_297), 
         .Z(n8082)) /* synthesis lut_function=(A (C)+!A !(B)) */ ;
    defparam div_26_i960_3_lut_rep_519_3_lut.init = 16'hb1b1;
    LUT4 div_26_LessThan_983_i49_2_lut_rep_518_4_lut_4_lut (.A(n3066), .B(\current_wave_freq[7] ), 
         .C(n8086), .D(n5043), .Z(n8081)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_983_i49_2_lut_rep_518_4_lut_4_lut.init = 16'h63c9;
    LUT4 div_26_i962_3_lut_3_lut (.A(n3066), .B(\current_wave_freq[3] ), 
         .C(n1287_adj_298), .Z(n1437_adj_342)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;
    defparam div_26_i962_3_lut_3_lut.init = 16'hb4b4;
    LUT4 i1746_2_lut_rep_522 (.A(increasing_freq), .B(cout), .Z(n8085)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1746_2_lut_rep_522.init = 16'heeee;
    LUT4 i1_3_lut_rep_523 (.A(n5043), .B(n10_adj_461), .C(\current_wave_freq[6] ), 
         .Z(n8086)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i1_3_lut_rep_523.init = 16'h9696;
    LUT4 div_26_i959_3_lut_rep_520_3_lut_4_lut (.A(n5043), .B(n10_adj_461), 
         .C(\current_wave_freq[6] ), .D(n3066), .Z(n8083)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B ((D)+!C)+!B (C+(D))))) */ ;
    defparam div_26_i959_3_lut_rep_520_3_lut_4_lut.init = 16'h5596;
    LUT4 i1_3_lut_rep_524 (.A(n8089), .B(n1286_adj_296), .C(\current_wave_freq[4] ), 
         .Z(n8087)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i1_3_lut_rep_524.init = 16'h9696;
    LUT4 div_26_i961_3_lut_3_lut_4_lut (.A(n8089), .B(n1286_adj_296), .C(\current_wave_freq[4] ), 
         .D(n3066), .Z(n1436)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A (B (C+(D))+!B !(C+(D)))) */ ;
    defparam div_26_i961_3_lut_3_lut_4_lut.init = 16'hcc69;
    LUT4 i4838_3_lut_4_lut (.A(n8009), .B(\current_wave_freq[6] ), .C(\current_wave_freq[5] ), 
         .D(n2536), .Z(n6552)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4838_3_lut_4_lut.init = 16'h9009;
    LUT4 increasing_freq_I_0_2_lut_rep_525 (.A(increasing_freq), .B(cout_adj_31), 
         .Z(n8088)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(51[17:71])
    defparam increasing_freq_I_0_2_lut_rep_525.init = 16'h2222;
    LUT4 i1810_3_lut_4_lut_4_lut (.A(increasing_freq), .B(cout_adj_31), 
         .C(clk_25mhz_c_enable_23), .D(cout), .Z(clk_25mhz_c_enable_63)) /* synthesis lut_function=(!(A (B+!(C))+!A ((D)+!C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(51[17:71])
    defparam i1810_3_lut_4_lut_4_lut.init = 16'h2070;
    LUT4 i5654_2_lut_3_lut (.A(increasing_freq), .B(cout_adj_31), .C(clk_25mhz_c_enable_23), 
         .Z(clk_25mhz_c_enable_55)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(51[17:71])
    defparam i5654_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i5743_3_lut_4_lut (.A(n5043), .B(\current_wave_freq[6] ), .C(\current_wave_freq[5] ), 
         .D(n1285_adj_297), .Z(n6358)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5743_3_lut_4_lut.init = 16'h6ff6;
    LUT4 div_26_LessThan_882_i48_3_lut_3_lut (.A(n5043), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n48_adj_476)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_882_i48_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1719_i30_3_lut_3_lut (.A(n8009), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n30_adj_463)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5599_4_lut_4_lut (.A(n7966), .B(n6696), .C(n38_adj_477), .D(n24_adj_478), 
         .Z(n40_adj_479)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5599_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5056_4_lut (.A(n7939), .B(n7938), .C(n7937), .D(n6749), .Z(n6770)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5056_4_lut.init = 16'h5455;
    LUT4 i1_3_lut_adj_8 (.A(n5020), .B(n50_adj_335), .C(n1301[9]), .Z(n2901)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_8.init = 16'h1010;
    LUT4 i5601_4_lut_4_lut (.A(n7969), .B(n6718), .C(n44_adj_480), .D(n22_adj_401), 
         .Z(n46_adj_481)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5601_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_2114_i19_2_lut_4_lut_4_lut (.A(n3105), .B(n8547), 
         .C(n1355[9]), .D(n7927), .Z(n19_adj_482)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i19_2_lut_4_lut_4_lut.init = 16'h369c;
    LUT4 i1537_2_lut_4_lut (.A(n8096), .B(n8091), .C(n8119), .D(\current_wave_freq[4] ), 
         .Z(n2885)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;
    defparam i1537_2_lut_4_lut.init = 16'h00ef;
    LUT4 i5035_4_lut (.A(n7945), .B(n7944), .C(n7943), .D(n6736), .Z(n6749)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5035_4_lut.init = 16'h0001;
    L6MUX21 div_26_LessThan_2327_i46 (.D0(n34_adj_483), .D1(n44_adj_484), 
            .SD(n7259), .Z(n46_adj_346)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_i860_3_lut_4_lut (.A(n8091), .B(n8096), .C(\current_wave_freq[3] ), 
         .D(n1133), .Z(n1286_adj_296)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam div_26_i860_3_lut_4_lut.init = 16'hef10;
    LUT4 div_26_LessThan_779_i50_3_lut_rep_528 (.A(n48_adj_485), .B(n8547), 
         .C(n5041), .Z(n8091)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_779_i50_3_lut_rep_528.init = 16'he8e8;
    LUT4 i4867_3_lut_4_lut (.A(n8011), .B(\current_wave_freq[7] ), .C(n8007), 
         .D(n8008), .Z(n6581)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4867_3_lut_4_lut.init = 16'h0009;
    LUT4 i5751_2_lut_rep_527_4_lut (.A(n48_adj_485), .B(\current_wave_freq[5] ), 
         .C(n5041), .D(n8096), .Z(n8090)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5751_2_lut_rep_527_4_lut.init = 16'h0017;
    LUT4 div_26_i1276_1_lut (.A(n3078), .Z(half_period_31__N_259[13])) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i1276_1_lut.init = 16'h5555;
    PFUMX div_26_LessThan_2327_i48 (.BLUT(n28), .ALUT(n30_adj_443), .C0(n7276), 
          .Z(n48)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5756_2_lut_rep_530 (.A(n50_adj_486), .B(n5155), .Z(n8093)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i5756_2_lut_rep_530.init = 16'h1111;
    LUT4 i5022_4_lut (.A(n7948), .B(n7947), .C(n27_adj_467), .D(n6725), 
         .Z(n6736)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5022_4_lut.init = 16'h0001;
    LUT4 div_26_i756_3_lut_4_lut (.A(n50_adj_486), .B(n5155), .C(\current_wave_freq[3] ), 
         .D(n976), .Z(n1132)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam div_26_i756_3_lut_4_lut.init = 16'hef10;
    LUT4 i1_2_lut_4_lut (.A(n8095), .B(n5874), .C(n8108), .D(n8119), 
         .Z(n5660)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_4_lut_adj_9 (.A(n8095), .B(n5874), .C(n8108), .D(n50_adj_343), 
         .Z(n3066)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_9.init = 16'hfffe;
    LUT4 i4621_1_lut_2_lut_4_lut (.A(n8103), .B(n5704), .C(n8133), .D(n50_adj_339), 
         .Z(half_period_31__N_259[11])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4621_1_lut_2_lut_4_lut.init = 16'h0001;
    PFUMX div_26_LessThan_2327_i44 (.BLUT(n36_adj_450), .ALUT(n42), .C0(n7261), 
          .Z(n44_adj_484)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5270_3_lut_4_lut (.A(n3607[7]), .B(\current_wave_freq[10] ), .C(n19_adj_430), 
         .D(n7871), .Z(n6984)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5270_3_lut_4_lut.init = 16'h0009;
    LUT4 i1_2_lut_rep_470_4_lut (.A(n8103), .B(n5704), .C(n8133), .D(n50_adj_339), 
         .Z(n8033)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_470_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_10 (.A(n8103), .B(n5704), .C(n8133), .D(n8119), 
         .Z(n5646)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_10.init = 16'h0100;
    LUT4 i1_2_lut_adj_11 (.A(n50_adj_345), .B(n5029), .Z(n3075)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'heeee;
    LUT4 div_26_LessThan_1719_i44_3_lut_3_lut (.A(n8018), .B(\current_wave_freq[15] ), 
         .C(n42_adj_487), .Z(n44_adj_462)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_12 (.A(n8101), .B(n12_adj_488), .C(n5994), .D(n8131), 
         .Z(n5029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_12.init = 16'hfffe;
    LUT4 i4982_2_lut_3_lut_4_lut (.A(n7976), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .D(n7977), .Z(n6696)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4982_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1883_i36_3_lut_3_lut (.A(n7976), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .Z(n36_adj_489)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5011_4_lut (.A(n25_adj_405), .B(n7946), .C(n2900), .D(\current_wave_freq[4] ), 
         .Z(n6725)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5011_4_lut.init = 16'h1001;
    LUT4 i1_3_lut_rep_533 (.A(n5014), .B(n5832), .C(n5830), .Z(n8096)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_rep_533.init = 16'hfefe;
    LUT4 i4876_2_lut_3_lut_4_lut (.A(n8016), .B(\current_wave_freq[14] ), 
         .C(\current_wave_freq[13] ), .D(n8017), .Z(n6590)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4876_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_2_lut_4_lut_adj_13 (.A(n5014), .B(n5832), .C(n5830), .D(n8119), 
         .Z(n5664)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_13.init = 16'h0100;
    LUT4 i1_2_lut_4_lut_adj_14 (.A(n8101), .B(n8112), .C(n8102), .D(n50), 
         .Z(n3078)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_14.init = 16'hfffe;
    LUT4 i1_2_lut_adj_15 (.A(n50_adj_340), .B(n3071), .Z(n3072)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_15.init = 16'heeee;
    LUT4 i1_4_lut_adj_16 (.A(n8100), .B(n12_adj_488), .C(n5964), .D(n8108), 
         .Z(n3071)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_16.init = 16'hfffe;
    LUT4 div_26_LessThan_2187_i29_2_lut_rep_308 (.A(n3607[8]), .B(\current_wave_freq[11] ), 
         .Z(n7871)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i29_2_lut_rep_308.init = 16'h6666;
    LUT4 i1_2_lut_4_lut_adj_17 (.A(n8102), .B(n8112), .C(n8127), .D(n50_adj_336), 
         .Z(n3096)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_17.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_18 (.A(n8102), .B(n8112), .C(n8127), .D(\current_wave_freq[16] ), 
         .Z(n3092)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_18.init = 16'hfffe;
    LUT4 div_26_LessThan_1719_i42_3_lut_3_lut (.A(n8016), .B(\current_wave_freq[14] ), 
         .C(\current_wave_freq[13] ), .Z(n42_adj_487)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut (.A(n8104), .B(n8109), .C(n1328[8]), .D(n50_adj_334), 
         .Z(n3016)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    PFUMX div_26_LessThan_2327_i34 (.BLUT(n10), .ALUT(n32_adj_447), .C0(n7227), 
          .Z(n34_adj_483)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i4608_2_lut (.A(n50_adj_344), .B(n5200), .Z(n6318)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4608_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n8106), .B(n8109), .C(n50_adj_382), 
         .D(n8104), .Z(n3090)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_19 (.A(n6258), .B(n5920), .C(n5001), .D(n5910), 
         .Z(n5200)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_19.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(n8106), .B(n8109), .C(\current_wave_freq[14] ), 
         .D(n8104), .Z(n3086)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(n8106), .B(n8109), .C(n8119), 
         .D(n8104), .Z(n5666)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'h0010;
    LUT4 i1_3_lut_rep_534_4_lut (.A(n8108), .B(n8106), .C(n8102), .D(n8112), 
         .Z(n8097)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_534_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_1883_i38_3_lut_3_lut (.A(n7979), .B(\current_wave_freq[14] ), 
         .C(n36_adj_489), .Z(n38_adj_477)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4739_4_lut (.A(n8036), .B(n8035), .C(n8034), .D(n35_adj_406), 
         .Z(n6453)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4739_4_lut.init = 16'h5554;
    LUT4 div_26_LessThan_2187_i26_3_lut_3_lut (.A(n3607[8]), .B(\current_wave_freq[11] ), 
         .C(n18_adj_378), .Z(n26_adj_490)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1719_i32_3_lut_3_lut (.A(n8015), .B(\current_wave_freq[11] ), 
         .C(\current_wave_freq[7] ), .Z(n32_adj_491)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_adj_22 (.A(n50_adj_337), .B(n5011), .Z(n3093)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_22.init = 16'heeee;
    LUT4 div_26_LessThan_2114_i25_2_lut_rep_320_4_lut_4_lut (.A(n3105), .B(n8541), 
         .C(n1355[12]), .D(n7929), .Z(n7883)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i25_2_lut_rep_320_4_lut_4_lut.init = 16'h369c;
    LUT4 i1_3_lut_4_lut_adj_23 (.A(n8108), .B(n8106), .C(n5874), .D(n8117), 
         .Z(n5518)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_23.init = 16'hfffe;
    LUT4 i1_2_lut_adj_24 (.A(\current_wave_freq[12] ), .B(\current_wave_freq[14] ), 
         .Z(n5814)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_24.init = 16'heeee;
    LUT4 div_26_LessThan_1719_i40_3_lut_3_lut (.A(n8014), .B(\current_wave_freq[12] ), 
         .C(n32_adj_491), .Z(n40_adj_492)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1719_i40_3_lut_3_lut.init = 16'hd4d4;
    L6MUX21 div_26_LessThan_2258_i48 (.D0(n36_adj_493), .D1(n46_adj_494), 
            .SD(n7152), .Z(n48_adj_495)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_3_lut_rep_535_4_lut (.A(n8109), .B(n8111), .C(n8127), .D(n8112), 
         .Z(n8098)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_535_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_25 (.A(\current_wave_freq[13] ), .B(\current_wave_freq[15] ), 
         .Z(n5812)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_26 (.A(n8109), .B(n8111), .C(n8118), .D(n8112), 
         .Z(n5516)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_26.init = 16'hfffe;
    LUT4 i5061_4_lut (.A(n7939), .B(n7948), .C(n7947), .D(n27_adj_467), 
         .Z(n6775)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5061_4_lut.init = 16'h5554;
    PFUMX div_26_LessThan_2258_i46 (.BLUT(n38_adj_439), .ALUT(n44_adj_372), 
          .C0(n7154), .Z(n46_adj_494)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_3_lut_rep_531_4_lut (.A(n8110), .B(n8113), .C(n8133), .D(n5704), 
         .Z(n8094)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_531_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_532_3_lut_4_lut (.A(n8111), .B(n8112), .C(n8109), 
         .D(n8106), .Z(n8095)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_532_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(n8111), .B(n8112), .C(\current_wave_freq[18] ), 
         .D(n8109), .Z(n3098)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(n8111), .B(n8112), .C(n50_adj_334), 
         .D(n8109), .Z(n3102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_29 (.A(n8112), .B(n8111), .C(n8130), .D(n50_adj_332), 
         .Z(n3108)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_29.init = 16'hfffe;
    LUT4 div_26_LessThan_2187_i23_2_lut_rep_309 (.A(n3607[5]), .B(n8541), 
         .Z(n7872)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i23_2_lut_rep_309.init = 16'h6666;
    LUT4 i5674_4_lut (.A(n7938), .B(n7937), .C(n7945), .D(n6751), .Z(n6765)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5674_4_lut.init = 16'hfffe;
    PFUMX div_26_LessThan_2258_i32 (.BLUT(n24_adj_426), .ALUT(n30_adj_369), 
          .C0(n7096), .Z(n32_adj_496)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_i858_4_lut (.A(n5041), .B(n8090), .C(n8139), .D(n8547), 
         .Z(n5043)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i858_4_lut.init = 16'h9559;
    LUT4 i1_4_lut_adj_30 (.A(n5820), .B(n8124), .C(n8125), .D(n5814), 
         .Z(n5832)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_31 (.A(n8127), .B(n8128), .C(n8115), .D(n8114), 
         .Z(n5704)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_31.init = 16'hfffe;
    LUT4 i1_4_lut_adj_32 (.A(n5812), .B(n8121), .C(n8122), .D(n8123), 
         .Z(n5830)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'hfffe;
    LUT4 div_26_i2276_1_lut (.A(\current_wave_freq[15] ), .Z(n2811)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2276_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_4_lut_adj_33 (.A(n8125), .B(n8124), .C(n5812), .D(n5814), 
         .Z(n5920)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_33.init = 16'hfffe;
    LUT4 i1_2_lut_adj_34 (.A(\current_wave_freq[6] ), .B(\current_wave_freq[7] ), 
         .Z(n5820)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_34.init = 16'heeee;
    LUT4 i4640_3_lut_4_lut (.A(n8125), .B(n8124), .C(n8117), .D(n6266), 
         .Z(n6350)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4640_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_35 (.A(n8125), .B(n8124), .C(n5820), .D(n8117), 
         .Z(n6268)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_35.init = 16'hfffe;
    LUT4 i1_4_lut_adj_36 (.A(n5702), .B(n8105), .C(n5704), .D(n5700), 
         .Z(n5155)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_36.init = 16'hfffe;
    LUT4 i1_2_lut_rep_538_3_lut_4_lut (.A(n8126), .B(n8114), .C(n8127), 
         .D(n8115), .Z(n8101)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_538_3_lut_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_2187_i20_3_lut_3_lut (.A(n3607[5]), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n20_adj_497)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_rep_537_3_lut_4_lut (.A(n8128), .B(n8130), .C(n8127), 
         .D(n8115), .Z(n8100)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_537_3_lut_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_2187_i25_2_lut_rep_310 (.A(n3607[6]), .B(n8539), 
         .Z(n7873)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i25_2_lut_rep_310.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_adj_37 (.A(n8128), .B(n8130), .C(n8537), .D(n8129), 
         .Z(n5994)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_37.init = 16'hfffe;
    LUT4 i1_2_lut_rep_536_3_lut_4_lut (.A(n8128), .B(n8130), .C(n8112), 
         .D(n8111), .Z(n8099)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_536_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5004_2_lut_3_lut_4_lut (.A(n7980), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .D(n7978), .Z(n6718)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5004_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1883_i32_3_lut_3_lut (.A(n7980), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .Z(n32_adj_498)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5317_2_lut_3_lut_4_lut (.A(n3607[6]), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[18] ), .D(n3607[15]), .Z(n7031)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5317_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_i2244_3_lut_rep_285_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[8]), .D(n1409[14]), .Z(n7848)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2244_3_lut_rep_285_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_LessThan_2114_i23_2_lut_rep_312_4_lut_4_lut (.A(n3105), .B(n8543), 
         .C(n1355[11]), .D(n7930), .Z(n7875)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i23_2_lut_rep_312_4_lut_4_lut.init = 16'h369c;
    LUT4 i1_2_lut_3_lut_4_lut_adj_38 (.A(n8130), .B(n8129), .C(n8128), 
         .D(n8127), .Z(n6200)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_38.init = 16'hfffe;
    LUT4 div_26_LessThan_674_i50_4_lut (.A(n8551), .B(n8549), .C(n5455), 
         .D(n976), .Z(n50_adj_486)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_674_i50_4_lut.init = 16'hc0e8;
    LUT4 div_26_i2243_3_lut_rep_284_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[9]), .D(n1409[15]), .Z(n7847)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2243_3_lut_rep_284_3_lut_4_lut.init = 16'hf1e0;
    PFUMX div_26_LessThan_2258_i36 (.BLUT(n12_adj_438), .ALUT(n34_adj_427), 
          .C0(n7120), .Z(n36_adj_493)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_4_lut_adj_39 (.A(n6350), .B(n5790), .C(n8112), .D(n5820), 
         .Z(n5455)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_39.init = 16'h0004;
    LUT4 i1_4_lut_adj_40 (.A(\current_wave_freq[20] ), .B(n8111), .C(n8130), 
         .D(n15_adj_499), .Z(n5790)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_40.init = 16'h0100;
    LUT4 i5702_2_lut_rep_262_3_lut_4_lut (.A(n8129), .B(n8132), .C(n50_adj_361), 
         .D(n8112), .Z(n7825)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5702_2_lut_rep_262_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n8129), .B(n8132), .C(\current_wave_freq[22] ), 
         .D(n8112), .Z(n3110)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'hfffe;
    LUT4 i29_2_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .Z(n15_adj_499)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i29_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_42 (.A(n8129), .B(n8132), .C(n1[4]), 
         .D(n8112), .Z(n5592)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_42.init = 16'h0010;
    LUT4 i1_2_lut_rep_539_3_lut_4_lut (.A(n8129), .B(n8132), .C(n8130), 
         .D(n8128), .Z(n8102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_539_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_542_4_lut (.A(n8129), .B(n8132), .C(n8130), .D(n8112), 
         .Z(n8105)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_542_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_43 (.A(half_period_31__N_259[21]), .B(n5518), .C(\current_wave_freq[2] ), 
         .D(n5516), .Z(n976)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1_4_lut_adj_43.init = 16'h0010;
    LUT4 i1_2_lut_rep_541_3_lut_4_lut (.A(n8131), .B(n8133), .C(n8132), 
         .D(n8129), .Z(n8104)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_541_3_lut_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_2114_i29_2_lut_rep_318_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[10] ), 
         .C(n1355[14]), .D(n7932), .Z(n7881)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i29_2_lut_rep_318_4_lut_4_lut.init = 16'h369c;
    LUT4 i1_3_lut_4_lut_adj_44 (.A(n8132), .B(n8131), .C(\current_wave_freq[25] ), 
         .D(n8133), .Z(n5001)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_44.init = 16'hfffe;
    LUT4 i1_4_lut_adj_45 (.A(\current_wave_freq[12] ), .B(n6258), .C(n6246), 
         .D(\current_wave_freq[13] ), .Z(n6266)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_45.init = 16'hfffe;
    LUT4 i1_2_lut_rep_540_3_lut_4_lut (.A(n8132), .B(n8131), .C(n8129), 
         .D(n8130), .Z(n8103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_540_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_46 (.A(\current_wave_freq[14] ), .B(\current_wave_freq[15] ), 
         .Z(n6246)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_46.init = 16'heeee;
    LUT4 i1_2_lut_rep_551 (.A(\current_wave_freq[13] ), .B(\current_wave_freq[14] ), 
         .Z(n8114)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_551.init = 16'heeee;
    LUT4 i5663_4_lut (.A(n5584), .B(n8099), .C(n8101), .D(n5874), .Z(half_period_31__N_259[21])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5663_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_552 (.A(\current_wave_freq[15] ), .B(\current_wave_freq[16] ), 
         .Z(n8115)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_552.init = 16'heeee;
    LUT4 div_26_i755_4_lut (.A(n5455), .B(n8093), .C(n48_adj_500), .D(n8549), 
         .Z(n5041)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i755_4_lut.init = 16'h6aa6;
    LUT4 i4632_3_lut_rep_553 (.A(\current_wave_freq[4] ), .B(\current_wave_freq[2] ), 
         .C(\current_wave_freq[3] ), .Z(n8116)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4632_3_lut_rep_553.init = 16'h8080;
    LUT4 i3361_2_lut_rep_554 (.A(n8549), .B(n8547), .Z(n8117)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3361_2_lut_rep_554.init = 16'heeee;
    LUT4 i1_2_lut_rep_555 (.A(n8545), .B(n8551), .Z(n8118)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_555.init = 16'heeee;
    LUT4 i1322_2_lut (.A(n976), .B(\current_wave_freq[3] ), .Z(n48_adj_500)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1322_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_47 (.A(n8545), .B(n8551), .C(n8547), 
         .D(n8549), .Z(n5584)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_47.init = 16'hfffe;
    LUT4 div_26_i2247_3_lut_rep_283_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[5]), .D(n1409[11]), .Z(n7846)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2247_3_lut_rep_283_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5241_3_lut_4_lut (.A(n3607[2]), .B(n8547), .C(n8549), .D(n3607[1]), 
         .Z(n6955)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5241_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_1883_i44_3_lut_3_lut (.A(n7981), .B(\current_wave_freq[17] ), 
         .C(n32_adj_498), .Z(n44_adj_480)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_rep_556 (.A(n8551), .B(\current_wave_freq[2] ), .Z(n8119)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_556.init = 16'h8888;
    LUT4 div_26_LessThan_2187_i16_3_lut_3_lut (.A(n3607[2]), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n16_adj_501)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i16_3_lut_3_lut.init = 16'hd4d4;
    L6MUX21 div_26_LessThan_2187_i48 (.D0(n38_adj_502), .D1(n46_adj_503), 
            .SD(n7045), .Z(n48_adj_419)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_3_lut_rep_529_4_lut (.A(n8551), .B(\current_wave_freq[2] ), 
         .C(n50_adj_486), .D(n5155), .Z(n8092)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_3_lut_rep_529_4_lut.init = 16'hfff7;
    PFUMX div_26_LessThan_2187_i46 (.BLUT(n40_adj_504), .ALUT(n44_adj_505), 
          .C0(n7047), .Z(n46_adj_503)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5666_4_lut (.A(n6268), .B(n50_adj_506), .C(n5017), .D(n6266), 
         .Z(half_period_31__N_259[20])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5666_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_rep_526_4_lut (.A(n8551), .B(\current_wave_freq[2] ), 
         .C(n8091), .D(n8096), .Z(n8089)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_3_lut_rep_526_4_lut.init = 16'hfff7;
    LUT4 div_26_LessThan_567_i50_3_lut (.A(\current_wave_freq[2] ), .B(\current_wave_freq[3] ), 
         .C(half_period_31__N_259[21]), .Z(n50_adj_506)) /* synthesis lut_function=(A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_567_i50_3_lut.init = 16'ha8a8;
    LUT4 i1_2_lut_3_lut (.A(\current_wave_freq[3] ), .B(\current_wave_freq[2] ), 
         .C(n5023), .Z(n5650)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    LUT4 i5657_2_lut (.A(\current_wave_freq[2] ), .B(half_period_31__N_259[21]), 
         .Z(half_period_31__N_259[23])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5657_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_48 (.A(\current_wave_freq[3] ), .B(\current_wave_freq[2] ), 
         .C(n5200), .Z(n5652)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_48.init = 16'h0808;
    LUT4 i1602_1_lut_rep_557 (.A(\current_wave_freq[2] ), .Z(n8120)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1602_1_lut_rep_557.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(\current_wave_freq[2] ), .B(n5023), .Z(n5850)) /* synthesis lut_function=((B)+!A) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_4_lut_4_lut (.A(\current_wave_freq[2] ), .B(n8108), .C(n5874), 
         .D(n8095), .Z(n5804)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_3_lut (.A(\current_wave_freq[2] ), .B(n50), .C(n8097), 
         .Z(n2012)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_3_lut_4_lut_adj_49 (.A(n8543), .B(n8541), .C(n8545), .D(n8547), 
         .Z(n5702)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_49.init = 16'hfffe;
    LUT4 div_26_LessThan_2114_i27_2_lut_rep_321_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[9] ), 
         .C(n1355[13]), .D(n7931), .Z(n7884)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i27_2_lut_rep_321_4_lut_4_lut.init = 16'h369c;
    LUT4 mux_24_i3_4_lut (.A(n157[0]), .B(n157_adj_32[0]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i3_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_558 (.A(\current_wave_freq[18] ), .B(\current_wave_freq[19] ), 
         .Z(n8121)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_558.init = 16'heeee;
    LUT4 i3360_2_lut (.A(increasing_freq), .B(cout), .Z(increasing_freq_N_289)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i3360_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_50 (.A(wave_outP_c), .B(clk_25mhz_c_enable_54), .Z(wave_outP_N_285)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_50.init = 16'h6666;
    LUT4 div_26_i859_4_lut (.A(n1132), .B(n8092), .C(n8090), .D(n8549), 
         .Z(n1285_adj_297)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i859_4_lut.init = 16'h6a9a;
    LUT4 i4973_3_lut_4_lut (.A(n7983), .B(\current_wave_freq[6] ), .C(n7974), 
         .D(n7975), .Z(n6687)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4973_3_lut_4_lut.init = 16'h0009;
    LUT4 div_26_i2246_3_lut_rep_282_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[6]), .D(n1409[12]), .Z(n7845)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2246_3_lut_rep_282_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4960_3_lut_4_lut (.A(n7984), .B(\current_wave_freq[7] ), .C(n7972), 
         .D(n7973), .Z(n6674)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4960_3_lut_4_lut.init = 16'h0009;
    PFUMX div_26_LessThan_2187_i38 (.BLUT(n14_adj_435), .ALUT(n36_adj_509), 
          .C0(n7022), .Z(n38_adj_502)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_LessThan_2114_i33_2_lut_rep_317_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[12] ), 
         .C(n1355[16]), .D(n7933), .Z(n7880)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i33_2_lut_rep_317_4_lut_4_lut.init = 16'h369c;
    LUT4 i1_2_lut_rep_559 (.A(\current_wave_freq[16] ), .B(\current_wave_freq[17] ), 
         .Z(n8122)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_559.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_51 (.A(\current_wave_freq[16] ), .B(\current_wave_freq[17] ), 
         .C(\current_wave_freq[19] ), .D(\current_wave_freq[18] ), .Z(n6258)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_51.init = 16'hfffe;
    LUT4 i1_2_lut_rep_560 (.A(\current_wave_freq[20] ), .B(\current_wave_freq[21] ), 
         .Z(n8123)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_560.init = 16'heeee;
    LUT4 mux_24_i4_4_lut (.A(n157[1]), .B(n157_adj_32[1]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i4_4_lut.init = 16'hc0ca;
    LUT4 i1_3_lut_4_lut_adj_52 (.A(\current_wave_freq[20] ), .B(\current_wave_freq[21] ), 
         .C(\current_wave_freq[23] ), .D(\current_wave_freq[22] ), .Z(n5910)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_52.init = 16'hfffe;
    LUT4 i1_2_lut_rep_561 (.A(n8537), .B(\current_wave_freq[11] ), .Z(n8124)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_561.init = 16'heeee;
    LUT4 mux_24_i5_4_lut (.A(n157[2]), .B(n157_adj_32[2]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i5_4_lut.init = 16'hc0ca;
    LUT4 div_26_LessThan_2114_i31_2_lut_rep_316_4_lut_4_lut (.A(n3105), .B(\current_wave_freq[11] ), 
         .C(n1355[15]), .D(n7934), .Z(n7879)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2114_i31_2_lut_rep_316_4_lut_4_lut.init = 16'h369c;
    PFUMX div_26_LessThan_2187_i34 (.BLUT(n26_adj_490), .ALUT(n32_adj_514), 
          .C0(n6998), .Z(n34_adj_418)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_2_lut_rep_562 (.A(n8541), .B(n8539), .Z(n8125)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_562.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_53 (.A(n8539), .B(n8537), .C(n8131), .D(n8129), 
         .Z(n5964)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_53.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_54 (.A(n8539), .B(n8537), .C(n8541), 
         .D(n8543), .Z(n5874)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_54.init = 16'hfffe;
    LUT4 i4605_1_lut_rep_373 (.A(n3102), .Z(n7936)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4605_1_lut_rep_373.init = 16'h5555;
    LUT4 mux_24_i6_4_lut (.A(n157[3]), .B(n157_adj_32[3]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i6_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_563 (.A(\current_wave_freq[11] ), .B(\current_wave_freq[12] ), 
         .Z(n8126)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_563.init = 16'heeee;
    LUT4 i1_2_lut_rep_545_3_lut_4_lut (.A(\current_wave_freq[11] ), .B(\current_wave_freq[12] ), 
         .C(\current_wave_freq[14] ), .D(\current_wave_freq[13] ), .Z(n8108)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_545_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5614_4_lut_4_lut (.A(n7906), .B(n6833), .C(n34_adj_517), .D(n20_adj_518), 
         .Z(n36_adj_519)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5614_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5713_4_lut (.A(n7824), .B(n45), .C(n43), .D(n7234), .Z(n7259)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5713_4_lut.init = 16'hfeff;
    LUT4 i5520_4_lut (.A(n41), .B(n39), .C(n37), .D(n7218), .Z(n7234)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5520_4_lut.init = 16'h1011;
    LUT4 i5504_4_lut (.A(n35), .B(n33), .C(n21), .D(n7171), .Z(n7218)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5504_4_lut.init = 16'h1011;
    LUT4 i5457_2_lut (.A(n19), .B(n17), .Z(n7171)) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5457_2_lut.init = 16'h1111;
    LUT4 i1540_4_lut (.A(n1286_adj_296), .B(n8096), .C(n8091), .D(n8116), 
         .Z(n2889)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i1540_4_lut.init = 16'ha8aa;
    LUT4 div_26_LessThan_2327_i41_4_lut (.A(n7850), .B(\current_wave_freq[19] ), 
         .C(n1[20]), .D(n7825), .Z(n41)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i41_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i39_4_lut (.A(n7858), .B(\current_wave_freq[18] ), 
         .C(n1[19]), .D(n7825), .Z(n39)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i39_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_1883_i28_3_lut_3_lut (.A(n7986), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n28_adj_520)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_55 (.A(\current_wave_freq[11] ), .B(\current_wave_freq[12] ), 
         .C(n8537), .D(n8539), .Z(n5700)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_55.init = 16'hfffe;
    PFUMX div_26_LessThan_2114_i48 (.BLUT(n42_adj_521), .ALUT(n46_adj_367), 
          .C0(n6949), .Z(n48_adj_522)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 mux_24_i7_4_lut (.A(n157[4]), .B(n157_adj_32[4]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i7_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_564 (.A(\current_wave_freq[17] ), .B(\current_wave_freq[18] ), 
         .Z(n8127)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_564.init = 16'heeee;
    LUT4 i5616_4_lut_4_lut (.A(n7909), .B(n6855), .C(n40_adj_525), .D(n18_adj_413), 
         .Z(n42_adj_526)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5616_4_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_24_i8_4_lut (.A(n157[5]), .B(n157_adj_32[5]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i8_4_lut.init = 16'hc0ca;
    LUT4 i5761_4_lut_4_lut (.A(n7909), .B(n6853), .C(n7910), .D(n7911), 
         .Z(n6869)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5761_4_lut_4_lut.init = 16'hfff4;
    LUT4 mux_24_i9_4_lut (.A(n157[6]), .B(n157_adj_32[6]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i9_4_lut.init = 16'hc0ca;
    PFUMX div_26_LessThan_2114_i38 (.BLUT(n30), .ALUT(n36_adj_530), .C0(n6918), 
          .Z(n38_adj_531)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_2_lut_rep_543_3_lut_4_lut (.A(\current_wave_freq[17] ), .B(\current_wave_freq[18] ), 
         .C(\current_wave_freq[16] ), .D(\current_wave_freq[15] ), .Z(n8106)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_543_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_565 (.A(\current_wave_freq[19] ), .B(\current_wave_freq[20] ), 
         .Z(n8128)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_565.init = 16'heeee;
    LUT4 i1_2_lut_rep_544_3_lut_4_lut (.A(\current_wave_freq[19] ), .B(\current_wave_freq[20] ), 
         .C(\current_wave_freq[18] ), .D(\current_wave_freq[17] ), .Z(n8107)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_544_3_lut_4_lut.init = 16'hfffe;
    LUT4 div_26_i2251_3_lut_rep_281_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[1]), .D(n1409[7]), .Z(n7844)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2251_3_lut_rep_281_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_i2236_3_lut_rep_280_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[16]), .D(n1409[22]), .Z(n7843)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2236_3_lut_rep_280_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_566 (.A(\current_wave_freq[23] ), .B(\current_wave_freq[25] ), 
         .Z(n8129)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_566.init = 16'heeee;
    LUT4 div_26_LessThan_2327_i37_4_lut (.A(n7857), .B(\current_wave_freq[17] ), 
         .C(n1[18]), .D(n7825), .Z(n37)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i37_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2039_i34_3_lut_3_lut (.A(n7921), .B(\current_wave_freq[14] ), 
         .C(n32_adj_532), .Z(n34_adj_517)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2327_i19_4_lut (.A(n7856), .B(\current_wave_freq[8] ), 
         .C(n1[9]), .D(n7825), .Z(n19)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i19_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i17_4_lut (.A(n7855), .B(n8543), .C(n1[8]), 
         .D(n7825), .Z(n17)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i17_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i35_4_lut (.A(n7852), .B(\current_wave_freq[16] ), 
         .C(n1[17]), .D(n7825), .Z(n35)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i35_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i33_4_lut (.A(n7854), .B(\current_wave_freq[15] ), 
         .C(n1[16]), .D(n7825), .Z(n33)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i33_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i21_4_lut (.A(n7853), .B(\current_wave_freq[9] ), 
         .C(n1[10]), .D(n7825), .Z(n21)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i21_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i43_4_lut (.A(n7851), .B(\current_wave_freq[20] ), 
         .C(n1[21]), .D(n7825), .Z(n43)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i43_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_1883_i30_3_lut_3_lut (.A(n7985), .B(\current_wave_freq[9] ), 
         .C(n28_adj_520), .Z(n30_adj_533)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_24_i10_4_lut (.A(n157[7]), .B(n157_adj_32[7]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i10_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_567 (.A(\current_wave_freq[21] ), .B(\current_wave_freq[22] ), 
         .Z(n8130)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_567.init = 16'heeee;
    LUT4 i1_2_lut_rep_547_3_lut_4_lut (.A(\current_wave_freq[21] ), .B(\current_wave_freq[22] ), 
         .C(\current_wave_freq[25] ), .D(\current_wave_freq[23] ), .Z(n8110)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_547_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_24_i11_4_lut (.A(n157[8]), .B(n157_adj_32[8]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i11_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_546_3_lut_4_lut (.A(\current_wave_freq[21] ), .B(\current_wave_freq[22] ), 
         .C(\current_wave_freq[20] ), .D(\current_wave_freq[19] ), .Z(n8109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_546_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_568 (.A(\current_wave_freq[24] ), .B(\current_wave_freq[29] ), 
         .Z(n8131)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_568.init = 16'heeee;
    LUT4 mux_24_i12_4_lut (.A(n157[9]), .B(n157_adj_32[9]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i12_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_56 (.A(n6200), .B(n8113), .C(n8133), .D(\current_wave_freq[16] ), 
         .Z(n5011)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_56.init = 16'hfffe;
    LUT4 div_26_LessThan_1883_i26_3_lut_3_lut (.A(n7987), .B(\current_wave_freq[10] ), 
         .C(\current_wave_freq[6] ), .Z(n26_adj_537)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5484_2_lut (.A(n29), .B(n27), .Z(n7198)) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5484_2_lut.init = 16'h1111;
    PFUMX div_26_LessThan_2114_i44 (.BLUT(n24), .ALUT(n26_adj_349), .C0(n6951), 
          .Z(n44_adj_366)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_LessThan_2327_i29_4_lut (.A(n7848), .B(\current_wave_freq[13] ), 
         .C(n1[14]), .D(n7825), .Z(n29)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i29_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i27_4_lut (.A(n7849), .B(\current_wave_freq[12] ), 
         .C(n1[13]), .D(n7825), .Z(n27)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i27_4_lut.init = 16'h3c66;
    LUT4 i1_2_lut_rep_569 (.A(\current_wave_freq[26] ), .B(\current_wave_freq[28] ), 
         .Z(n8132)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_569.init = 16'heeee;
    LUT4 div_26_i2235_3_lut_rep_279_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[17]), .D(n1409[23]), .Z(n7842)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2235_3_lut_rep_279_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_24_i13_4_lut (.A(n157[10]), .B(n157_adj_32[10]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[12])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i13_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(\current_wave_freq[26] ), .B(\current_wave_freq[28] ), 
         .C(\current_wave_freq[12] ), .Z(n6048)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_57.init = 16'hfefe;
    LUT4 i5141_2_lut_3_lut_4_lut (.A(n7923), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .D(n7922), .Z(n6855)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5141_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 mux_24_i14_4_lut (.A(n157[11]), .B(n157_adj_32[11]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[13])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i14_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_550_3_lut_4_lut (.A(\current_wave_freq[26] ), .B(\current_wave_freq[28] ), 
         .C(\current_wave_freq[29] ), .D(\current_wave_freq[24] ), .Z(n8113)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_550_3_lut_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_2039_i28_3_lut_3_lut (.A(n7923), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .Z(n28_adj_540)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_24_i15_4_lut (.A(n157[12]), .B(n157_adj_32[12]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i15_4_lut.init = 16'hc0ca;
    L6MUX21 div_26_LessThan_2039_i50 (.D0(n38_adj_542), .D1(n48_adj_543), 
            .SD(n6867), .Z(n50_adj_341)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_2_lut_rep_548_3_lut_4_lut (.A(\current_wave_freq[26] ), .B(\current_wave_freq[28] ), 
         .C(\current_wave_freq[25] ), .D(\current_wave_freq[23] ), .Z(n8111)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_548_3_lut_4_lut.init = 16'hfffe;
    PFUMX div_26_LessThan_2039_i48 (.BLUT(n42_adj_526), .ALUT(n46_adj_544), 
          .C0(n6869), .Z(n48_adj_543)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_2_lut_rep_570 (.A(\current_wave_freq[30] ), .B(\current_wave_freq[27] ), 
         .Z(n8133)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_570.init = 16'heeee;
    LUT4 i1_2_lut_rep_549_3_lut_4_lut (.A(\current_wave_freq[30] ), .B(\current_wave_freq[27] ), 
         .C(\current_wave_freq[29] ), .D(\current_wave_freq[24] ), .Z(n8112)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_549_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_24_i16_4_lut (.A(n157[13]), .B(n157_adj_32[13]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i16_4_lut.init = 16'hc0ca;
    LUT4 div_26_LessThan_2039_i40_3_lut_3_lut (.A(n7924), .B(\current_wave_freq[17] ), 
         .C(n28_adj_540), .Z(n40_adj_525)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1883_i34_3_lut_3_lut (.A(n7988), .B(\current_wave_freq[11] ), 
         .C(n26_adj_537), .Z(n34_adj_546)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_3_lut_adj_58 (.A(\current_wave_freq[30] ), .B(\current_wave_freq[27] ), 
         .C(\current_wave_freq[14] ), .Z(n6138)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_58.init = 16'hfefe;
    LUT4 div_26_LessThan_2327_i22_3_lut (.A(n14_adj_547), .B(\current_wave_freq[11] ), 
         .C(n25), .Z(n22_adj_442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i22_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_2327_i14_3_lut (.A(\current_wave_freq[6] ), .B(\current_wave_freq[10] ), 
         .C(n23), .Z(n14_adj_547)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i14_3_lut.init = 16'hcaca;
    LUT4 i4944_3_lut_4_lut (.A(n7982), .B(\current_wave_freq[5] ), .C(\current_wave_freq[4] ), 
         .D(n2782), .Z(n6658)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4944_3_lut_4_lut.init = 16'h9009;
    LUT4 div_26_LessThan_2327_i25_4_lut (.A(n7845), .B(\current_wave_freq[11] ), 
         .C(n1[12]), .D(n7825), .Z(n25)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i25_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i23_4_lut (.A(n7846), .B(\current_wave_freq[10] ), 
         .C(n1[11]), .D(n7825), .Z(n23)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i23_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2039_i26_3_lut_3_lut (.A(n7925), .B(\current_wave_freq[18] ), 
         .C(\current_wave_freq[9] ), .Z(n26_adj_548)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_adj_59 (.A(n5155), .B(n50_adj_486), .C(\current_wave_freq[2] ), 
         .Z(n1133)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_3_lut_adj_59.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_60 (.A(\current_wave_freq[30] ), .B(\current_wave_freq[27] ), 
         .C(\current_wave_freq[28] ), .D(\current_wave_freq[26] ), .Z(n12_adj_488)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_60.init = 16'hfffe;
    LUT4 div_26_LessThan_1883_i24_3_lut_3_lut (.A(n7982), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n24_adj_478)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1883_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_24_i17_4_lut (.A(n157[14]), .B(n157_adj_32[14]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i17_4_lut.init = 16'hc0ca;
    LUT4 mux_24_i18_4_lut (.A(n157[15]), .B(n157_adj_32[15]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[17])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i18_4_lut.init = 16'hc0ca;
    LUT4 div_26_LessThan_2039_i46_3_lut_3_lut (.A(n7926), .B(\current_wave_freq[19] ), 
         .C(n44_adj_551), .Z(n46_adj_544)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_24_i19_4_lut (.A(n157[16]), .B(n157_adj_32[16]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[18])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i19_4_lut.init = 16'hc0ca;
    PFUMX div_26_LessThan_2039_i38 (.BLUT(n30_adj_553), .ALUT(n36_adj_519), 
          .C0(n6838), .Z(n38_adj_542)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5477_4_lut (.A(n27), .B(n25), .C(n23), .D(n15), .Z(n7191)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5477_4_lut.init = 16'h5554;
    LUT4 div_26_LessThan_2327_i15_4_lut (.A(n7844), .B(n8545), .C(n1[7]), 
         .D(n7825), .Z(n15)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i15_4_lut.init = 16'h3c66;
    LUT4 div_26_LessThan_2327_i18_3_lut (.A(\current_wave_freq[9] ), .B(\current_wave_freq[18] ), 
         .C(n39), .Z(n18_adj_449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i18_3_lut.init = 16'hcaca;
    LUT4 i5540_2_lut (.A(n45), .B(n43), .Z(n7254)) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5540_2_lut.init = 16'h1111;
    LUT4 i5711_4_lut (.A(n7824), .B(n45), .C(n43), .D(n7243), .Z(n7261)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5711_4_lut.init = 16'hfffe;
    LUT4 i5529_3_lut (.A(n41), .B(n39), .C(n21), .Z(n7243)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5529_3_lut.init = 16'h0101;
    LUT4 div_26_i2275_1_lut (.A(\current_wave_freq[16] ), .Z(n2927)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2275_1_lut.init = 16'h5555;
    LUT4 div_26_LessThan_2327_i38_3_lut (.A(\current_wave_freq[20] ), .B(\current_wave_freq[21] ), 
         .C(n45), .Z(n38_adj_448)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i38_3_lut.init = 16'hcaca;
    LUT4 div_26_LessThan_2039_i30_3_lut_3_lut (.A(n7933), .B(\current_wave_freq[11] ), 
         .C(n22_adj_554), .Z(n30_adj_553)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5110_3_lut_4_lut (.A(n7933), .B(\current_wave_freq[11] ), .C(n23_adj_379), 
         .D(n7919), .Z(n6824)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5110_3_lut_4_lut.init = 16'h0009;
    LUT4 div_26_i2245_3_lut_rep_286_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[7]), .D(n1409[13]), .Z(n7849)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2245_3_lut_rep_286_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_24_i20_4_lut (.A(n157[17]), .B(n157_adj_32[17]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[19])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i20_4_lut.init = 16'hc0ca;
    LUT4 i5119_2_lut_3_lut_4_lut (.A(n7920), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .D(n7935), .Z(n6833)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5119_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i5692_4_lut (.A(n7969), .B(n7968), .C(n7967), .D(n6699), .Z(n6714)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5692_4_lut.init = 16'hfffe;
    LUT4 mux_24_i21_4_lut (.A(n157[18]), .B(n157_adj_32[18]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[20])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i21_4_lut.init = 16'hc0ca;
    LUT4 div_26_i2238_3_lut_rep_287_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[14]), .D(n1409[20]), .Z(n7850)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2238_3_lut_rep_287_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_LessThan_2039_i32_3_lut_3_lut (.A(n7920), .B(\current_wave_freq[13] ), 
         .C(\current_wave_freq[12] ), .Z(n32_adj_532)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2237_3_lut_rep_288_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[15]), .D(n1409[21]), .Z(n7851)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2237_3_lut_rep_288_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_i2241_3_lut_rep_289_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[11]), .D(n1409[17]), .Z(n7852)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2241_3_lut_rep_289_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_i2248_3_lut_rep_290_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[4]), .D(n1409[10]), .Z(n7853)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2248_3_lut_rep_290_3_lut_4_lut.init = 16'hf1e0;
    PFUMX div_26_LessThan_2039_i44 (.BLUT(n24_adj_557), .ALUT(n26_adj_548), 
          .C0(n6871), .Z(n44_adj_551)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_LessThan_2039_i20_3_lut_3_lut (.A(n7928), .B(\current_wave_freq[5] ), 
         .C(\current_wave_freq[4] ), .Z(n20_adj_518)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2287_1_lut (.A(\current_wave_freq[4] ), .Z(n1184)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2287_1_lut.init = 16'h5555;
    LUT4 div_26_LessThan_2258_i50_4_lut (.A(n32_adj_496), .B(n48_adj_495), 
         .C(n7841), .D(n7141), .Z(n50_adj_361)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2258_i50_4_lut.init = 16'hcacc;
    LUT4 div_26_i2242_3_lut_rep_291_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[10]), .D(n1409[16]), .Z(n7854)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2242_3_lut_rep_291_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i5818 (.BLUT(n8137), .ALUT(n8138), .C0(\current_wave_freq[4] ), 
          .Z(n8139));
    LUT4 div_26_i2250_3_lut_rep_292_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[2]), .D(n1409[8]), .Z(n7855)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2250_3_lut_rep_292_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5427_4_lut (.A(n7834), .B(n7833), .C(n7832), .D(n7116), .Z(n7141)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5427_4_lut.init = 16'h0100;
    LUT4 i5402_4_lut (.A(n7838), .B(n7837), .C(n7836), .D(n7101), .Z(n7116)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5402_4_lut.init = 16'h0100;
    LUT4 i5387_4_lut (.A(n7828), .B(n7827), .C(n7826), .D(n7080), .Z(n7101)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5387_4_lut.init = 16'h5455;
    LUT4 mux_24_i22_4_lut (.A(n157[19]), .B(n157_adj_32[19]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[21])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i22_4_lut.init = 16'hc0ca;
    LUT4 mux_24_i23_4_lut (.A(n157[20]), .B(n157_adj_32[20]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[22])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i23_4_lut.init = 16'hc0ca;
    LUT4 i5366_4_lut (.A(n7831), .B(n7830), .C(n7829), .D(n7067), .Z(n7080)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5366_4_lut.init = 16'h0001;
    LUT4 i5353_4_lut (.A(n23_adj_387), .B(n7840), .C(n7839), .D(n7056), 
         .Z(n7067)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5353_4_lut.init = 16'h0001;
    L6MUX21 div_26_LessThan_1962_i50 (.D0(n40_adj_560), .D1(n48_adj_561), 
            .SD(n6785), .Z(n50_adj_334)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5342_4_lut (.A(n17_adj_412), .B(n7835), .C(n3342), .D(\current_wave_freq[4] ), 
         .Z(n7056)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5342_4_lut.init = 16'h1001;
    PFUMX div_26_LessThan_1962_i48 (.BLUT(n44_adj_392), .ALUT(n46_adj_403), 
          .C0(n6791), .Z(n48_adj_561)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_3_lut_adj_61 (.A(n3071), .B(n50_adj_340), .C(\current_wave_freq[2] ), 
         .Z(n1731)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_3_lut_adj_61.init = 16'hefef;
    LUT4 i5092_2_lut_3_lut_4_lut (.A(n7931), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .D(n7929), .Z(n6806)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5092_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 mux_24_i24_4_lut (.A(n157[21]), .B(n157_adj_32[21]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[23])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i24_4_lut.init = 16'hc0ca;
    LUT4 i4985_4_lut (.A(n7966), .B(n7965), .C(n7964), .D(n6680), .Z(n6699)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4985_4_lut.init = 16'h0100;
    LUT4 div_26_LessThan_2039_i24_3_lut_3_lut (.A(n7931), .B(\current_wave_freq[8] ), 
         .C(\current_wave_freq[7] ), .Z(n24_adj_557)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2327_i20_3_lut (.A(\current_wave_freq[15] ), .B(\current_wave_freq[16] ), 
         .C(n35), .Z(n20_adj_446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i20_3_lut.init = 16'hcaca;
    PFUMX div_26_LessThan_1962_i40 (.BLUT(n32_adj_407), .ALUT(n38_adj_390), 
          .C0(n6765), .Z(n40_adj_560)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5715_3_lut (.A(n37), .B(n35), .C(n33), .Z(n7227)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5715_3_lut.init = 16'hfefe;
    LUT4 div_26_i2249_3_lut_rep_293_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[3]), .D(n1409[9]), .Z(n7856)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2249_3_lut_rep_293_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_LessThan_2327_i13_4_lut (.A(n3342), .B(n8547), .C(n1[6]), 
         .D(n7825), .Z(n13)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i13_4_lut.init = 16'h3c66;
    LUT4 mux_24_i25_4_lut (.A(n157[22]), .B(n157_adj_32[22]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[24])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i25_4_lut.init = 16'hc0ca;
    LUT4 mux_24_i26_4_lut (.A(n157[23]), .B(n157_adj_32[23]), .C(n8088), 
         .D(n8085), .Z(current_wave_freq_31__N_227[25])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(53[22] 57[16])
    defparam mux_24_i26_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_62 (.A(n1285_adj_297), .B(n2889), .C(\current_wave_freq[5] ), 
         .D(n2885), .Z(n3041)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_62.init = 16'ha596;
    LUT4 i5759_2_lut_3_lut_4_lut (.A(n7932), .B(\current_wave_freq[9] ), 
         .C(\current_wave_freq[18] ), .D(n7925), .Z(n6871)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5759_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 div_26_LessThan_2039_i22_3_lut_3_lut (.A(n7934), .B(\current_wave_freq[10] ), 
         .C(\current_wave_freq[6] ), .Z(n22_adj_554)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2039_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2327_i24_3_lut (.A(\current_wave_freq[12] ), .B(\current_wave_freq[13] ), 
         .C(n29), .Z(n24_adj_441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2327_i24_3_lut.init = 16'hcaca;
    LUT4 div_26_i2240_3_lut_rep_294_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[12]), .D(n1409[18]), .Z(n7857)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2240_3_lut_rep_294_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i5816 (.BLUT(n8134), .ALUT(n8135), .C0(\current_wave_freq[4] ), 
          .Z(n48_adj_485));
    LUT4 div_26_i2239_3_lut_rep_295_3_lut_4_lut (.A(n50_adj_331), .B(n5014), 
         .C(n3607[13]), .D(n1409[19]), .Z(n7858)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_26_i2239_3_lut_rep_295_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_26_i2234_3_lut_rep_297_4_lut (.A(n50_adj_331), .B(n5014), .C(n1409[24]), 
         .D(n3607[18]), .Z(n7860)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_26_i2234_3_lut_rep_297_4_lut.init = 16'hfe10;
    LUT4 i1_3_lut_adj_63 (.A(n8096), .B(n8091), .C(\current_wave_freq[2] ), 
         .Z(n1287_adj_298)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_3_lut_adj_63.init = 16'hefef;
    LUT4 i5727_4_lut (.A(n7841), .B(n7834), .C(n7833), .D(n7127), .Z(n7152)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5727_4_lut.init = 16'hfeff;
    LUT4 i5413_4_lut (.A(n7832), .B(n7838), .C(n7837), .D(n7111), .Z(n7127)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5413_4_lut.init = 16'h1011;
    LUT4 i5397_4_lut (.A(n7836), .B(n7828), .C(n23_adj_387), .D(n7064), 
         .Z(n7111)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5397_4_lut.init = 16'h1011;
    LUT4 i5631_4_lut_4_lut (.A(n7862), .B(n7033), .C(n42_adj_565), .D(n20_adj_497), 
         .Z(n44_adj_505)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5631_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5723_4_lut (.A(n7841), .B(n7834), .C(n7833), .D(n7136), .Z(n7154)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5723_4_lut.init = 16'hfffe;
    LUT4 i4966_4_lut (.A(n7975), .B(n7974), .C(n7973), .D(n6667), .Z(n6680)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4966_4_lut.init = 16'h1011;
    LUT4 div_26_LessThan_2187_i49_2_lut_rep_299 (.A(n3607[18]), .B(\current_wave_freq[21] ), 
         .Z(n7862)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i49_2_lut_rep_299.init = 16'h6666;
    LUT4 i1_3_lut_adj_64 (.A(n8105), .B(n50_adj_332), .C(\current_wave_freq[2] ), 
         .Z(n3237)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_3_lut_adj_64.init = 16'hefef;
    L6MUX21 div_26_LessThan_1883_i50 (.D0(n42_adj_566), .D1(n48_adj_567), 
            .SD(n6714), .Z(n50_adj_335)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5733_4_lut (.A(n7827), .B(n7826), .C(n7831), .D(n7082), .Z(n7096)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5733_4_lut.init = 16'hfffe;
    PFUMX div_26_LessThan_1883_i48 (.BLUT(n30_adj_533), .ALUT(n46_adj_481), 
          .C0(n7272), .Z(n48_adj_567)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_3_lut_adj_65 (.A(n5014), .B(n50_adj_331), .C(n1409[5]), .Z(n3343)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_65.init = 16'h1010;
    LUT4 div_26_LessThan_2187_i42_3_lut_3_lut (.A(n3607[18]), .B(\current_wave_freq[21] ), 
         .C(\current_wave_freq[20] ), .Z(n42_adj_565)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_2187_i43_2_lut_rep_300 (.A(n3607[15]), .B(\current_wave_freq[18] ), 
         .Z(n7863)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i43_2_lut_rep_300.init = 16'h6666;
    LUT4 div_26_LessThan_2187_i22_3_lut_3_lut (.A(n3607[15]), .B(\current_wave_freq[18] ), 
         .C(\current_wave_freq[9] ), .Z(n22_adj_568)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i2272_1_lut (.A(\current_wave_freq[19] ), .Z(n3257)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2272_1_lut.init = 16'h5555;
    LUT4 i4601_1_lut_rep_426 (.A(n3096), .Z(n7989)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4601_1_lut_rep_426.init = 16'h5555;
    PFUMX div_26_LessThan_1883_i42 (.BLUT(n34_adj_546), .ALUT(n40_adj_479), 
          .C0(n6701), .Z(n42_adj_566)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i1_2_lut_adj_66 (.A(n50_adj_338), .B(n5023), .Z(n3087)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_66.init = 16'heeee;
    LUT4 div_26_LessThan_2187_i45_2_lut_rep_301 (.A(n3607[16]), .B(\current_wave_freq[19] ), 
         .Z(n7864)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i45_2_lut_rep_301.init = 16'h6666;
    LUT4 i5739_4_lut (.A(n7862), .B(n7033), .C(n7864), .D(n7024), .Z(n7045)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5739_4_lut.init = 16'hfbff;
    LUT4 div_26_LessThan_2187_i40_3_lut_3_lut (.A(n3607[16]), .B(\current_wave_freq[19] ), 
         .C(n22_adj_568), .Z(n40_adj_504)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5310_4_lut (.A(n7863), .B(n7866), .C(n7865), .D(n7008), .Z(n7024)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5310_4_lut.init = 16'h5455;
    LUT4 i5294_4_lut (.A(n37_adj_421), .B(n7873), .C(n7872), .D(n21_adj_429), 
         .Z(n7008)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5294_4_lut.init = 16'h5554;
    LUT4 div_26_LessThan_2187_i37_2_lut (.A(n3607[12]), .B(\current_wave_freq[15] ), 
         .Z(n37_adj_421)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i37_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_67 (.A(n6138), .B(n8103), .C(n8107), .D(n8115), 
         .Z(n5023)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_67.init = 16'hfffe;
    LUT4 div_26_LessThan_2187_i21_2_lut (.A(n3607[4]), .B(n8543), .Z(n21_adj_429)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i21_2_lut.init = 16'h6666;
    LUT4 div_26_LessThan_2187_i47_2_lut (.A(n3607[17]), .B(\current_wave_freq[20] ), 
         .Z(n7033)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i47_2_lut.init = 16'h9999;
    LUT4 div_26_LessThan_1883_i27_2_lut_rep_407_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[6] ), 
         .C(n1274[13]), .D(n3563[2]), .Z(n7970)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i27_2_lut_rep_407_4_lut_4_lut.init = 16'h369c;
    LUT4 i5737_4_lut (.A(n7862), .B(n7033), .C(n7864), .D(n7031), .Z(n7047)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5737_4_lut.init = 16'hbfbb;
    LUT4 div_26_i1870_3_lut_rep_420_3_lut (.A(n3096), .B(n1274[13]), .C(n3563[2]), 
         .Z(n7983)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1870_3_lut_rep_420_3_lut.init = 16'he4e4;
    LUT4 i5745_4_lut (.A(n7867), .B(n7869), .C(n7868), .D(n6984), .Z(n6998)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5745_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_2187_i19_2_lut (.A(n3607[3]), .B(\current_wave_freq[6] ), 
         .Z(n19_adj_430)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i19_2_lut.init = 16'h6666;
    LUT4 i5627_4_lut_4_lut (.A(n7867), .B(n6993), .C(n30_adj_569), .D(n16_adj_501), 
         .Z(n32_adj_514)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5627_4_lut_4_lut.init = 16'hf4b0;
    L6MUX21 div_26_LessThan_1802_i50 (.D0(n44_adj_570), .D1(n48_adj_571), 
            .SD(n6652), .Z(n50_adj_336)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_i2271_1_lut (.A(\current_wave_freq[20] ), .Z(n3361)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2271_1_lut.init = 16'h5555;
    LUT4 div_26_i1871_3_lut_rep_419_3_lut (.A(n3096), .B(n1274[12]), .C(n3563[1]), 
         .Z(n7982)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1871_3_lut_rep_419_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_2187_i39_2_lut_rep_302 (.A(n3607[13]), .B(\current_wave_freq[16] ), 
         .Z(n7865)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i39_2_lut_rep_302.init = 16'h6666;
    PFUMX div_26_LessThan_1802_i48 (.BLUT(n32_adj_445), .ALUT(n46_adj_572), 
          .C0(n7268), .Z(n48_adj_571)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_LessThan_1883_i49_2_lut_rep_406_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[17] ), 
         .C(n1274[24]), .D(n3563[13]), .Z(n7969)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i49_2_lut_rep_406_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1859_3_lut_rep_418_3_lut (.A(n3096), .B(n1274[24]), .C(n3563[13]), 
         .Z(n7981)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1859_3_lut_rep_418_3_lut.init = 16'he4e4;
    LUT4 i5219_4_lut (.A(n7887), .B(n7886), .C(n7881), .D(n6886), .Z(n6933)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5219_4_lut.init = 16'h1011;
    LUT4 div_26_LessThan_2187_i24_3_lut_3_lut (.A(n3607[13]), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .Z(n24_adj_573)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1883_i47_2_lut_rep_405_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[16] ), 
         .C(n1274[23]), .D(n3563[12]), .Z(n7968)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i47_2_lut_rep_405_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1872_3_lut_3_lut (.A(n3096), .B(n1274[11]), .C(n2662), 
         .Z(n2782)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1872_3_lut_3_lut.init = 16'he4e4;
    LUT4 div_26_i1860_3_lut_rep_417_3_lut (.A(n3096), .B(n1274[23]), .C(n3563[12]), 
         .Z(n7980)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1860_3_lut_rep_417_3_lut.init = 16'he4e4;
    LUT4 i5742_3_lut_4_lut (.A(n3607[13]), .B(\current_wave_freq[16] ), 
         .C(n37_adj_421), .D(n7866), .Z(n7022)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5742_3_lut_4_lut.init = 16'hfff6;
    LUT4 i5758_4_lut (.A(n7878), .B(n7877), .C(n7876), .D(n6904), .Z(n6918)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5758_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_adj_68 (.A(n5017), .B(n50_adj_341), .C(n1355[7]), .Z(n5071)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_68.init = 16'h1010;
    LUT4 div_26_LessThan_2187_i41_2_lut_rep_303 (.A(n3607[14]), .B(\current_wave_freq[17] ), 
         .Z(n7866)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i41_2_lut_rep_303.init = 16'h6666;
    LUT4 div_26_LessThan_1883_i43_2_lut_rep_403_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[14] ), 
         .C(n1274[21]), .D(n3563[10]), .Z(n7966)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i43_2_lut_rep_403_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1862_3_lut_rep_416_3_lut (.A(n3096), .B(n1274[21]), .C(n3563[10]), 
         .Z(n7979)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1862_3_lut_rep_416_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1883_i45_2_lut_rep_404_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[15] ), 
         .C(n1274[22]), .D(n3563[11]), .Z(n7967)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i45_2_lut_rep_404_4_lut_4_lut.init = 16'h369c;
    PFUMX div_26_LessThan_1802_i44 (.BLUT(n36_adj_410), .ALUT(n42_adj_574), 
          .C0(n6644), .Z(n44_adj_570)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_LessThan_2187_i36_3_lut_3_lut (.A(n3607[14]), .B(\current_wave_freq[17] ), 
         .C(n24_adj_573), .Z(n36_adj_509)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i1861_3_lut_rep_415_3_lut (.A(n3096), .B(n1274[22]), .C(n3563[11]), 
         .Z(n7978)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1861_3_lut_rep_415_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_2187_i35_2_lut_rep_304 (.A(n3607[11]), .B(\current_wave_freq[14] ), 
         .Z(n7867)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i35_2_lut_rep_304.init = 16'h6666;
    LUT4 div_26_LessThan_2187_i30_3_lut_3_lut (.A(n3607[11]), .B(\current_wave_freq[14] ), 
         .C(n28_adj_350), .Z(n30_adj_569)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5763_4_lut (.A(n7911), .B(n7910), .C(n7909), .D(n6846), .Z(n6867)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5763_4_lut.init = 16'hfeff;
    LUT4 i5132_4_lut (.A(n7908), .B(n7907), .C(n7906), .D(n6829), .Z(n6846)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5132_4_lut.init = 16'h1011;
    LUT4 i5115_4_lut (.A(n7914), .B(n7913), .C(n7912), .D(n6814), .Z(n6829)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5115_4_lut.init = 16'h0100;
    LUT4 div_26_LessThan_1883_i39_2_lut_rep_401_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[12] ), 
         .C(n1274[19]), .D(n3563[8]), .Z(n7964)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i39_2_lut_rep_401_4_lut_4_lut.init = 16'h369c;
    LUT4 i5100_4_lut (.A(n7919), .B(n7918), .C(n7917), .D(n6801), .Z(n6814)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5100_4_lut.init = 16'h5455;
    LUT4 i5087_4_lut (.A(n7916), .B(n23_adj_379), .C(n7915), .D(n19_adj_365), 
         .Z(n6801)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5087_4_lut.init = 16'h5554;
    LUT4 div_26_i1864_3_lut_rep_414_3_lut (.A(n3096), .B(n1274[19]), .C(n3563[8]), 
         .Z(n7977)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1864_3_lut_rep_414_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1458_i50_4_lut (.A(n44_adj_575), .B(n48_adj_399), 
         .C(n8040), .D(n6466), .Z(n50_adj_339)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1458_i50_4_lut.init = 16'hcacc;
    LUT4 div_26_LessThan_1883_i41_2_lut_rep_402_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[13] ), 
         .C(n1274[20]), .D(n3563[9]), .Z(n7965)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i41_2_lut_rep_402_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1863_3_lut_rep_413_3_lut (.A(n3096), .B(n1274[20]), .C(n3563[9]), 
         .Z(n7976)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1863_3_lut_rep_413_3_lut.init = 16'he4e4;
    LUT4 div_26_i1869_3_lut_rep_421_3_lut (.A(n3096), .B(n1274[14]), .C(n3563[3]), 
         .Z(n7984)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1869_3_lut_rep_421_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1883_i29_2_lut_rep_408_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[7] ), 
         .C(n1274[14]), .D(n3563[3]), .Z(n7971)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i29_2_lut_rep_408_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1867_3_lut_rep_422_3_lut (.A(n3096), .B(n1274[16]), .C(n3563[5]), 
         .Z(n7985)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1867_3_lut_rep_422_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1883_i33_2_lut_rep_410_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[9] ), 
         .C(n1274[16]), .D(n3563[5]), .Z(n7973)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i33_2_lut_rep_410_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1868_3_lut_rep_423_3_lut (.A(n3096), .B(n1274[15]), .C(n3563[4]), 
         .Z(n7986)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1868_3_lut_rep_423_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1883_i31_2_lut_rep_409_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[8] ), 
         .C(n1274[15]), .D(n3563[4]), .Z(n7972)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i31_2_lut_rep_409_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1866_3_lut_rep_424_3_lut (.A(n3096), .B(n1274[17]), .C(n3563[6]), 
         .Z(n7987)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1866_3_lut_rep_424_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1883_i35_2_lut_rep_411_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[10] ), 
         .C(n1274[17]), .D(n3563[6]), .Z(n7974)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i35_2_lut_rep_411_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1865_3_lut_rep_425_3_lut (.A(n3096), .B(n1274[18]), .C(n3563[7]), 
         .Z(n7988)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1865_3_lut_rep_425_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1883_i37_2_lut_rep_412_4_lut_4_lut (.A(n3096), .B(\current_wave_freq[11] ), 
         .C(n1274[18]), .D(n3563[7]), .Z(n7975)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1883_i37_2_lut_rep_412_4_lut_4_lut.init = 16'h369c;
    PFUMX div_26_LessThan_1719_i48 (.BLUT(n40_adj_492), .ALUT(n46_adj_464), 
          .C0(n6595), .Z(n48_adj_576)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5594_4_lut_4_lut (.A(n7990), .B(n6648), .C(n34_adj_577), .D(n24_adj_386), 
         .Z(n46_adj_572)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5594_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5592_4_lut_4_lut (.A(n7991), .B(n6639), .C(n40_adj_578), .D(n26_adj_453), 
         .Z(n42_adj_574)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5592_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_26_LessThan_1802_i49_2_lut_rep_427 (.A(n3563[13]), .B(\current_wave_freq[16] ), 
         .Z(n7990)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i49_2_lut_rep_427.init = 16'h6666;
    LUT4 div_26_LessThan_1802_i34_3_lut_3_lut (.A(n3563[13]), .B(\current_wave_freq[16] ), 
         .C(\current_wave_freq[15] ), .Z(n34_adj_577)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5139_4_lut (.A(n7908), .B(n7907), .C(n7918), .D(n6806), .Z(n6853)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5139_4_lut.init = 16'h1011;
    LUT4 div_26_i2274_1_lut (.A(\current_wave_freq[17] ), .Z(n3040)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2274_1_lut.init = 16'h5555;
    LUT4 div_26_LessThan_1802_i45_2_lut_rep_428 (.A(n3563[11]), .B(\current_wave_freq[14] ), 
         .Z(n7991)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i45_2_lut_rep_428.init = 16'h6666;
    LUT4 div_26_LessThan_1802_i40_3_lut_3_lut (.A(n3563[11]), .B(\current_wave_freq[14] ), 
         .C(n38_adj_357), .Z(n40_adj_578)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i40_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4953_4_lut (.A(n7972), .B(n7971), .C(n7970), .D(n6658), .Z(n6667)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4953_4_lut.init = 16'h1011;
    LUT4 i5622_4_lut_4_lut (.A(n7878), .B(n6913), .C(n34_adj_579), .D(n20_adj_580), 
         .Z(n36_adj_530)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5622_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5707_4_lut (.A(n7969), .B(n7968), .C(n7967), .D(n6674), .Z(n7272)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5707_4_lut.init = 16'hfffe;
    LUT4 i5212_4_lut_4_lut (.A(n7878), .B(n6909), .C(n7886), .D(n7887), 
         .Z(n6926)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5212_4_lut_4_lut.init = 16'h000b;
    LUT4 i5696_4_lut (.A(n7966), .B(n7965), .C(n7964), .D(n6687), .Z(n6701)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5696_4_lut.init = 16'hfffe;
    LUT4 div_26_i2015_3_lut_rep_363_3_lut (.A(n3102), .B(n1328[24]), .C(n7954), 
         .Z(n7926)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2015_3_lut_rep_363_3_lut.init = 16'he4e4;
    PFUMX div_26_LessThan_1719_i38 (.BLUT(n28_adj_383), .ALUT(n36_adj_472), 
          .C0(n6568), .Z(n38_adj_581)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_LessThan_2039_i47_2_lut_rep_347_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[18] ), 
         .C(n1328[23]), .D(n7953), .Z(n7910)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i47_2_lut_rep_347_4_lut_4_lut.init = 16'h369c;
    LUT4 i5624_4_lut_4_lut (.A(n7888), .B(n6935), .C(n40_adj_384), .D(n18_adj_428), 
         .Z(n42_adj_521)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5624_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5748_4_lut_4_lut (.A(n7888), .B(n6933), .C(n7882), .D(n7885), 
         .Z(n6949)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5748_4_lut_4_lut.init = 16'hfff4;
    L6MUX21 div_26_LessThan_1634_i50 (.D0(n40_adj_582), .D1(n48_adj_583), 
            .SD(n6544), .Z(n50_adj_382)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5753_4_lut_4_lut (.A(n7888), .B(n6926), .C(n7882), .D(n7885), 
         .Z(n6947)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5753_4_lut_4_lut.init = 16'hfffb;
    LUT4 i5720_4_lut (.A(n7990), .B(n6648), .C(n7991), .D(n6635), .Z(n6652)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5720_4_lut.init = 16'hbfbb;
    LUT4 i4921_4_lut (.A(n7993), .B(n7992), .C(n7994), .D(n6620), .Z(n6635)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4921_4_lut.init = 16'h0100;
    PFUMX div_26_LessThan_1634_i48 (.BLUT(n42_adj_352), .ALUT(n46_adj_348), 
          .C0(n6546), .Z(n48_adj_583)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_i2016_3_lut_rep_362_3_lut (.A(n3102), .B(n1328[23]), .C(n7953), 
         .Z(n7925)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2016_3_lut_rep_362_3_lut.init = 16'he4e4;
    LUT4 i4906_4_lut (.A(n7995), .B(n7997), .C(n7996), .D(n6607), .Z(n6620)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4906_4_lut.init = 16'h5455;
    LUT4 i4893_4_lut (.A(n7998), .B(n29_adj_420), .C(n7999), .D(n25_adj_584), 
         .Z(n6607)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4893_4_lut.init = 16'h5554;
    LUT4 div_26_i2273_1_lut (.A(\current_wave_freq[18] ), .Z(n3150)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2273_1_lut.init = 16'h5555;
    LUT4 i5767_4_lut (.A(n7906), .B(n7914), .C(n7913), .D(n6824), .Z(n6838)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5767_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_2187_i31_2_lut_rep_305 (.A(n3607[9]), .B(\current_wave_freq[12] ), 
         .Z(n7868)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2187_i31_2_lut_rep_305.init = 16'h6666;
    LUT4 div_26_LessThan_1802_i41_2_lut_rep_429 (.A(n3563[9]), .B(\current_wave_freq[12] ), 
         .Z(n7992)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i41_2_lut_rep_429.init = 16'h6666;
    LUT4 div_26_LessThan_1802_i25_2_lut (.A(n3563[1]), .B(\current_wave_freq[4] ), 
         .Z(n25_adj_584)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i25_2_lut.init = 16'h6666;
    LUT4 div_26_LessThan_1802_i29_2_lut (.A(n3563[3]), .B(\current_wave_freq[6] ), 
         .Z(n29_adj_420)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i29_2_lut.init = 16'h6666;
    FD1P3AX current_wave_freq_i8_rep_575 (.D(current_wave_freq_31__N_227[8]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8541)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i8_rep_575.GSR = "ENABLED";
    LUT4 div_26_LessThan_1802_i47_2_lut (.A(n3563[12]), .B(\current_wave_freq[15] ), 
         .Z(n6648)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1802_i47_2_lut.init = 16'h9999;
    PFUMX div_26_LessThan_1634_i40 (.BLUT(n30_adj_370), .ALUT(n38_adj_353), 
          .C0(n6526), .Z(n40_adj_582)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5167_4_lut (.A(n7883), .B(n7875), .C(n7874), .D(n19_adj_482), 
         .Z(n6881)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5167_4_lut.init = 16'h5554;
    LUT4 i5709_4_lut (.A(n7990), .B(n6648), .C(n7997), .D(n6612), .Z(n7268)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5709_4_lut.init = 16'hbfbb;
    FD1P3AX current_wave_freq_i9_rep_573 (.D(current_wave_freq_31__N_227[9]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8539)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i9_rep_573.GSR = "ENABLED";
    LUT4 i4611_1_lut_rep_456 (.A(n3090), .Z(n8019)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4611_1_lut_rep_456.init = 16'h5555;
    PFUMX div_26_LessThan_1547_i48 (.BLUT(n44_adj_377), .ALUT(n46_adj_374), 
          .C0(n6506), .Z(n48_adj_585)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i5725_4_lut (.A(n7991), .B(n7993), .C(n7992), .D(n6630), .Z(n6644)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5725_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_1719_i49_2_lut_rep_441_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[15] ), 
         .C(n1220[24]), .D(n3547[11]), .Z(n8004)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i49_2_lut_rep_441_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1695_3_lut_rep_455_3_lut (.A(n3090), .B(n1220[24]), .C(n3547[11]), 
         .Z(n8018)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1695_3_lut_rep_455_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1719_i45_2_lut_rep_442_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[13] ), 
         .C(n1220[22]), .D(n3547[9]), .Z(n8005)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i45_2_lut_rep_442_4_lut_4_lut.init = 16'h369c;
    PFUMX div_26_LessThan_1547_i42 (.BLUT(n32_adj_362), .ALUT(n40_adj_381), 
          .C0(n6491), .Z(n42_adj_586)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_i1697_3_lut_rep_454_3_lut (.A(n3090), .B(n1220[22]), .C(n3547[9]), 
         .Z(n8017)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1697_3_lut_rep_454_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1719_i47_2_lut_rep_443_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[14] ), 
         .C(n1220[23]), .D(n3547[10]), .Z(n8006)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i47_2_lut_rep_443_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_LessThan_2114_i20_3_lut_3_lut (.A(n7897), .B(\current_wave_freq[6] ), 
         .C(\current_wave_freq[5] ), .Z(n20_adj_580)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_i1696_3_lut_rep_453_3_lut (.A(n3090), .B(n1220[23]), .C(n3547[10]), 
         .Z(n8016)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1696_3_lut_rep_453_3_lut.init = 16'he4e4;
    LUT4 i5765_4_lut (.A(n8004), .B(n8006), .C(n8005), .D(n6581), .Z(n6595)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5765_4_lut.init = 16'hfffe;
    LUT4 div_26_LessThan_1719_i41_2_lut_rep_444_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[11] ), 
         .C(n1220[20]), .D(n3547[7]), .Z(n8007)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i41_2_lut_rep_444_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1699_3_lut_rep_452_3_lut (.A(n3090), .B(n1220[20]), .C(n3547[7]), 
         .Z(n8015)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1699_3_lut_rep_452_3_lut.init = 16'he4e4;
    LUT4 i5190_3_lut_4_lut (.A(n7900), .B(\current_wave_freq[7] ), .C(n7879), 
         .D(n7880), .Z(n6904)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5190_3_lut_4_lut.init = 16'h0009;
    LUT4 i1_2_lut_adj_69 (.A(n50_adj_351), .B(n5026), .Z(n3081)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_69.init = 16'heeee;
    LUT4 div_26_LessThan_1719_i37_2_lut_rep_438_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[9] ), 
         .C(n1220[18]), .D(n3547[5]), .Z(n8001)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i37_2_lut_rep_438_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1705_3_lut_3_lut (.A(n3090), .B(n1220[14]), .C(n3547[1]), 
         .Z(n2536)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1705_3_lut_3_lut.init = 16'he4e4;
    LUT4 div_26_i1701_3_lut_rep_450_3_lut (.A(n3090), .B(n1220[18]), .C(n3547[5]), 
         .Z(n8013)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1701_3_lut_rep_450_3_lut.init = 16'he4e4;
    LUT4 i5686_4_lut (.A(n8020), .B(n6536), .C(n8021), .D(n6529), .Z(n6544)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5686_4_lut.init = 16'hfbff;
    LUT4 div_26_LessThan_1719_i39_2_lut_rep_439_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[10] ), 
         .C(n1220[19]), .D(n3547[6]), .Z(n8002)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i39_2_lut_rep_439_4_lut_4_lut.init = 16'h369c;
    PFUMX div_26_LessThan_1458_i44 (.BLUT(n34_adj_358), .ALUT(n42_adj_395), 
          .C0(n6463), .Z(n44_adj_575)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 i4815_4_lut (.A(n8023), .B(n8022), .C(n8024), .D(n6516), .Z(n6529)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4815_4_lut.init = 16'h5455;
    LUT4 div_26_i1700_3_lut_rep_449_3_lut (.A(n3090), .B(n1220[19]), .C(n3547[6]), 
         .Z(n8012)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1700_3_lut_rep_449_3_lut.init = 16'he4e4;
    LUT4 i4802_4_lut (.A(n37_adj_354), .B(n8026), .C(n8025), .D(n31), 
         .Z(n6516)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i4802_4_lut.init = 16'h5554;
    LUT4 div_26_LessThan_1634_i31_2_lut (.A(n3547[2]), .B(\current_wave_freq[5] ), 
         .Z(n31)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i31_2_lut.init = 16'h6666;
    LUT4 div_26_LessThan_1634_i37_2_lut (.A(n3547[5]), .B(\current_wave_freq[8] ), 
         .Z(n37_adj_354)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i37_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_70 (.A(n5704), .B(n8112), .C(n8110), .D(n6048), 
         .Z(n5026)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_70.init = 16'hfffe;
    LUT4 div_26_LessThan_1719_i33_2_lut_rep_440_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[7] ), 
         .C(n1220[16]), .D(n3547[3]), .Z(n8003)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i33_2_lut_rep_440_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i1703_3_lut_rep_448_3_lut (.A(n3090), .B(n1220[16]), .C(n3547[3]), 
         .Z(n8011)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1703_3_lut_rep_448_3_lut.init = 16'he4e4;
    LUT4 div_26_LessThan_1634_i47_2_lut (.A(n3547[10]), .B(\current_wave_freq[13] ), 
         .Z(n6536)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1634_i47_2_lut.init = 16'h9999;
    LUT4 i5684_4_lut (.A(n8020), .B(n6536), .C(n8021), .D(n6534), .Z(n6546)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5684_4_lut.init = 16'hbfbb;
    LUT4 div_26_i2278_1_lut (.A(\current_wave_freq[13] ), .Z(n2570)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2278_1_lut.init = 16'h5555;
    LUT4 i5199_2_lut_3_lut_4_lut (.A(n7889), .B(\current_wave_freq[14] ), 
         .C(\current_wave_freq[13] ), .D(n7890), .Z(n6913)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5199_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i5690_4_lut (.A(n8027), .B(n8028), .C(n8030), .D(n37_adj_364), 
         .Z(n6506)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5690_4_lut.init = 16'haaab;
    LUT4 div_26_LessThan_1547_i37_2_lut (.A(n3538[4]), .B(\current_wave_freq[7] ), 
         .Z(n37_adj_364)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i37_2_lut.init = 16'h6666;
    LUT4 div_26_LessThan_1719_i35_2_lut_rep_437_4_lut_4_lut (.A(n3090), .B(\current_wave_freq[8] ), 
         .C(n1220[17]), .D(n3547[4]), .Z(n8000)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_1719_i35_2_lut_rep_437_4_lut_4_lut.init = 16'h369c;
    LUT4 div_26_i2277_1_lut (.A(\current_wave_freq[14] ), .Z(n2692)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_i2277_1_lut.init = 16'h5555;
    LUT4 div_26_LessThan_2114_i32_3_lut_3_lut (.A(n7889), .B(\current_wave_freq[14] ), 
         .C(\current_wave_freq[13] ), .Z(n32_adj_587)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_26_LessThan_1547_i39_2_lut (.A(n3538[5]), .B(\current_wave_freq[8] ), 
         .Z(n39_adj_360)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_1547_i39_2_lut.init = 16'h6666;
    L6MUX21 div_26_LessThan_2114_i50 (.D0(n38_adj_531), .D1(n48_adj_522), 
            .SD(n6947), .Z(n50_adj_332)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_LessThan_2114_i34_3_lut_3_lut (.A(n7892), .B(\current_wave_freq[15] ), 
         .C(n32_adj_587), .Z(n34_adj_579)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam div_26_LessThan_2114_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_adj_71 (.A(n5026), .B(n50_adj_351), .C(n1139[15]), .Z(n5101)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_71.init = 16'h1010;
    LUT4 div_26_LessThan_2039_i45_2_lut_rep_346_4_lut_4_lut (.A(n3102), .B(\current_wave_freq[17] ), 
         .C(n1328[22]), .D(n7951), .Z(n7909)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C)+!B !(C)))) */ ;
    defparam div_26_LessThan_2039_i45_2_lut_rep_346_4_lut_4_lut.init = 16'h369c;
    PFUMX div_26_LessThan_1458_i46 (.BLUT(n36_adj_385), .ALUT(n38_adj_397), 
          .C0(n6471), .Z(n46_adj_398)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    LUT4 div_26_i1702_3_lut_rep_447_3_lut (.A(n3090), .B(n1220[17]), .C(n3547[4]), 
         .Z(n8010)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1702_3_lut_rep_447_3_lut.init = 16'he4e4;
    LUT4 i5195_4_lut (.A(n7877), .B(n7876), .C(n7880), .D(n6894), .Z(n6909)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(58[28:62])
    defparam i5195_4_lut.init = 16'h0100;
    LUT4 div_26_i1704_3_lut_rep_446_3_lut (.A(n3090), .B(n1220[15]), .C(n3547[2]), 
         .Z(n8009)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1704_3_lut_rep_446_3_lut.init = 16'he4e4;
    FD1P3AX current_wave_freq_i3_rep_585 (.D(current_wave_freq_31__N_227[3]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8551)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i3_rep_585.GSR = "ENABLED";
    LUT4 div_26_i1698_3_lut_rep_451_3_lut (.A(n3090), .B(n1220[21]), .C(n3547[8]), 
         .Z(n8014)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i1698_3_lut_rep_451_3_lut.init = 16'he4e4;
    FD1P3AX current_wave_freq_i4_rep_583 (.D(current_wave_freq_31__N_227[4]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8549)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i4_rep_583.GSR = "ENABLED";
    LUT4 div_26_i2017_3_lut_rep_361_3_lut (.A(n3102), .B(n1328[22]), .C(n7951), 
         .Z(n7924)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam div_26_i2017_3_lut_rep_361_3_lut.init = 16'he4e4;
    PFUMX div_26_LessThan_1367_i50 (.BLUT(n44_adj_416), .ALUT(n48_adj_424), 
          .C0(n6441), .Z(n50_adj_351)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    FD1P3AY current_wave_freq_i5_rep_581 (.D(current_wave_freq_31__N_227[5]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8547)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i5_rep_581.GSR = "ENABLED";
    FD1P3AY current_wave_freq_i6_rep_579 (.D(current_wave_freq_31__N_227[6]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8545)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i6_rep_579.GSR = "ENABLED";
    PFUMX div_26_LessThan_1367_i46 (.BLUT(n36_adj_431), .ALUT(n38_adj_422), 
          .C0(n6443), .Z(n46_adj_423)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    FD1P3AX current_wave_freq_i10_rep_571 (.D(current_wave_freq_31__N_227[10]), 
            .SP(clk_25mhz_c_enable_63), .CK(clk_25mhz_c), .Q(n8537)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;   // /home/user/Master Thesis/Speaker Test/Police_Siren/source/square_wave_generator.v(34[14] 60[8])
    defparam current_wave_freq_i10_rep_571.GSR = "ENABLED";
    PFUMX div_26_LessThan_1274_i50 (.BLUT(n42_adj_437), .ALUT(n48_adj_433), 
          .C0(n6413), .Z(n50)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    L6MUX21 div_26_LessThan_1719_i50 (.D0(n38_adj_581), .D1(n48_adj_576), 
            .SD(n6593), .Z(n50_adj_337)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    PFUMX div_26_LessThan_1179_i50 (.BLUT(n42_adj_466), .ALUT(n48_adj_456), 
          .C0(n6393), .Z(n50_adj_345)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    PFUMX div_26_LessThan_1082_i50 (.BLUT(n46_adj_470), .ALUT(n48_adj_468), 
          .C0(n6375), .Z(n50_adj_340)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    PFUMX div_26_LessThan_983_i50 (.BLUT(n44), .ALUT(n48_adj_474), .C0(n6365), 
          .Z(n50_adj_344)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    PFUMX div_26_LessThan_882_i50 (.BLUT(n46), .ALUT(n48_adj_476), .C0(n6358), 
          .Z(n50_adj_343)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    L6MUX21 div_26_LessThan_1547_i50 (.D0(n42_adj_586), .D1(n48_adj_585), 
            .SD(n6502), .Z(n50_adj_338)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=11, LSE_RLINE=17 */ ;
    
endmodule
