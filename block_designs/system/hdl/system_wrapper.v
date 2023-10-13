//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Sep  4 16:41:47 2023
//Host        : JOROLF-LAPTOP running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (CLK_IN,
    DATA_OUT,
    RESET,
    SYNC_OUT);
  input CLK_IN;
  output DATA_OUT;
  input RESET;
  output SYNC_OUT;

  wire CLK_IN;
  wire DATA_OUT;
  wire RESET;
  wire SYNC_OUT;

  system system_i
       (.CLK_IN(CLK_IN),
        .DATA_OUT(DATA_OUT),
        .RESET(RESET),
        .SYNC_OUT(SYNC_OUT));
endmodule
