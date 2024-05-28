module ADCTest
  (input wire i_clk,
   input wire i_analog,
   output wire o_digital
  );

  reg  r_analog_d = 1'b1;

  always @(posedge i_clk)
    begin 
      r_analog_d <= i_analog;
    end

  assign o_digital = r_analog_d;

endmodule
