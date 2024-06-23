//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
//   Copyright (c) 2014 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
//   --------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02 
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
//
// TOOL:     vlog2tf
// DATE:     07/01/2015 
// TITLE:    Lattice Semiconductor Corporation
// MODULE:   ADC
// DESIGN:   ADC
// FILENAME: adc_tf.v
// PROJECT:  lattice_adc
// VERSION:  1.2
// Included Self Checking to TestBench -MPB.


`timescale 1 ns / 1 ps

// Define Module for Test Fixture

	module ADC_tf();

// Inputs to UUT
    reg clk;
    reg rstn;
    reg analog_cmp;

// Outputs from UUT
    wire [7:0] digital_out;
    wire analog_out;
	wire sample_rdy; 
 	reg [1:0]result;	  
	reg [15:0] analog_value;
	reg [15:0] analog_value2;
	reg [15:0] analog_value3;	
	reg [15:0] analog_value4;
	reg [7:0] Norm_Alog_Sampl;
	reg i;
	reg [7:0] k;  
	reg [7:0] l;  
		
// Instantiate the UUT
// Please check and add your parameters manually
    ADC_top UUT (
        .clk_in(clk), 
        .rstn(rstn), 
        .digital_out(digital_out), 
        .analog_cmp(analog_cmp), 
        .analog_out(analog_out),
		.sample_rdy(sample_rdy)
        );


// Initialize Inputs
    initial begin
            clk = 0;
            rstn = 0;  
			analog_value = 0;	 
			analog_value2 = 0;
			analog_value3 = 0;	  
			analog_value4 = 0;	 
			Norm_Alog_Sampl = 0;
			k = 0;
			l =	0;
//			analog_cmp = 0;
    end

initial begin
$timeformat(-9,0," ns",10);
$display ("Asserting Reset");
#33 rstn = 1;
$display ("De-asserting Reset");
$display ("Applying 2KHz sawtooth input");
#2199967 ;
$display ("Simulation Completed with ADC Conversions");
$stop; // finish at 2.2ms
end

always
#8 clk = ~clk; //62.5MHz Source Clock

//  simulate analog input and low-pass feedback filter

parameter FULL_RANGE_BITS = 16;                 // bits for analog resolution (0-65535)
parameter FULL_RANGE = 2**FULL_RANGE_BITS;      

reg [FULL_RANGE_BITS-1:0] analog_input = 0;
reg [FULL_RANGE_BITS-1:0] integrator = FULL_RANGE/2;
wire [FULL_RANGE_BITS-1:0] increase;
wire [FULL_RANGE_BITS-1:0] decrease;

// Generate input sawtooth ramp
always@(posedge clk)
analog_input <= analog_input + 1;

// Calculate the integration delta 
assign increase = (FULL_RANGE - integrator) / (2**(FULL_RANGE_BITS-5));   // create a response time-constant
assign decrease = (integrator) / (2**(FULL_RANGE_BITS-5));

// Integrate the feedback
always@(posedge clk)
if (analog_out == 1)
    integrator <= integrator + increase;
else
    integrator <= integrator - decrease;

// Comparator
always@(negedge clk)
if (analog_input > integrator)
analog_cmp <= 1'b1;
else
analog_cmp <= 1'b0;



always@ (posedge analog_input[9])
	begin
		analog_value4 <= analog_input;
		analog_value3 <= analog_value4;
		analog_value2 <= analog_value3;
		analog_value <= analog_value2;
	end

always@(negedge sample_rdy)
	begin
	sim_time <= $time;	
	if (result < 5)
		begin
		$display ("Time: %t ADC_Conversions Verified and they match", $time);
		$display("Time: %t Result = %d", $time, result);
		$display("Time: %t Normalized Analog Sample Value     = %d", $time, Norm_Alog_Sampl);
		$display("Time: %t Digital output from ADC            = %d", $time, digital_out);
		end
	else 
		begin
		$display("Time: %t ADC_Conversions Verified and Do Not match",$time);
		$display("Time: %t Normalized Analog Sample Value     = %d", $time, Norm_Alog_Sampl);
		$display("Time: %t Digital output from ADC            = %d", $time, digital_out);
		end
	end
		
// monitor digital_out
time  sim_time;
always@(posedge clk or negedge rstn)
if (~rstn) //disable $display during reset 
sim_time <= 0;
else if (sample_rdy)
begin	
	sim_time <= $time;
end					   


always@(posedge sample_rdy)
	begin
		Norm_Alog_Sampl <= (analog_value/256);	  
		k <= Norm_Alog_Sampl;				   
		l <= digital_out;
		result <= (k)-(l);
	end

		 
endmodule // ADC_tf
