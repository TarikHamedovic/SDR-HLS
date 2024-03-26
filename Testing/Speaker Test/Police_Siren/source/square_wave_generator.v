module square_wave_generator(
    input wire clk, // Clock Input
    input wire rst,
    output reg led = 0, // Initialize LED to OFF at startup
    output reg wave_outP = 0, // Positive Square Wave Output
    output reg wave_outN = 1 // Inverted Square Wave Output, initialize to inverse of wave_outP
);

// Parameters
parameter CLK_FREQ = 25_000_000;
parameter INITIAL_WAVE_FREQ = 100;
parameter MAX_WAVE_FREQ = 8_000;
parameter FREQ_CHANGE_STEP = 100;
parameter UPDATE_PERIOD = CLK_FREQ; // Frequency update period

parameter HALF_PERIOD_INITIAL = CLK_FREQ / (2 * INITIAL_WAVE_FREQ);

reg [31:0] counter = 0, freq_update_counter = 0;
reg [31:0] half_period = HALF_PERIOD_INITIAL;
reg [31:0] current_wave_freq = INITIAL_WAVE_FREQ;
reg increasing_freq = 1'b1; // Direction of frequency change

always @(posedge clk or posedge rst) begin
    if (rst) begin
        counter <= 0;
        freq_update_counter <= 0;
        current_wave_freq <= INITIAL_WAVE_FREQ;
        half_period <= HALF_PERIOD_INITIAL;
        wave_outP <= 0;
        wave_outN <= 1;
        led <= 0;
        increasing_freq <= 1'b1;
    end else begin
        // Waveform generation
        if(counter < half_period - 1) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
            wave_outP <= ~wave_outP;
            wave_outN <= wave_outP; 
            led <= ~led;
        end

        if(freq_update_counter < UPDATE_PERIOD - 1) begin
            freq_update_counter <= freq_update_counter + 1;
        end else begin
            freq_update_counter <= 0;
            // Adjust frequency
            if (increasing_freq && (current_wave_freq < MAX_WAVE_FREQ)) begin
                current_wave_freq <= current_wave_freq + FREQ_CHANGE_STEP;
            end else if (~increasing_freq && (current_wave_freq > INITIAL_WAVE_FREQ)) begin
                current_wave_freq <= current_wave_freq - FREQ_CHANGE_STEP;
            end else begin
                increasing_freq <= ~increasing_freq; // Change direction
            end
            half_period <= CLK_FREQ / (2 * current_wave_freq);
        end
    end
end

endmodule