// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jul 11 12:51:10 2024
//
// Verilog Description of module top_rx
//

module top_rx (led, clk, rst, i_Rx_Serial) /* synthesis top=1, src="/home/user/SDR-HLS/2.HLSImplementation/Uart/top_rx.py:36", generator="Amaranth", syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(6[8:14])
    input [7:0]led;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(16[15:18])
    input clk;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(8[9:12])
    input rst;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(27[9:12])
    input i_Rx_Serial;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(11[9:20])
    
    wire clk /* synthesis src="/home/user/FPGA/tools/amaranth/amaranth/hdl/_ir.py:215" */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(8[9:12])
    wire i_Rx_Serial /* synthesis src="/home/user/SDR-HLS/2.HLSImplementation/Uart/UartRx.py:27" */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(11[9:20])
    wire [7:0]led_c /* synthesis src="/home/user/SDR-HLS/2.HLSImplementation/Uart/top_rx.py:30" */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(16[15:18])
    wire rst /* synthesis src="/home/user/FPGA/tools/amaranth/amaranth/hdl/_ir.py:215" */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx.v(27[9:12])
    
    wire VCC_net, GND_net;
    
    GSR GSR_INST (.GSR(VCC_net));
    VLO i24 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i25 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

