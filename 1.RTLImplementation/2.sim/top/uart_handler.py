# uart_handler.py

import cocotb
from cocotb.triggers import RisingEdge

class UartHandler:
    def __init__(self, dut, clk, baud_rate, clocks_per_bit):
        self.dut                 = dut
        self.clk                 = clk
        self.baud_rate           = baud_rate
        self.clocks_per_bit      = clocks_per_bit
        self.data_to_send        = None  # Data that will be sent over UART (8-bit value)
        self.data_bits           = []  # List to store binary representation

    async def init(self):
        self.dut.rx_serial.value = 1  # Idle state for UART

    def set_data(self, data):
        """ Set the 8-bit value that will be sent over UART """
        if not 0 <= data < 256:
            raise ValueError("Data must be an 8-bit value (0-255)")
        self.data_to_send       = data

        # Convert to binary representation and store it
        self.data_bits          = self.decimal_to_binary(data)

    def decimal_to_binary(self, data):
        """ Converts an 8-bit decimal number to a binary representation in LSB to MSB order. """
        if not 0 <= data < 256:
            raise ValueError("Data must be an 8-bit value (0-255)")

        # Create the binary representation as a list of bits (LSB to MSB)
        binary_representation   = [(data >> i) & 1 for i in range(8)]
        return binary_representation

    async def run(self):
        """ Runs the UART transmission indefinitely """
        if self.data_to_send is None:
            raise ValueError("No data set for UART transmission. Use set_data() to specify the 8-bit value.")

        # Keep rx_serial value at 1 for init_cycles clocks
        self.dut.rx_serial.value = 1
        init_cycles              = 3
        cocotb.log.info(f"[UART] Keep rx_serial value at 1 for {init_cycles} clock cycles")

        for _ in range(init_cycles):
            await RisingEdge(self.clk)

        # Start bit = 0
        self.dut.rx_serial.value = 0
        clocks_per_bit_half = int((self.clocks_per_bit - 1) // 2)
        cocotb.log.info(f"[UART] Waiting for {clocks_per_bit_half + 2} clock cycles and checking if the start bit is really 0")
        for _ in range(clocks_per_bit_half + 2):
            await RisingEdge(self.clk)

        # Send the 8-bit data using the binary representation
        receiving_data          = 0  # Used for checking the output
        for i in range(8):
            bit = self.data_bits[i]
            cocotb.log.info(f"i: {i} Bit value: {bit}")
            self.dut.rx_serial.value = bit
            receiving_data          |= bit << i

            # Wait for the duration of one bit period
            for _ in range(self.clocks_per_bit - 1 + 2):
                await RisingEdge(self.clk)

        # Stop bit = 1
        self.dut.rx_serial.value    = 1
        cocotb.log.info(f"[UART] Sending stop bit, value: 1")

        # Wait until the receiver indicates data is valid
        while self.dut.rx_data_valid.value == 0:
            await RisingEdge(self.clk)

        cocotb.log.info(f"[UART] Data transmission complete. Received data: {receiving_data}")

        # Wait for one more clock cycle to allow any necessary cleanup
        await RisingEdge(self.clk)

        # Restart the UART transmission to run indefinitely
        cocotb.start_soon(self.run())

