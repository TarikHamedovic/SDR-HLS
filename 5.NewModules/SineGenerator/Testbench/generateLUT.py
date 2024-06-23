import numpy as np
import matplotlib.pyplot as plt

def write_sine_table_to_hex(lgtable, ow, pb, verilog_filename):

    tbl_entries = (1 << lgtable)
    maxv = (1 << (ow - 1)) - 1

    dv_values = []

    index_hex_digits = (lgtable + 3) // 4
    value_hex_digits = (ow + 3) // 4
    
    with open(verilog_filename, "w") as verfp:


        verfp.write("module simpleSine(\n")
        verfp.write("    clk,\n")
        verfp.write("    rst,\n")
        verfp.write("    sample_clock_ce,\n")
        verfp.write("    phase_inc_carrGen,\n")
        verfp.write("    sinewave\n")
        verfp.write(");\n\n")

        verfp.write(f"parameter SB = {ow}, // SINE_BITS\n")
        verfp.write(f"          LB = {lgtable}, // LUT_BITS\n")
        verfp.write(f"          PB = {pb}; // PHASE_BITS\n")

        verfp.write("input clk;\n")
        verfp.write("input wire rst;\n")
        verfp.write("input wire sample_clock_ce;\n")
        verfp.write("input reg signed[PB-1:0] phase_inc_carrGen;\n")
        verfp.write("output reg signed[SB-1:0] sinewave;\n\n")

        verfp.write(f"reg [PB-1:0] phase = 0;\n\n")

        verfp.write("always @(posedge clk or posedge rst) begin\n")
        verfp.write("    if (rst)\n")
        verfp.write("        phase <= 0;\n")
        verfp.write("    else if (sample_clock_ce)\n")
        verfp.write("        phase <= phase + phase_inc_carrGen;\n")
        verfp.write("end\n\n")

        verfp.write("always @(posedge clk) begin\n")
        verfp.write("    if(sample_clock_ce) begin\n")
        verfp.write("        case(phase[(PB-1):(PB-LB)])\n")

        for k in range(tbl_entries):
        
            ph = 2.0 * np.pi * k / tbl_entries
            #ph += np.pi /tbl_entries

            dv = int(maxv * np.sin(ph)) & ((1 << ow) - 1)
            dv_values.append(dv)

            # Dynamically format index and value based on their required digits
            index_hex = f"{k:0{index_hex_digits}x}".upper()
            signal_value_hex = f"{dv:0{value_hex_digits}x}".upper()
            verfp.write(f"        {lgtable}'h{index_hex}: sinewave <= {ow}'h{signal_value_hex};\n")

        
        verfp.write("        endcase\n")
        verfp.write("    end\n")
        verfp.write("end\n\n")

        verfp.write("initial begin\n")
        verfp.write("    $dumpfile(\"simpleSine_waves.vcd\");\n")
        verfp.write("    $dumpvars;\n")
        verfp.write("end\n\n")
        verfp.write("endmodule")

    plt.figure()
    plt.plot(dv_values)
    plt.show()

import numpy as np

lgtable = 8
ow = 12
pb = 64
verilog_filename = "/home/user/SDR-HLS/5.NewModules/SineGenerator/Testbench/simpleSine_gen.v"
write_sine_table_to_hex(lgtable, ow, pb,verilog_filename)

