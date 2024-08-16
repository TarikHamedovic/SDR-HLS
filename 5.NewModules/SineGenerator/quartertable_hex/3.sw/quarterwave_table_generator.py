import math
import argparse

def hextable(fname, lut_width, sine_width, data, extension):
    if sine_width >= 31:
        raise ValueError("Internal error: output width too large for internal data type")

    if lut_width < 2:
        raise ValueError("Internal error: Hex-table size should be larger than 4 entries")

    # Append the extension to the filename
    hexfname = fname
    if not hexfname.endswith(extension):
        hexfname += extension

    # Open our file
    with open(hexfname, 'w') as hexfp:
        tbl_entries = 1 << lut_width
        nc = (sine_width + 3) // 4
        msk = (1 << sine_width) - 1

        for k in range(tbl_entries):
            if data[k] > 0:
                assert data[k] <= msk
            else:
                assert data[k] >= -msk - 1
            if k % 16 == 0:
                hexfp.write(f"\n@{k:08x} " if k != 0 else f"@{k:08x} ")
            hexfp.write(f"{data[k] & msk:0{nc}x} ")
        hexfp.write("\n")

def generate_table(lut_width, sine_width):
    tbl_entries = 1 << lut_width
    maxv = (1 << (sine_width - 1)) - 1

    # Build the lookup table
    tbldata = [0] * tbl_entries
    for k in range(tbl_entries // 4):
        ph = 2.0 * math.pi * k / tbl_entries
        ph += math.pi / tbl_entries
        tbldata[k] = int(maxv * math.sin(ph))

    return tbldata

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate a sine wave table and output it in hexadecimal format.')
    parser.add_argument('-lw', '--lut_width', type=int, default=8, help='Number of bits for the Look-Up Table (LUT)')
    parser.add_argument('-sw', '--sine_width', type=int, default=7, help='Width of the sine wave output in bits')
    parser.add_argument('-f', '--filename', type=str, default="sinetable", help='Output filename')
    parser.add_argument('-e', '--extension', type=str, default=".hex", help='File extension for the output file (default: .hex)')

    args = parser.parse_args()

    sine_data = generate_table(args.lut_width, args.sine_width)
    hextable(args.filename, args.lut_width-2, args.sine_width, sine_data, args.extension)


