import numpy as np
import matplotlib.pyplot as plt

def write_sine_table_to_hex(lgtable, ow, pb, lb, hex_filename):

    tbl_entries = (1 << lgtable)
    maxv = (1 << (ow - 1)) - 1
    hex_values = []
    dv_values = []
    
    with open(hex_filename, "w") as hexfp:


        hexfp.write("module simpleSine(\n")
        hexfp.write("   clk,\n")
        hexfp.write("   rest,\n")
        hexfp.write("   sample_clock_ce,\n")
        hexfp.write("   phase_inc_carrGen,\n")
        hexfp.write("   sinwave\n")
        hexfp.write(");\n\n")

        hexfp.write(f"parameter SB = {ow}, // SINE_BITS\n")
        hexfp.write(f"          PB = {pb}; // PHASE_BITS\n")
        hexfp.write(f"          LB = {lb}; // LUT_BITS\n")

        hexfp.write("input clk;\n")
        hexfp.write("input wire rst;\n")
        hexfp.write("input wire sample_clock_ce;\n")
        hexfp.write("input reg signed[{PB-1:0] phase_inc_carrGen;\n")
        hexfp.write("output reg signed[SB-1:0] sinewave;\n\n")

        hexfp.write(f"reg [PB-1:0] phase = 0\n\n;")

        hexfp.write("always @(posedge clk or posedge rst) begin\n")
        hexfp.write("   if (rst)\n")
        hexfp.write("       phase <= 0;\n")
        hexfp.write("   else if (sample_clock_ce)\n")
        hexfp.write("       phase <= phase + phase_inc_carrGen;\n")
        hexfp.write("end")

        hexfp.write("always @(posedge clk) begin\n")
        hexfp.write("   if(sample_clock_ce) begin\n")
        hexfp.write("       case(phase[PB-1:PB-1-LB])\n")

        for k in range(tbl_entries):
        
            ph = 2.0 * np.pi * k / tbl_entries
            #ph += np.pi /tbl_entries

            dv = int(maxv * np.sin(ph)) & ((1 << ow) - 1)
            dv_values.append(dv)
            if k % 8 == 0:
                if k != 0:
                    hexfp.write("\n")
                hexfp.write(f"      @{k:08x} ")
            hexfp.write(f"{dv:0{(ow + 3) // 4}x} ")

            index_hex = f"{k:03x}".upper()  # Index in hexadecimal format
            signal_value_hex = f"{int(dv):03x}".upper()
            print(f"{lgtable}'h{index_hex}: sinewave <= {ow}'h{signal_value_hex};")

        
        hexfp.write("\n")

    plt.figure()
    plt.plot(dv_values)
    plt.show()

import numpy as np

lgtable = 12  
ow = 12
pb = 64
lb = 12
hex_filename = "/home/user/Master Thesis/SineGenerator/sine_table.hex"
write_sine_table_to_hex(lgtable, ow, pb, lb, hex_filename)


