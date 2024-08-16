import math
import argparse

def generate_table(lut_width, sine_width):
    table_entries = 1 << lut_width
    max_value = (1 << (sine_width - 1)) - 1

    # Build the lookup table
    table_data = [0] * (table_entries // 4)
    for k in range(table_entries // 4):
        phase = 2.0 * math.pi * k / table_entries
        phase += math.pi / table_entries
        table_data[k] = int(max_value * math.sin(phase))

    return table_data

def generate_verilog_module(lut_width, sine_width, filename):
    sine_data = generate_table(lut_width, sine_width)
    table_entries = len(sine_data)
    
    verilog_code = f"""
module quarterwave_table #(
    parameter LUT_WIDTH = {lut_width},
    parameter SINE_WIDTH = {sine_width}
)(
    input logic [LUT_WIDTH-3:0] address, // {lut_width-2}-bit address signal for {table_entries} values
    output logic signed [SINE_WIDTH-1:0] value    // {sine_width}-bit output signal
);

    logic signed [SINE_WIDTH-1:0] quarterwave_table [{table_entries}];

    assign value = quarterwave_table[address];

    initial begin
"""
    for i, value in enumerate(sine_data):
        # Convert the value to its 2's complement form if it's negative, and represent it in hex
        if value < 0:
            value = (1 << sine_width) + value
        verilog_code += f"        quarterwave_table[{i}] = {sine_width}'h{value:X};\n"

    verilog_code += """
    end

endmodule
"""
    with open(filename, "w") as f:
        f.write(verilog_code)

    return verilog_code

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate Verilog sinewave table module")
    parser.add_argument("--lut_width", "-lw", type=int, default=8, help="Number of address bits for the LUT (default: 8)")
    parser.add_argument("--sine_width", "-sw", type=int, default=7, help="Number of output bits for the sine wave (default: 7)")
    parser.add_argument("--filename", "-fn", type=str, default="quarterwave_table.v", help="Output filename (default: sinewave_table.v)")

    args = parser.parse_args()

    # Generate the Verilog module
    verilog_module = generate_verilog_module(args.lut_width, args.sine_width, args.filename)

    # Print the generated Verilog code
    #print(verilog_module)

