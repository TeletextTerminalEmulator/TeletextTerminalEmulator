// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Mon Jul 24 15:23:17 2023
// Host        : Memmert running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jwachsmuth/Documents/teletext/block_designs/system/ip/system_teletext_controller_0_0/system_teletext_controller_0_0_stub.v
// Design      : system_teletext_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "teletext_controller,Vivado 2022.2.2" *)
module system_teletext_controller_0_0(CLK_IN, RESET, DATA_OUT, SYNC_OUT, CLK_OUT)
/* synthesis syn_black_box black_box_pad_pin="CLK_IN,RESET,DATA_OUT,SYNC_OUT,CLK_OUT" */;
  input CLK_IN;
  input RESET;
  output DATA_OUT;
  output SYNC_OUT;
  output CLK_OUT;
endmodule
