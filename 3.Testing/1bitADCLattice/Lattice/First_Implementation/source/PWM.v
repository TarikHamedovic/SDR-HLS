/*
-----------------------------------------------------------------------------
Module: PWM
Description:
This module generates a Pulse Width Modulation (PWM) signal based on the input data. The input data controls the duty cycle of the PWM signal.

Inputs:
- clk: Clock signal.
- rstn: Active-low reset signal.
- DataIn: Input data signal used to control the duty cycle of the PWM signal.

Outputs:
- PWMOut: Output PWM signal.

Parameters:
- DATA_WIDTH: Width of the input data signal (default: 12).
- COUNTER_WIDTH: Width of the counter (default: 10).
- OFFSET: Offset to be added to DataIn (default: 512).

Internal Registers:
- counter: Counter used to generate the PWM signal.
- DataInReg: Register holding the adjusted input data value.

Operation:
- The counter increments on each clock cycle.
- On counter overflow, the input data is adjusted and stored in DataInReg.
- The PWM output signal is generated based on the comparison between the counter and DataInReg.
-----------------------------------------------------------------------------
*/
module PWM#(
   parameter DATA_WIDTH = 12,
   parameter COUNTER_WIDTH = 10,
   parameter OFFSET = 512
)(
   input                     clk,
   input                     rstn,
   input      [DATA_WIDTH-1:0] DataIn,
   output reg                PWMOut
);

reg [COUNTER_WIDTH-1:0] counter;
reg [DATA_WIDTH-1:0] DataInReg;

always @(posedge clk or negedge rstn)
begin
   if (!rstn) begin
      counter <= 0;
      DataInReg <= 0;
      PWMOut <= 0;
   end else begin
      counter <= counter + 1'b1;
      if (counter == 0) begin
         DataInReg <= DataIn + OFFSET;
      end
      if (counter >= DataInReg[COUNTER_WIDTH-1:0]) begin
         PWMOut <= 1'b0;
      end else begin
         PWMOut <= 1'b1;
      end
   end
end

// For simulation only
/*initial begin
   $dumpfile("pwm_waves.vcd");
   $dumpvars;
end*/

endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/28 TH: initial creation
 2024/5/29 TH: Created SV file
 2024/6/10 TH: Fixed Indentation
 2024/6/22 TH: Made module fully generic
*/
