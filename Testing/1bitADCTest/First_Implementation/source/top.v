module top (
    input wire i_clk,
    input wire i_analog,
    output wire o_digital,
	output wire o_clk

);

  wire clk_80mhz;
  assign o_clk = clk_80mhz;
  
  PLL PLL1 (
    .CLKI (i_clk),
    .CLKOP (clk_80mhz)
  );


  // Instantiate the ADCTest module
  ADCTest adctest (
    .i_clk(clk_80mhz),
    .i_analog(i_analog),
    .o_digital(o_digital)
  );
  
  

endmodule

