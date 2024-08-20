import argparse
import numpy as np

def generate_table(qlut_depth, data_width):
    table_entries = 1 << qlut_depth
    max_value = (1 << (data_width - 1)) - 1

    # Build the lookup table
    table_data = [0] * (table_entries // 4)
    for k in range(table_entries // 4):
        phase = 2.0 * np.pi * k / table_entries
        phase += np.pi / table_entries
        table_data[k] = int(max_value * np.sin(phase))

    return table_data

def generate_verilog_module(qlut_depth, data_width, filename):
    sine_data = generate_table(qlut_depth, data_width)
    table_entries = len(sine_data)
    
    verilog_code = f"""
module quarterwave_table #(
    parameter QLUT_DEPTH = {qlut_depth},
    parameter DATA_WIDTH = {data_width}
)(
    input  reg        [QLUT_DEPTH-3:0] address, // {qlut_depth-2}-bit address signal for {table_entries} values
    output reg signed [DATA_WIDTH-1:0] value    // {data_width}-bit output signal
);

    always_comb begin
        unique case(address)
"""
    for i, value in enumerate(sine_data):
        # Convert the value to its 2's complement form if it's negative, and represent it in hex
        if value < 0:
            value = (1 << data_width) + value
        verilog_code += f"            {qlut_depth-2}'d{i}: value = {data_width}'h{value:X};\n"

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
    parser.add_argument("--qlut_depth", "-qld", type=int, default=8, help="Number of address bits for the LUT (default: 8)")
    parser.add_argument("--data_width", "-dw", type=int, default=7, help="Number of output bits for the sine wave (default: 7)")
    parser.add_argument("--filename", "-fn", type=str, default="quarterwave_table.v", help="Output filename (default: quarterwave_table.v)")

    args = parser.parse_args()

    # Generate the Verilog module
    verilog_module = generate_verilog_module(args.qlut_depth, args.data_width, args.filename)
