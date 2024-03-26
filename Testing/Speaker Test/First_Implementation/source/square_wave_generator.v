module square_wave_generator(
    input wire clk, // Clock Input
    output reg led = 0, // Initialize LED to OFF at startup
    output reg wave_outP = 0, // Positive Square Wave Output
    output reg wave_outN = 0 // Inverted Square Wave Output
);

// Parameters
parameter CLK_FREQ = 25_000_000;
parameter WAVE_FREQ = 1_000;
parameter HALF_PERIOD_COUNT = CLK_FREQ / (2 * WAVE_FREQ);

reg[31 : 0] counter = 0;

always @(posedge clk) begin
    if(counter < HALF_PERIOD_COUNT - 1) begin
        counter <= counter + 1;
    end else begin
        wave_outP <= ~wave_outP;
        wave_outN <= wave_outP;
        led <= ~led;
        counter <= 0;
    end
end

endmodule