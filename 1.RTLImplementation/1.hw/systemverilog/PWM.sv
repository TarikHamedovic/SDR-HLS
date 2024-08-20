/*
-----------------------------------------------------------------------------
Module: PWM
Description:
This module generates a Pulse Width Modulation (PWM) signal based on the input data. The input data controls the duty cycle of the PWM signal.

Inputs:
- clk: Clock signal.
- data_in: Input data signal used to control the duty cycle of the PWM signal.

Outputs:
- pwm_out: Output PWM signal.

Parameters:
- DATA_WIDTH: Width of the input data signal (default: 12).
- COUNTER_WIDTH: Width of the counter used for generating the PWM signal (default: 10).
- OFFSET: Offset value added to `data_in` to adjust the duty cycle (default: 512).

Internal Registers:
- count: Counter used to generate the PWM signal.
- data_in_reg: Register holding the adjusted input data value.

Operation:
- The counter `count` increments on each clock cycle.
- On counter overflow (when `count` equals zero), the input data is adjusted by adding `OFFSET` and stored in `data_in_reg`.
- The PWM output signal `pwm_out` is generated based on the comparison between `count` and `data_in_reg`.

Simulation:
- The module includes simulation-only code that generates a waveform file (`pwm_waves.vcd`) for analysis during simulation.
-----------------------------------------------------------------------------
*/
module PWM #(
    parameter  DATA_WIDTH = 12,
    parameter  COUNTER_WIDTH = 10,
    parameter  OFFSET = 512
) (
    input  logic                   clk,
    input  logic [DATA_WIDTH-1:0]  data_in,
    output logic                   pwm_out
);

  logic [COUNTER_WIDTH-1:0] count;
  logic [  DATA_WIDTH-1:0]  data_in_reg;

  always_ff @(posedge clk) begin
    // Increment the count
    count <= count + 1'b1;

    // On count overflow, adjust the input data and store it in data_in_reg
    if (count == '0) begin
      data_in_reg <= data_in + OFFSET;
    end

    // Generate the PWM output signal
    if (count > data_in_reg[COUNTER_WIDTH-1:0]) begin
      pwm_out <= 1'b0;
    end else begin
      pwm_out <= 1'b1;
    end
  end

  //=============================//
  //       For sim only          //
  //=============================//
  //`ifdef SIMULATION
  initial begin
    $dumpfile("pwm_waves.vcd");
    $dumpvars;
  end
  //`endif

endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/29 TH: Created SV file
 2024/6/10 TH: Fixed Indentation
 2024/6/22 TH: Made module fully generic
*/
