import numpy as np
import math
import argparse

def generate_table(lut_width, sine_width):
    table_entries = 1 << lut_width
    max_value = (1 << (sine_width - 1)) - 1

    sine_data = np.zeros(table_entries, dtype=np.int64)

    for k in range(table_entries):
        phase = 2.0 * math.pi * k / table_entries
        sine_data[k] = int(max_value * math.sin(phase))

    return sine_data

def hextable(filename, lut_width, sine_width, data, extension=".hex"):
    if sine_width >= 31:
        raise ValueError("Output width too large for internal data type")
    if lut_width < 2:
        raise ValueError("Hex-table size should be larger than 4 entries")

    hex_filename = f"{filename.rstrip('.hex')}{extension}"

    with open(hex_filename, "w") as hex_file:
        table_entries = 1 << lut_width
        num_chars = (sine_width + 3) // 4
        mask = (1 << sine_width) - 1

        for k in range(table_entries):
            if data[k] > 0:
                assert data[k] <= mask
            else:
                assert data[k] >= -mask - 1

            if k % 16 == 0:
                if k != 0:
                    hex_file.write("\n")
                hex_file.write(f"@{k:08x} ")

            hex_file.write(f"{data[k] & mask:0{num_chars}x} ")

        hex_file.write("\n")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate a sine wave table and output it in hexadecimal format.')
    parser.add_argument('-lw', '--lut_width', type=int, default=8, help='Number of bits for the Look-Up Table (LUT)')
    parser.add_argument('-sw', '--sine_width', type=int, default=7, help='Width of the sine wave output in bits')
    parser.add_argument('-f', '--filename', type=str, default="sinewave_table", help='Output filename')
    parser.add_argument('-e', '--extension', type=str, default=".hex", help='File extension for the output file (default: .hex)')

    args = parser.parse_args()

    sine_data = generate_table(args.lut_width, args.sine_width)
    hextable(args.filename, args.lut_width, args.sine_width, sine_data, args.extension)
