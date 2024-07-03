module ADC_top #(
    parameter ADC_WIDTH = 8,              // ADC Convertor Bit Precision
    parameter ACCUM_BITS = 8,            // 2^ACCUM_BITS is decimation rate of accumulator
    parameter LPF_DEPTH_BITS = 2,         // 2^LPF_DEPTH_BITS is decimation rate of averager
    parameter INPUT_TOPOLOGY = 0,         // 0: DIRECT: Analog input directly connected to + input of comparator
                                          // 1: NETWORK:Analog input connected through R divider to - input of comp.
    parameter DIV_FACTOR = 4,             // Division factor for clock divider
    parameter SAW_DIV_FACTOR = 1024       // Division factor for sawtooth generator
)(
    input wire clk_in,                    // 25 MHz on Control Demo board
    input wire rstn,
    input wire analog_cmp,                // from LVDS buffer or external comparator
    `ifdef SIMULATION
    input wire [15:0] analog_input,
    `endif
    output wire analog_out,               // feedback to RC network
    output wire sample_rdy,
    output wire [7:0] digital_out,        // connected to LED field on control demo bd.
    output wire pwm_out,
    output wire clk_out,
    output wire [7:0] led,
    output wire uart_tx                   // UART transmit pin
);

// Internal Wire & Reg Signals
wire clk;
wire clk_div;
wire clk_80mhz;
wire analog_out_i;
wire sample_rdy_i;
wire [ADC_WIDTH-1:0] digital_out_i;
wire [ADC_WIDTH-1:0] digital_out_abs;
wire [ADC_WIDTH-1:0] sawtooth_out;

assign clk = clk_in;
assign clk_out = clk;

assign led[0] = digital_out[0];
assign led[1] = digital_out[1];
assign led[2] = digital_out[2];
assign led[3] = digital_out[3];
assign led[4] = digital_out[4];
assign led[5] = digital_out[5];
assign led[6] = digital_out[6];
assign led[7] = digital_out[7];


// Instantiate Generic Clock Divider
clock_divider #(
    .DIV_FACTOR(DIV_FACTOR)
) clk_divider (
    .clk_in(clk),
    .rstn(rstn),
    .clk_out(clk_div)
);

PLL PLL_inst (
   .CLKI (clk_in),
   .CLKOP (clk_80mhz)
);

// Instantiate Sawtooth Generator
sawtooth_generator #(
    .WIDTH(ADC_WIDTH),
    .DIV_FACTOR(SAW_DIV_FACTOR)
) saw_gen (
    .clk(clk),
    .rstn(rstn),
    .sawtooth_out(sawtooth_out)
);

// SSD ADC using onboard LVDS buffer or external comparator
sigmadelta_adc #(
    .ADC_WIDTH(ADC_WIDTH),
    .ACCUM_BITS(ACCUM_BITS),
    .LPF_DEPTH_BITS(LPF_DEPTH_BITS)
) SSD_ADC (
    .clk(clk),
    .rstn(rstn),
    .analog_cmp(analog_cmp),
    .digital_out(digital_out_i),
    .analog_out(analog_out_i),
    .sample_rdy(sample_rdy_i)
);

assign digital_out_abs = INPUT_TOPOLOGY ? ~digital_out_i : digital_out_i;

// Output Assignments
assign digital_out = ~digital_out_abs; // invert bits for LED display
assign analog_out = analog_out_i;
assign sample_rdy = sample_rdy_i;

// UART transmission
uart_tx  #(.CLKS_PER_BIT(217))  uart_tx_inst (  // 115200 baud rate at 25 MHz clock
   .osc_clk (clk),
   .rstn (rstn),
   .i_Tx_DV (sample_rdy),
   .i_Tx_Byte (digital_out),
   .o_Tx_Serial (uart_tx),
   .o_Tx_Active (),
   .o_Tx_Done ()
);	

// PWM Output
PWM #(
    .DATA_WIDTH(ADC_WIDTH),
    .COUNTER_WIDTH(ADC_WIDTH),
    .OFFSET(0)
) pwm_inst (
    .clk(clk),
    .rstn(rstn),
    .DataIn(digital_out_abs), // Use the sawtooth wave as input to the PWM
    .PWMOut(pwm_out)
);

// For simulation only
`ifdef SIMULATION
initial begin
    $dumpfile("ADC_waves.vcd");
    $dumpvars;
end
`endif

endmodule
