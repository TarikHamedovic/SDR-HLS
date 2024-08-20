import argparse
import numpy as np
import math

def generate_table(lut_width, data_width):
    table_entries = 1 << lut_width
    max_value = (1 << (data_width - 1)) - 1

    sine_data = np.zeros(table_entries, dtype=np.int64)

    for k in range(table_entries):
        phase = 2.0 * math.pi * k / table_entries
        sine_data[k] = int(max_value * math.sin(phase))

    return sine_data

def generate_verilog_module(lut_width, data_width, filename):
    sine_data = generate_table(lut_width, data_width)
    table_entries = len(sine_data)
    
    verilog_code = f"""
module sinewave_table #(
    parameter LUT_DEPTH = {lut_width},
    parameter DATA_WIDTH = {data_width}
)(
    input  reg        [LUT_DEPTH -1:0] address, // {lut_width}-bit address signal for {table_entries} values
    output reg signed [DATA_WIDTH-1:0] value    // {data_width}-bit output signal
);

    always_comb begin
        unique case(address)
"""
    for i, value in enumerate(sine_data):
        # Convert the value to its 2's complement form if it's negative, and represent it in hex
        if value < 0:
            value = (1 << data_width) + value
        verilog_code += f"            {lut_width}'d{i}: value = {data_width}'h{value:X};\n"

    verilog_code += f"""
            default: value = {data_width}'d0;
        endcase
    end

endmodule
"""
    with open(filename, "w") as f:
        f.write(verilog_code)

    return verilog_code

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate Verilog sinewave table module")
    parser.add_argument("--lut_depth", "-ld", type=int, default=8, help="Number of address bits for the LUT (default: 8)")
    parser.add_argument("--data_width", "-dw", type=int, default=7, help="Number of output bits for the sine wave (default: 7)")
    parser.add_argument("--filename", "-fn", type=str, default="sinewave_table.v", help="Output filename (default: sinewave_table.v)")

    args = parser.parse_args()

    # Generate the Verilog module
    verilog_module = generate_verilog_module(args.lut_depth, args.data_width, args.filename)

    # Print the generated Verilog code
    print(verilog_module)
