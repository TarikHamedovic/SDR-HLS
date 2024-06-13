/*
-----------------------------------------------------------------------------
Module: PWM
Description:
This module generates a Pulse Width Modulation (PWM) signal based on the input data. The input data controls the duty cycle of the PWM signal.

Inputs:
- clk: Clock signal.
- DataIn: 12-bit signed input data signal used to control the duty cycle of the PWM signal.

Outputs:
- PWMOut: Output PWM signal.

Parameters:
- None

Internal Registers:
- counter: 10-bit counter used to generate the PWM signal.
- SimIn: 12-bit signed register for internal use.
- DataInNoSign: 12-bit unsigned register for internal use.
- DataInReg: 12-bit register holding the adjusted input data value.

Operation:
- The counter increments on each clock cycle.
- On counter overflow, the input data is adjusted and stored in DataInReg.
- The PWM output signal is generated based on the comparison between the counter and DataInReg.
-----------------------------------------------------------------------------
*/
module PWM
(
   input         clk,
   input  [11:0] DataIn,
   output reg    PWMOut
);

reg [9:0]  counter;
reg [11:0] SimIn;
reg [11:0] DataInNoSign;
reg [11:0] DataInReg;

always @(posedge clk)
   begin
      counter <= counter + 1'b 1;
      if (counter == 0) begin
         DataInReg <= DataIn +  10'd 512;
      end
      if (counter > (DataInReg[9:0])) begin
         PWMOut   <= 1'b0;
      end else begin
         PWMOut   <= 1'b1;
      end
   end


    //-----------------------------
    // For simulation only
    //-----------------------------
    initial begin
        $dumpfile("pwm_waves.vcd");
        $dumpvars;
    end

endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/28 TH: initial creation
 2024/5/29 TH: Created SV file
 2024/6/10 TH: Fixed Indentation
*/
