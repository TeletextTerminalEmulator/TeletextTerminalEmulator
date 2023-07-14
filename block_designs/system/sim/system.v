//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Jul 14 12:03:45 2023
//Host        : nippon running 64-bit Ubuntu 16.04.7 LTS
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (CLK_IN,
    CLK_OUT,
    DATA_OUT,
    RESET,
    SYNC_OUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, CLK_DOMAIN system_CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output CLK_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_OUT, LAYERED_METADATA undef" *) output DATA_OUT;
  input RESET;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SYNC_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SYNC_OUT, LAYERED_METADATA undef" *) output SYNC_OUT;

  wire CLK_IN_1;
  wire RESET_1;
  wire clk_wiz_0_clk_out1;
  wire teletext_controller_0_CLK_OUT;
  wire teletext_controller_0_DATA_OUT;
  wire teletext_controller_0_SYNC_OUT;

  assign CLK_IN_1 = CLK_IN;
  assign CLK_OUT = teletext_controller_0_CLK_OUT;
  assign DATA_OUT = teletext_controller_0_DATA_OUT;
  assign RESET_1 = RESET;
  assign SYNC_OUT = teletext_controller_0_SYNC_OUT;
  system_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(CLK_IN_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(RESET_1));
  system_teletext_controller_0_0 teletext_controller_0
       (.CLK_IN(clk_wiz_0_clk_out1),
        .CLK_OUT(teletext_controller_0_CLK_OUT),
        .DATA_OUT(teletext_controller_0_DATA_OUT),
        .RESET(RESET_1),
        .SYNC_OUT(teletext_controller_0_SYNC_OUT));
endmodule
