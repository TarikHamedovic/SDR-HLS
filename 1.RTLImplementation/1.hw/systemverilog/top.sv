/*
-----------------------------------------------------------------------------
Module Name: top
Description:
This module is the top-level module for a simple 1-bit FPGA Software Defined Radio (SDR) receiver
using a Lattice MachXO2 FPGA. The design aims to use minimal external components,
with the core functionalities being implemented within the FPGA. The receiver can handle
long and medium wave signals and includes an AM demodulator.

Features:
- Minimal external components (resistors, capacitors, crystal oscillator)
- Direct antenna connection to LVDS input
- Sampling performed using random noise at the antenna
- Control of RX frequency and RF gain via USB to UART interface
- Internal oscillator with optional external crystal oscillator for better performance
- Integration of PLL, NCO, Mixer, CIC filters, AM demodulator, and PWM modules

Inputs:
- i_Rx_Serial: Serial data input for UART communication
- RFIn: Radio Frequency input from the antenna
- clk_25mhz: 25 MHz clock input

Outputs:
- o_Tx_Serial: Serial data output for UART communication
- led: 8-bit output to control LEDs
- XOut: Clock output
- DiffOut: Differential output for RF signal
- PWMOut: Pulse Width Modulation output for demodulated audio
- PWMOutP1, PWMOutP2, PWMOutP3, PWMOutP4: Positive PWM outputs for audio
- PWMOutN1, PWMOutN2, PWMOutN3, PWMOutN4: Negative PWM outputs for audio
- sinGen: Sine wave generator output
- sin_out: Sine wave output
- CIC_out_clkSin: Clock output for CIC filter

-----------------------------------------------------------------------------

*/

