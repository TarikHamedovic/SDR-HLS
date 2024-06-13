//==========================================================================
// Copyright (C) 2024 Chili.CHIPS*ba
//--------------------------------------------------------------------------
//                      PROPRIETARY INFORMATION
//
// The information contained in this file is the property of CHILI CHIPS LLC.
// Except as specifically authorized in writing by CHILI CHIPS LLC, the holder
// of this file: (1) shall keep all information contained herein confidential;
// and (2) shall protect the same in whole or in part from disclosure and
// dissemination to all third parties; and (3) shall use the same for operation
// and maintenance purposes only.
//--------------------------------------------------------------------------
// Description:
//   Test code for Tarik's MSEE, based on:
//      https://zipcpu.com/dsp/2017/08/30/cordic.html
//==========================================================================

module cordic #(
   parameter int IW = 13, // Width of Input Word
   parameter int OW = 13, // Width of Output Word
   parameter int WW = 16, // Width of Word of data
   parameter int PW = 20  // Width of Phase
)(

 //inputs
   input  logic                 i_clk,
   input  logic                 i_reset,
   input  logic signed [IW-1:0] i_xval,
   input  logic signed [IW-1:0] i_yval,
   input  logic        [PW-1:0] i_phase,

 //outputs
   output logic signed [OW-1:0] o_xval,
   output logic signed [OW-1:0] o_yval,
   output logic        [PW-1:0] o_phval
);

   localparam int NSTAGES = 16; // Number of Stages

   // Declare variables for all of the separate stages
   logic signed [WW-1:0] e_xval, e_yval;

   logic signed [WW-1:0] xv [NSTAGES+1];
   logic signed [WW-1:0] yv [NSTAGES+1];
   logic        [PW-1:0] ph [NSTAGES+1];
   logic        [PW-1:0] cordic_angle[NSTAGES];

   logic        [WW-1:0] pre_xval, pre_yval;

   always_comb begin: _cordic_comb

      //--Step1: Sign extend our inputs
      e_xval = { i_xval[IW-1], i_xval, {(WW-IW-1){1'b0}} };
      e_yval = { i_yval[IW-1], i_yval, {(WW-IW-1){1'b0}} };


      //--Step2: Pre-CORDIC rotation
      unique case(i_phase[PW-1 -: 3])
         3'd0: begin     // 0 .. 45, No change
              xv[0] = e_xval;
              yv[0] = e_yval;
              ph[0] = i_phase;
         end
         3'd1: begin     // 45 .. 90
              xv[0] = -e_yval;
              yv[0] = e_xval;
              ph[0] = i_phase - 20'h40000;
         end
         3'd2: begin     // 90 .. 135
              xv[0] = -e_yval;
              yv[0] = e_xval;
              ph[0] = i_phase - 20'h40000;
         end
         3'd3: begin     // 135 .. 180
              xv[0] = -e_xval;
              yv[0] = -e_yval;
              ph[0] = i_phase - 20'h80000;
         end
         3'd4: begin     // 180 .. 225
              xv[0] = -e_xval;
              yv[0] = -e_yval;
              ph[0] = i_phase - 20'h80000;
         end
         3'd5: begin     // 225 .. 270
              xv[0] = e_yval;
              yv[0] = -e_xval;
              ph[0] = i_phase - 20'hc0000;
         end
         3'd6: begin    // 270 .. 315
              xv[0] = e_yval;
              yv[0] = -e_xval;
              ph[0] = i_phase - 20'hc0000;
         end
         default: begin  // 315 .. 360, No change
              xv[0] = e_xval;
              yv[0] = e_yval;
              ph[0] = i_phase;
           end
      endcase


   //--Step3: CORDIC rotations
      cordic_angle[ 0] = 20'h1_2e40; // 26.565051 deg
      cordic_angle[ 1] = 20'h0_9fb3; // 14.036243 deg
      cordic_angle[ 2] = 20'h0_5111; //  7.125016 deg
      cordic_angle[ 3] = 20'h0_28b0; //  3.576334 deg
      cordic_angle[ 4] = 20'h0_145d; //  1.789911 deg
      cordic_angle[ 5] = 20'h0_0a2f; //  0.895174 deg
      cordic_angle[ 6] = 20'h0_0517; //  0.447614 deg
      cordic_angle[ 7] = 20'h0_028b; //  0.223811 deg
      cordic_angle[ 8] = 20'h0_0145; //  0.111906 deg
      cordic_angle[ 9] = 20'h0_00a2; //  0.055953 deg
      cordic_angle[10] = 20'h0_0051; //  0.027976 deg
      cordic_angle[11] = 20'h0_0028; //  0.013988 deg
      cordic_angle[12] = 20'h0_0014; //  0.006994 deg
      cordic_angle[13] = 20'h0_000a; //  0.003497 deg
      cordic_angle[14] = 20'h0_0005; //  0.001749 deg
      cordic_angle[15] = 20'h0_0002; //  0.000874 deg

      for (int i=0; i<NSTAGES; i++) begin

         // Do nothing but move our outputs forward one stage
         if (cordic_angle[i] == 0 || i > WW) begin
            xv[i+1] = xv[i];
            yv[i+1] = yv[i];
            ph[i+1] = ph[i];
         end

         // if phase is negative, rotate clockwise
         if (ph[i][PW-1] == 1'b1) begin
            xv[i+1] = xv[i] + (yv[i] >>> (i+1));
            yv[i+1] = yv[i] - (xv[i] >>> (i+1));
            ph[i+1] = ph[i] + cordic_angle[i];
         end

         // if phase is positive, rotate counter-clockwise
         else begin
            xv[i+1] = xv[i] - (yv[i] >>> (i+1));
            yv[i+1] = yv[i] + (xv[i] >>> (i+1));
            ph[i+1] = ph[i] - cordic_angle[i];
         end
      end // for (int i=0; i<NSTAGES; i++)


      //--Step4: Round our result towards even
      pre_xval = xv[NSTAGES]
               + $signed({
                   {OW{1'b0}},
                    xv[NSTAGES][WW-OW],
                    {WW-OW-1{~xv[NSTAGES][WW-OW]}}
                 });

      pre_yval = yv[NSTAGES]
               + $signed({ 
                   {OW{1'b0}},
                    yv[NSTAGES][WW-OW],
                   {WW-OW-1{~yv[NSTAGES][WW-OW]}}
                 });

   end: _cordic_comb


  //--Step5: Output registers
   always_ff @(posedge i_clk) begin: _cordic_ff
      if (i_reset) begin
         o_xval <= '0;
         o_yval <= '0;
      end 
      else begin
         o_xval <= pre_xval[(WW-1):(WW-OW)];
         o_yval <= pre_yval[(WW-1):(WW-OW)];
      end
   end: _cordic_ff


  //-----------------------------
  // For sim only
  //-----------------------------
   initial begin
      $dumpfile("cordic_waves.vcd");
      $dumpvars;
   end

endmodule: cordic

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/14 TH: initial creation    
 2024/4/15 TH: added rest of CORDIC structure
*/
