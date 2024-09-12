# Define the primary clock (25 MHz)
create_clock -name clk_25mhz -period 40.0 [get_ports clk_25mhz]

# Define the PLL output clock (80 MHz)
create_generated_clock -name clk_80mhz -source [get_pins PLL_inst/CLKI] [get_pins PLL_inst/CLKOP] -divide_by 1

# Specify input delay for AM Demodulator inputs driven by cic_sine_clk
set_input_delay -clock [get_clocks cic_sine_clk] -max 5.0 [get_pins AMDemodulator_inst/inphase]
set_input_delay -clock [get_clocks cic_sine_clk] -min 1.0 [get_pins AMDemodulator_inst/inphase]

# Define clock uncertainties (jitter and phase errors)
#set_clock_uncertainty -setup 0.2 [get_clocks clk_25mhz]
#set_clock_uncertainty -hold 0.1 [get_clocks clk_25mhz]

#set_clock_uncertainty -setup 0.15 [get_clocks clk_80mhz]
#set_clock_uncertainty -hold 0.05 [get_clocks clk_80mhz]

# Specify input delay for rx_serial (assume a max delay from external source)
#set_input_delay -clock [get_clocks clk_80mhz] -max 5.0 [get_ports rx_serial]
#set_input_delay -clock [get_clocks clk_80mhz] -min 1.0 [get_ports rx_serial]

# Specify output delay for diff_out, pwm_out, pwm_out_p, pwm_out_n, and led
#set_output_delay -clock [get_clocks clk_80mhz] -max 5.0 [get_ports {diff_out pwm_out pwm_out_p pwm_out_n led}]
#set_output_delay -clock [get_clocks clk_80mhz] -min 1.0 [get_ports {diff_out pwm_out pwm_out_p pwm_out_n led}]

# Specify input delay for RF input (assuming some max delay from external source)
#set_input_delay -clock [get_clocks clk_80mhz] -max 5.0 [get_ports rf_in]
#set_input_delay -clock [get_clocks clk_80mhz] -min 1.0 [get_ports rf_in]

# Define maximum transition time for inputs
#set_max_transition 2.5 [get_ports {clk_25mhz rx_serial rf_in}]

# Define maximum fanout load for output ports
#set_max_fanout 20 [get_ports {diff_out pwm_out pwm_out_p pwm_out_n led}]

# Constrain internal paths between registers on the 80 MHz clock domain
#set_max_delay -from [get_clocks clk_80mhz] -to [get_clocks clk_80mhz] 12.5

# Timing exception: Set false path if certain paths are not critical
# Example: set_false_path -from [get_ports {clk_25mhz}] -to [get_pins PLL_inst/CLKI]

# Specify input clock jitter
#set_clock_jitter [get_clocks clk_25mhz] 0.1


