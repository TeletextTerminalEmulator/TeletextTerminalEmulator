//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
//Date        : Thu Jul 13 17:28:07 2023
//Host        : Joris-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target test_wrapper.bd
//Design      : test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module test_wrapper
   (CLK_IN,
    CLK_OUT,
    DATA_OUT,
    RESET,
    SYNC_OUT);
  input CLK_IN;
  output CLK_OUT;
  output DATA_OUT;
  input RESET;
  output SYNC_OUT;

  wire CLK_IN;
  wire CLK_OUT;
  wire DATA_OUT;
  wire RESET;
  wire SYNC_OUT;

  test test_i
       (.CLK_IN(CLK_IN),
        .CLK_OUT(CLK_OUT),
        .DATA_OUT(DATA_OUT),
        .RESET(RESET),
        .SYNC_OUT(SYNC_OUT));
endmodule
