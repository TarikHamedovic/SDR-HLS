# SDR-HLS

The github repository delves into the development of a Software-Defined Radio (SDR) Re-
ceiver, which is conceptualized to operate on an Field Programmable Gate Array(FPGA)
platform utilizing High-Level Synthesis (HLS). This approach is inspired by a [notable
project](https://hackaday.io/project/170916-fpga-3-r-1-c-mw-and-sw-sdr-receiver) conducted on a Lattice MACHXO2 Board, which demonstrated the feasibility
of receiving AM broadcasts with minimal analog components. The project underscores
the shift towards digital processing within the FPGA, highlighting the importance of a
robust understanding of Digital Signal Processing (DSP) for successful implementation.
HLS comes into play as an advantageous methodology for DSP applications, especially
in algorithm-based designs, due to its efficiency in prototyping and testing compared to
traditional Verilog-based development.

In the forthcoming sections, we will go into the operational principles of
the project, alongside potential enhancements, alterations, and comprehensive discussions
on the DSP Modules integral to the SDR Receiver. Additionally, the project’s transition
to a different platform, specifically the ULX3S board, will be outlined. Furthermore, the
performance and functionality of the SDR Receiver will be evaluated through both Verilog
and High-Level Synthesis (HLS) testing methodologies.
