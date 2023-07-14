// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jul 14 11:47:15 2023
// Host        : nippon running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode synth_stub
//               /homes/jwachsmuth/Dokumente/teletext/block_designs/system/ip/system_teletext_controller_0_0/system_teletext_controller_0_0_stub.v
// Design      : system_teletext_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "teletext_controller,Vivado 2022.2" *)
module system_teletext_controller_0_0(CLK_IN, RESET, DATA_OUT, SYNC_OUT, CLK_OUT)
/* synthesis syn_black_box black_box_pad_pin="CLK_IN,RESET,DATA_OUT,SYNC_OUT,CLK_OUT" */;
  input CLK_IN;
  input RESET;
  output DATA_OUT;
  output SYNC_OUT;
  output CLK_OUT;
endmodule