module top (    
   input  logic       clk_25mhz,
   input  logic       i_Rx_Serial,
			input  logic       RFIn,
   output logic       o_Tx_Serial,
   output logic [7:0] led,
   output logic       XOut,
   output logic       DiffOut,
   output logic       PWMOut,    
   output logic       PWMOutP1,
   output logic       PWMOutP2,
   output logic       PWMOutP3,
   output logic       PWMOutP4,
   output logic       PWMOutN1,
   output logic       PWMOutN2,
   output logic       PWMOutN3,
   output logic       PWMOutN4,
   output logic       sinGen,
   output logic       sin_out,
   output logic       CIC_out_clkSin
);

		 logic               clk_80mhz;
			logic        [31:0] DelayCounter;
			logic        [7:0]  i_Tx_Byte;
			logic               o_Rx_DV;
			logic        [7:0]  o_Rx_Byte;
			logic               o_Rx_DV1;
			logic        [7:0]  o_Rx_Byte1;
			logic        [63:0] phase_inc_carr;
			logic               cosGen;
			logic signed [11:0] MixerOutSin;
			logic signed [11:0] MixerOutCos;
			logic signed [11:0] CIC_outSin;
			logic signed [11:0] CIC1_outSin;
			logic               CIC1_out_clkSin;
			logic signed [11:0] CIC_outCos;
			logic signed [11:0] CIC1_outCos;
			logic               CIC1_out_clkCos;
			logic        [63:0] phase_accum;
			logic signed [12:0] LOSine;
			logic signed [12:0] LOCosine;
			logic signed [63:0] NCO_PLL_Accum;
			logic signed [63:0] phase_inc_carrGen;
			logic signed [63:0] phase_inc_carrGen1;
			logic signed [31:0] CarrierPLL_out;
			logic signed [11:0] DemodOut;
			logic        [7:0]  CICGain;

			PLL PLL_inst (
							.CLKI  (clk_25mhz),
							.CLKOP (clk_80mhz)
			);

			SinCos SinCos_inst (
						.Clock  (clk_80mhz),
						.ClkEn  (1'b1),
						.Reset  (1'b0),
						.Theta  (phase_accum[63:56]),
						.Sine   (LOSine),
						.Cosine (LOCosine)
			);

			nco_sig #(
						.WIDTH(64)
			) 
			nco_sig_inst (
						.clk            (clk_80mhz),
						.phase_inc_carr (phase_inc_carrGen1),
						.phase_accum    (phase_accum),
						.sin_out        (sinGen),
						.cos_out        (cosGen)
			);

			Mixer Mixer_inst (
							.clk         (clk_80mhz),
							.RFIn        (RFIn),
							.sin_in      (LOSine[12:1]),
							.cos_in      (LOCosine[12:1]),
							.RFOut       (DiffOut),
							.MixerOutSin (MixerOutSin),
							.MixerOutCos (MixerOutCos)
			);

			CIC #(
			   .WIDTH(72), 
			   .DECIMATION_RATIO(4096)
			) 
			CIC_Sin_inst (
			   .clk   (clk_80mhz),
						.Gain  (CICGain),
						.d_in  (MixerOutSin),
						.d_out (CIC1_outSin),
						.d_clk (CIC1_out_clkSin)
			);

			CIC #(
			   .WIDTH(72), 
			   .DECIMATION_RATIO(4096)
			) 
			CIC_cos_inst (
			   .clk   (clk_80mhz),
						.Gain  (CICGain),
						.d_in  (MixerOutCos),
						.d_out (CIC1_outCos),
						.d_clk (CIC1_out_clkCos)
			);

			PWM PWM_inst (
						.clk (clk_80mhz),
						.DataIn (DemodOut),
						.PWMOut (PWMOut)
			);

   always_comb begin

      led[0] = o_Rx_Byte[0];
			   led[1] = o_Rx_Byte[1];
		    led[2] = o_Rx_Byte[2];
			   led[3] = o_Rx_Byte[3];
			   led[4] = o_Rx_Byte[4];
		    led[5] = o_Rx_Byte[5];
			   led[6] = o_Rx_Byte[6];
		    led[7] = o_Rx_Byte[7];

      PWMOutP1 =  PWMOut;
		    PWMOutP2 =  PWMOut;
			   PWMOutP3 =  PWMOut;
			   PWMOutP4 =  PWMOut;
			   PWMOutN1 = !PWMOut;
			   PWMOutN2 = !PWMOut;
		    PWMOutN3 = !PWMOut;
			   PWMOutN4 = !PWMOut;
   end

			AMDemodulator AMDemodulator_inst (
						.clk   (CIC1_out_clkSin),
						.I_in  (CIC1_outSin),
						.Q_in  (CIC1_outCos),
						.d_out (DemodOut)
			);

			// CLKS_PER_BIT(87) -> 115200 @ 80MHz
			uart_rx #(
      .CLKS_PER_BIT(87)
   ) 
   uart_rx_inst (
						.osc_clk     (clk_80mhz), 
						.i_Rx_Serial (i_Rx_Serial),
						.o_Rx_DV     (o_Rx_DV1),
						.o_Rx_Byte   (o_Rx_Byte1)
			);

			always_ff@ (posedge clk_80mhz) begin
						phase_inc_carrGen1 <= phase_inc_carrGen;    
						o_Rx_DV            <= o_Rx_DV1;
						o_Rx_Byte          <= o_Rx_Byte1;
							
						if (o_Rx_DV) begin
										case (o_Rx_Byte)
										   7'd48 : CICGain <= 7'd0;  // 0
													7'd49 : CICGain <= 7'd1;  // 1
													7'd50 : CICGain <= 7'd2;  // 2
													7'd51 : CICGain <= 7'd3;  // 3
											endcase
											
										case (o_Rx_Byte)
														 97 : phase_inc_carrGen <= 64'h4CF41F212D77318;                    // a Zavidovići 1503 kHz
														 98 : phase_inc_carrGen <= 64'h1aa60f8b8911654;                    // b Kossuth Budapest 540 KHz
														102 : phase_inc_carrGen <= 64'h1dc38c076704516d;                   // f 9650 KHz
														103 : phase_inc_carrGen <= 64'h1d60d923295482c6;                   // g Radio China 9525 KHz
														110 : phase_inc_carrGen <= phase_inc_carrGen - 64'h71b375868d170;  // n - 9KHz
														109 : phase_inc_carrGen <= phase_inc_carrGen + 64'h71b375868d170;  // m + 9KHz
														111 : phase_inc_carrGen <= phase_inc_carrGen - 64'h1436a8cdf6f3;   // o - 100 Hz
														112 : phase_inc_carrGen <= phase_inc_carrGen + 64'h1436a8cdf6f3;   // p + 100 Hz
														113 : phase_inc_carrGen <= phase_inc_carrGen - 64'hca22980ba57e;   // q - 1KHz
														104 : phase_inc_carrGen <= phase_inc_carrGen + 64'hca22980ba57e;   // r + 1 KHz
										endcase
					  end
		end
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: initial creation    
 2024/5/26 TH: revision
*/

