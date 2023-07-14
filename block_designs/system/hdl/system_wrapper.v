//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Jul 14 12:03:45 2023
//Host        : nippon running 64-bit Ubuntu 16.04.7 LTS
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
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

  system system_i
       (.CLK_IN(CLK_IN),
        .CLK_OUT(CLK_OUT),
        .DATA_OUT(DATA_OUT),
        .RESET(RESET),
        .SYNC_OUT(SYNC_OUT));
endmodule
