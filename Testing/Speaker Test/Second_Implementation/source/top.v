module top(
	input wire clk_25mhz,
	input wire rst,
	output [7:0] led,
	output wire wave_outP,
	output wire wave_outN
);


// Instantiate the square_wave_generator
square_wave_generator swg (
    .clk(clk_25mhz),
	.led(led[1]),
	 .rst(rst),
    .wave_outP(wave_outP),
	.wave_outN(wave_outN)
);

endmodule
