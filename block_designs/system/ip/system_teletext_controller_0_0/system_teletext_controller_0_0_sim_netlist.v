// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jul 14 11:47:15 2023
// Host        : nippon running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode funcsim
//               /homes/jwachsmuth/Dokumente/teletext/block_designs/system/ip/system_teletext_controller_0_0/system_teletext_controller_0_0_sim_netlist.v
// Design      : system_teletext_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_teletext_controller_0_0,teletext_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "teletext_controller,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module system_teletext_controller_0_0
   (CLK_IN,
    RESET,
    DATA_OUT,
    SYNC_OUT,
    CLK_OUT);
  input CLK_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  output DATA_OUT;
  output SYNC_OUT;
  output CLK_OUT;

  wire CLK_IN;
  wire DATA_OUT;
  wire RESET;
  wire SYNC_OUT;

  assign CLK_OUT = CLK_IN;
  system_teletext_controller_0_0_teletext_controller inst
       (.CLK_IN(CLK_IN),
        .DATA_OUT(DATA_OUT),
        .RESET(RESET),
        .SYNC_OUT(SYNC_OUT));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module system_teletext_controller_0_0_shift_register
   (Q,
    PACKET_DATA,
    packet_trigger,
    \current_state_reg[354]_0 ,
    D,
    RESET,
    CLK_IN);
  output [31:0]Q;
  output [0:0]PACKET_DATA;
  input packet_trigger;
  input [4:0]\current_state_reg[354]_0 ;
  input [31:0]D;
  input RESET;
  input CLK_IN;

  wire CLK_IN;
  wire [31:0]D;
  wire [0:0]PACKET_DATA;
  wire [31:0]Q;
  wire RESET;
  wire [359:1]current_state;
  wire \current_state[102]_i_1_n_0 ;
  wire \current_state[103]_i_2_n_0 ;
  wire \current_state[110]_i_1_n_0 ;
  wire \current_state[118]_i_1_n_0 ;
  wire \current_state[11]_i_1_n_0 ;
  wire \current_state[126]_i_1_n_0 ;
  wire \current_state[134]_i_1_n_0 ;
  wire \current_state[13]_i_1_n_0 ;
  wire \current_state[142]_i_1_n_0 ;
  wire \current_state[150]_i_1_n_0 ;
  wire \current_state[158]_i_1_n_0 ;
  wire \current_state[15]_i_1_n_0 ;
  wire \current_state[166]_i_1_n_0 ;
  wire \current_state[174]_i_1_n_0 ;
  wire \current_state[182]_i_1_n_0 ;
  wire \current_state[190]_i_1_n_0 ;
  wire \current_state[198]_i_1_n_0 ;
  wire \current_state[19]_i_1_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[206]_i_1_n_0 ;
  wire \current_state[20]_i_1_n_0 ;
  wire \current_state[214]_i_1_n_0 ;
  wire \current_state[222]_i_1_n_0 ;
  wire \current_state[22]_i_1_n_0 ;
  wire \current_state[230]_i_1_n_0 ;
  wire \current_state[238]_i_1_n_0 ;
  wire \current_state[23]_i_1_n_0 ;
  wire \current_state[246]_i_1_n_0 ;
  wire \current_state[254]_i_1_n_0 ;
  wire \current_state[262]_i_1_n_0 ;
  wire \current_state[270]_i_1_n_0 ;
  wire \current_state[278]_i_1_n_0 ;
  wire \current_state[27]_i_1_n_0 ;
  wire \current_state[286]_i_1_n_0 ;
  wire \current_state[28]_i_1_n_0 ;
  wire \current_state[294]_i_1_n_0 ;
  wire \current_state[29]_i_1_n_0 ;
  wire \current_state[302]_i_1_n_0 ;
  wire \current_state[310]_i_1_n_0 ;
  wire \current_state[318]_i_1_n_0 ;
  wire \current_state[326]_i_1_n_0 ;
  wire \current_state[334]_i_1_n_0 ;
  wire \current_state[342]_i_1_n_0 ;
  wire \current_state[350]_i_1_n_0 ;
  wire \current_state[358]_i_1_n_0 ;
  wire \current_state[3]_i_1_n_0 ;
  wire \current_state[46]_i_1_n_0 ;
  wire \current_state[54]_i_1_n_0 ;
  wire \current_state[5]_i_1_n_0 ;
  wire \current_state[62]_i_1_n_0 ;
  wire \current_state[70]_i_1_n_0 ;
  wire \current_state[78]_i_1_n_0 ;
  wire \current_state[7]_i_1_n_0 ;
  wire \current_state[86]_i_1_n_0 ;
  wire \current_state[94]_i_1_n_0 ;
  wire \current_state[96]_i_2_n_0 ;
  wire \current_state[98]_i_2_n_0 ;
  wire \current_state[9]_i_1_n_0 ;
  wire [4:0]\current_state_reg[354]_0 ;
  wire [357:0]next_state;
  wire packet_trigger;

  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[0]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[1]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[100]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[101]),
        .O(next_state[100]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[101]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[102]),
        .O(next_state[101]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[102]_i_1 
       (.I0(current_state[103]),
        .I1(packet_trigger),
        .O(\current_state[102]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[103]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[104]),
        .O(next_state[103]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_state[103]_i_2 
       (.I0(\current_state_reg[354]_0 [0]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [4]),
        .I3(\current_state_reg[354]_0 [2]),
        .I4(\current_state_reg[354]_0 [1]),
        .O(\current_state[103]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[104]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[105]),
        .O(next_state[104]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[105]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[106]),
        .O(next_state[105]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[106]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[107]),
        .O(next_state[106]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[107]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[108]),
        .O(next_state[107]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[108]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[109]),
        .O(next_state[108]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[109]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[110]),
        .O(next_state[109]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[10]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[11]),
        .O(next_state[10]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[110]_i_1 
       (.I0(current_state[111]),
        .I1(packet_trigger),
        .O(\current_state[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[112]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[113]),
        .O(next_state[112]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[113]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[114]),
        .O(next_state[113]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[114]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[115]),
        .O(next_state[114]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[115]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[116]),
        .O(next_state[115]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[116]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[117]),
        .O(next_state[116]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[117]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[118]),
        .O(next_state[117]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[118]_i_1 
       (.I0(current_state[119]),
        .I1(packet_trigger),
        .O(\current_state[118]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[11]_i_1 
       (.I0(current_state[12]),
        .I1(packet_trigger),
        .O(\current_state[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[120]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[121]),
        .O(next_state[120]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[121]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[122]),
        .O(next_state[121]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[122]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[123]),
        .O(next_state[122]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[123]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[124]),
        .O(next_state[123]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[124]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[125]),
        .O(next_state[124]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[125]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[126]),
        .O(next_state[125]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[126]_i_1 
       (.I0(current_state[127]),
        .I1(packet_trigger),
        .O(\current_state[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[128]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[129]),
        .O(next_state[128]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[129]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[130]),
        .O(next_state[129]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[12]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[13]),
        .O(next_state[12]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[130]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[131]),
        .O(next_state[130]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[131]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[132]),
        .O(next_state[131]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[132]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[133]),
        .O(next_state[132]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[133]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[134]),
        .O(next_state[133]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[134]_i_1 
       (.I0(current_state[135]),
        .I1(packet_trigger),
        .O(\current_state[134]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[136]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[137]),
        .O(next_state[136]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[137]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[138]),
        .O(next_state[137]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[138]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[139]),
        .O(next_state[138]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[139]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[140]),
        .O(next_state[139]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[13]_i_1 
       (.I0(current_state[14]),
        .I1(packet_trigger),
        .O(\current_state[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[140]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[141]),
        .O(next_state[140]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[141]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[142]),
        .O(next_state[141]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[142]_i_1 
       (.I0(current_state[143]),
        .I1(packet_trigger),
        .O(\current_state[142]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[144]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[145]),
        .O(next_state[144]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[145]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[146]),
        .O(next_state[145]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[146]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[147]),
        .O(next_state[146]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[147]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[148]),
        .O(next_state[147]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[148]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[149]),
        .O(next_state[148]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[149]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[150]),
        .O(next_state[149]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[14]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[15]),
        .O(next_state[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[150]_i_1 
       (.I0(current_state[151]),
        .I1(packet_trigger),
        .O(\current_state[150]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[152]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[153]),
        .O(next_state[152]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[153]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[154]),
        .O(next_state[153]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[154]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[155]),
        .O(next_state[154]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[155]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[156]),
        .O(next_state[155]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[156]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[157]),
        .O(next_state[156]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[157]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[158]),
        .O(next_state[157]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[158]_i_1 
       (.I0(current_state[159]),
        .I1(packet_trigger),
        .O(\current_state[158]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[15]_i_1 
       (.I0(current_state[16]),
        .I1(packet_trigger),
        .O(\current_state[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[160]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[161]),
        .O(next_state[160]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[161]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[162]),
        .O(next_state[161]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[162]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[163]),
        .O(next_state[162]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[163]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[164]),
        .O(next_state[163]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[164]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[165]),
        .O(next_state[164]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[165]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[166]),
        .O(next_state[165]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[166]_i_1 
       (.I0(current_state[167]),
        .I1(packet_trigger),
        .O(\current_state[166]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[168]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[169]),
        .O(next_state[168]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[169]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[170]),
        .O(next_state[169]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[16]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[17]),
        .O(next_state[16]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[170]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[171]),
        .O(next_state[170]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[171]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[172]),
        .O(next_state[171]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[172]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[173]),
        .O(next_state[172]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[173]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[174]),
        .O(next_state[173]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[174]_i_1 
       (.I0(current_state[175]),
        .I1(packet_trigger),
        .O(\current_state[174]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[176]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[177]),
        .O(next_state[176]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[177]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[178]),
        .O(next_state[177]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[178]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[179]),
        .O(next_state[178]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[179]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[180]),
        .O(next_state[179]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[17]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[18]),
        .O(next_state[17]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[180]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[181]),
        .O(next_state[180]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[181]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[182]),
        .O(next_state[181]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[182]_i_1 
       (.I0(current_state[183]),
        .I1(packet_trigger),
        .O(\current_state[182]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[184]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[185]),
        .O(next_state[184]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[185]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[186]),
        .O(next_state[185]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[186]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[187]),
        .O(next_state[186]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[187]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[188]),
        .O(next_state[187]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[188]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[189]),
        .O(next_state[188]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[189]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[190]),
        .O(next_state[189]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[18]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[19]),
        .O(next_state[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[190]_i_1 
       (.I0(current_state[191]),
        .I1(packet_trigger),
        .O(\current_state[190]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[192]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[193]),
        .O(next_state[192]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[193]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[194]),
        .O(next_state[193]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[194]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[195]),
        .O(next_state[194]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[195]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[196]),
        .O(next_state[195]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[196]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[197]),
        .O(next_state[196]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[197]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[198]),
        .O(next_state[197]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[198]_i_1 
       (.I0(current_state[199]),
        .I1(packet_trigger),
        .O(\current_state[198]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[19]_i_1 
       (.I0(current_state[20]),
        .I1(packet_trigger),
        .O(\current_state[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[1]_i_1 
       (.I0(current_state[2]),
        .I1(packet_trigger),
        .O(\current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[200]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[201]),
        .O(next_state[200]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[201]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[202]),
        .O(next_state[201]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[202]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[203]),
        .O(next_state[202]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[203]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[204]),
        .O(next_state[203]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[204]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[205]),
        .O(next_state[204]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[205]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[206]),
        .O(next_state[205]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[206]_i_1 
       (.I0(current_state[207]),
        .I1(packet_trigger),
        .O(\current_state[206]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[208]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[209]),
        .O(next_state[208]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[209]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[210]),
        .O(next_state[209]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[20]_i_1 
       (.I0(current_state[21]),
        .I1(packet_trigger),
        .O(\current_state[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[210]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[211]),
        .O(next_state[210]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[211]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[212]),
        .O(next_state[211]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[212]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[213]),
        .O(next_state[212]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[213]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[214]),
        .O(next_state[213]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[214]_i_1 
       (.I0(current_state[215]),
        .I1(packet_trigger),
        .O(\current_state[214]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[216]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[217]),
        .O(next_state[216]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[217]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[218]),
        .O(next_state[217]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[218]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[219]),
        .O(next_state[218]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[219]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[220]),
        .O(next_state[219]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[21]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[22]),
        .O(next_state[21]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[220]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[221]),
        .O(next_state[220]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[221]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[222]),
        .O(next_state[221]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[222]_i_1 
       (.I0(current_state[223]),
        .I1(packet_trigger),
        .O(\current_state[222]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[224]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[225]),
        .O(next_state[224]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[225]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[226]),
        .O(next_state[225]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[226]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[227]),
        .O(next_state[226]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[227]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[228]),
        .O(next_state[227]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[228]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[229]),
        .O(next_state[228]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[229]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[230]),
        .O(next_state[229]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[22]_i_1 
       (.I0(current_state[23]),
        .I1(packet_trigger),
        .O(\current_state[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[230]_i_1 
       (.I0(current_state[231]),
        .I1(packet_trigger),
        .O(\current_state[230]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[232]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[233]),
        .O(next_state[232]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[233]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[234]),
        .O(next_state[233]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[234]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[235]),
        .O(next_state[234]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[235]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[236]),
        .O(next_state[235]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[236]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[237]),
        .O(next_state[236]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[237]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[238]),
        .O(next_state[237]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[238]_i_1 
       (.I0(current_state[239]),
        .I1(packet_trigger),
        .O(\current_state[238]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[23]_i_1 
       (.I0(current_state[24]),
        .I1(packet_trigger),
        .O(\current_state[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[240]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[241]),
        .O(next_state[240]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[241]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[242]),
        .O(next_state[241]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[242]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[243]),
        .O(next_state[242]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[243]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[244]),
        .O(next_state[243]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[244]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[245]),
        .O(next_state[244]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[245]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[246]),
        .O(next_state[245]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[246]_i_1 
       (.I0(current_state[247]),
        .I1(packet_trigger),
        .O(\current_state[246]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[248]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[249]),
        .O(next_state[248]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[249]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[250]),
        .O(next_state[249]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[24]_i_1 
       (.I0(\current_state_reg[354]_0 [0]),
        .I1(packet_trigger),
        .I2(current_state[25]),
        .O(next_state[24]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[250]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[251]),
        .O(next_state[250]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[251]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[252]),
        .O(next_state[251]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[252]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[253]),
        .O(next_state[252]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[253]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[254]),
        .O(next_state[253]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[254]_i_1 
       (.I0(current_state[255]),
        .I1(packet_trigger),
        .O(\current_state[254]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[256]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[257]),
        .O(next_state[256]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[257]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[258]),
        .O(next_state[257]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[258]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[259]),
        .O(next_state[258]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[259]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[260]),
        .O(next_state[259]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[25]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[26]),
        .O(next_state[25]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[260]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[261]),
        .O(next_state[260]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[261]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[262]),
        .O(next_state[261]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[262]_i_1 
       (.I0(current_state[263]),
        .I1(packet_trigger),
        .O(\current_state[262]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[264]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[265]),
        .O(next_state[264]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[265]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[266]),
        .O(next_state[265]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[266]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[267]),
        .O(next_state[266]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[267]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[268]),
        .O(next_state[267]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[268]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[269]),
        .O(next_state[268]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[269]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[270]),
        .O(next_state[269]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[26]_i_1 
       (.I0(\current_state_reg[354]_0 [0]),
        .I1(packet_trigger),
        .I2(current_state[27]),
        .O(next_state[26]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[270]_i_1 
       (.I0(current_state[271]),
        .I1(packet_trigger),
        .O(\current_state[270]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[272]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[273]),
        .O(next_state[272]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[273]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[274]),
        .O(next_state[273]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[274]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[275]),
        .O(next_state[274]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[275]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[276]),
        .O(next_state[275]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[276]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[277]),
        .O(next_state[276]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[277]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[278]),
        .O(next_state[277]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[278]_i_1 
       (.I0(current_state[279]),
        .I1(packet_trigger),
        .O(\current_state[278]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[27]_i_1 
       (.I0(current_state[28]),
        .I1(packet_trigger),
        .O(\current_state[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[280]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[281]),
        .O(next_state[280]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[281]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[282]),
        .O(next_state[281]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[282]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[283]),
        .O(next_state[282]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[283]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[284]),
        .O(next_state[283]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[284]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[285]),
        .O(next_state[284]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[285]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[286]),
        .O(next_state[285]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[286]_i_1 
       (.I0(current_state[287]),
        .I1(packet_trigger),
        .O(\current_state[286]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[288]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[289]),
        .O(next_state[288]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[289]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[290]),
        .O(next_state[289]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[28]_i_1 
       (.I0(current_state[29]),
        .I1(packet_trigger),
        .O(\current_state[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[290]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[291]),
        .O(next_state[290]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[291]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[292]),
        .O(next_state[291]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[292]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[293]),
        .O(next_state[292]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[293]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[294]),
        .O(next_state[293]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[294]_i_1 
       (.I0(current_state[295]),
        .I1(packet_trigger),
        .O(\current_state[294]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[296]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[297]),
        .O(next_state[296]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[297]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[298]),
        .O(next_state[297]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[298]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[299]),
        .O(next_state[298]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[299]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[300]),
        .O(next_state[299]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[29]_i_1 
       (.I0(current_state[30]),
        .I1(packet_trigger),
        .O(\current_state[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[2]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[3]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[300]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[301]),
        .O(next_state[300]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[301]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[302]),
        .O(next_state[301]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[302]_i_1 
       (.I0(current_state[303]),
        .I1(packet_trigger),
        .O(\current_state[302]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[304]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[305]),
        .O(next_state[304]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[305]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[306]),
        .O(next_state[305]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[306]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[307]),
        .O(next_state[306]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[307]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[308]),
        .O(next_state[307]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[308]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[309]),
        .O(next_state[308]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[309]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[310]),
        .O(next_state[309]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[30]_i_1 
       (.I0(\current_state_reg[354]_0 [0]),
        .I1(packet_trigger),
        .I2(current_state[31]),
        .O(next_state[30]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[310]_i_1 
       (.I0(current_state[311]),
        .I1(packet_trigger),
        .O(\current_state[310]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[312]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[313]),
        .O(next_state[312]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[313]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[314]),
        .O(next_state[313]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[314]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[315]),
        .O(next_state[314]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[315]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[316]),
        .O(next_state[315]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[316]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[317]),
        .O(next_state[316]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[317]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[318]),
        .O(next_state[317]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[318]_i_1 
       (.I0(current_state[319]),
        .I1(packet_trigger),
        .O(\current_state[318]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[31]_i_1 
       (.I0(\current_state_reg[354]_0 [0]),
        .I1(packet_trigger),
        .I2(current_state[32]),
        .O(next_state[31]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[320]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[321]),
        .O(next_state[320]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[321]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[322]),
        .O(next_state[321]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[322]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[323]),
        .O(next_state[322]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[323]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[324]),
        .O(next_state[323]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[324]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[325]),
        .O(next_state[324]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[325]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[326]),
        .O(next_state[325]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[326]_i_1 
       (.I0(current_state[327]),
        .I1(packet_trigger),
        .O(\current_state[326]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[328]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[329]),
        .O(next_state[328]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[329]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[330]),
        .O(next_state[329]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[32]_i_1 
       (.I0(\current_state_reg[354]_0 [1]),
        .I1(\current_state_reg[354]_0 [4]),
        .I2(\current_state_reg[354]_0 [3]),
        .I3(packet_trigger),
        .I4(current_state[33]),
        .O(next_state[32]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[330]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[331]),
        .O(next_state[330]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[331]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[332]),
        .O(next_state[331]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[332]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[333]),
        .O(next_state[332]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[333]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[334]),
        .O(next_state[333]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[334]_i_1 
       (.I0(current_state[335]),
        .I1(packet_trigger),
        .O(\current_state[334]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[336]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[337]),
        .O(next_state[336]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[337]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[338]),
        .O(next_state[337]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[338]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[339]),
        .O(next_state[338]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[339]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[340]),
        .O(next_state[339]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[33]_i_1 
       (.I0(\current_state_reg[354]_0 [1]),
        .I1(packet_trigger),
        .I2(current_state[34]),
        .O(next_state[33]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[340]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[341]),
        .O(next_state[340]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[341]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[342]),
        .O(next_state[341]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[342]_i_1 
       (.I0(current_state[343]),
        .I1(packet_trigger),
        .O(\current_state[342]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[344]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[345]),
        .O(next_state[344]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[345]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[346]),
        .O(next_state[345]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[346]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[347]),
        .O(next_state[346]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[347]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[348]),
        .O(next_state[347]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[348]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[349]),
        .O(next_state[348]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[349]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[350]),
        .O(next_state[349]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[34]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [2]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[35]),
        .O(next_state[34]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[350]_i_1 
       (.I0(current_state[351]),
        .I1(packet_trigger),
        .O(\current_state[350]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[352]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [0]),
        .I3(packet_trigger),
        .I4(current_state[353]),
        .O(next_state[352]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[353]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[354]),
        .O(next_state[353]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[354]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(packet_trigger),
        .I4(current_state[355]),
        .O(next_state[354]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[355]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[356]),
        .O(next_state[355]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[356]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[357]),
        .O(next_state[356]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[357]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[358]),
        .O(next_state[357]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[358]_i_1 
       (.I0(current_state[359]),
        .I1(packet_trigger),
        .O(\current_state[358]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h25525225)) 
    \current_state[359]_i_2 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(\current_state_reg[354]_0 [4]),
        .I2(\current_state_reg[354]_0 [2]),
        .I3(\current_state_reg[354]_0 [1]),
        .I4(\current_state_reg[354]_0 [0]),
        .O(PACKET_DATA));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[35]_i_1 
       (.I0(\current_state_reg[354]_0 [2]),
        .I1(packet_trigger),
        .I2(current_state[36]),
        .O(next_state[35]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[36]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(\current_state_reg[354]_0 [2]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[37]),
        .O(next_state[36]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[37]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[38]),
        .O(next_state[37]));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \current_state[38]_i_1 
       (.I0(\current_state_reg[354]_0 [2]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [4]),
        .I3(packet_trigger),
        .I4(current_state[39]),
        .O(next_state[38]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[39]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(packet_trigger),
        .I2(current_state[40]),
        .O(next_state[39]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[3]_i_1 
       (.I0(current_state[4]),
        .I1(packet_trigger),
        .O(\current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[40]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[41]),
        .O(next_state[40]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[41]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[42]),
        .O(next_state[41]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[42]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[43]),
        .O(next_state[42]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[43]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[44]),
        .O(next_state[43]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[44]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[45]),
        .O(next_state[44]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[45]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[46]),
        .O(next_state[45]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[46]_i_1 
       (.I0(current_state[47]),
        .I1(packet_trigger),
        .O(\current_state[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[47]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[48]),
        .O(next_state[47]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[48]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[49]),
        .O(next_state[48]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[49]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[50]),
        .O(next_state[49]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[4]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[5]),
        .O(next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[50]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[51]),
        .O(next_state[50]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[51]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[52]),
        .O(next_state[51]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[52]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[53]),
        .O(next_state[52]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[53]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[54]),
        .O(next_state[53]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[54]_i_1 
       (.I0(current_state[55]),
        .I1(packet_trigger),
        .O(\current_state[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[55]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[56]),
        .O(next_state[55]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[56]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[57]),
        .O(next_state[56]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[57]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[58]),
        .O(next_state[57]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[58]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[59]),
        .O(next_state[58]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[59]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[60]),
        .O(next_state[59]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[5]_i_1 
       (.I0(current_state[6]),
        .I1(packet_trigger),
        .O(\current_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[60]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[61]),
        .O(next_state[60]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[61]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[62]),
        .O(next_state[61]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[62]_i_1 
       (.I0(current_state[63]),
        .I1(packet_trigger),
        .O(\current_state[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[63]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[64]),
        .O(next_state[63]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[64]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[65]),
        .O(next_state[64]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[65]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[66]),
        .O(next_state[65]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[66]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[67]),
        .O(next_state[66]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[67]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[68]),
        .O(next_state[67]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[68]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[69]),
        .O(next_state[68]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[69]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[70]),
        .O(next_state[69]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[6]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[7]),
        .O(next_state[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[70]_i_1 
       (.I0(current_state[71]),
        .I1(packet_trigger),
        .O(\current_state[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[71]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[72]),
        .O(next_state[71]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[72]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[73]),
        .O(next_state[72]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[73]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[74]),
        .O(next_state[73]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[74]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[75]),
        .O(next_state[74]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[75]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[76]),
        .O(next_state[75]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[76]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[77]),
        .O(next_state[76]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[77]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[78]),
        .O(next_state[77]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[78]_i_1 
       (.I0(current_state[79]),
        .I1(packet_trigger),
        .O(\current_state[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[79]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[80]),
        .O(next_state[79]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[7]_i_1 
       (.I0(current_state[8]),
        .I1(packet_trigger),
        .O(\current_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[80]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[81]),
        .O(next_state[80]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[81]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[82]),
        .O(next_state[81]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[82]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[83]),
        .O(next_state[82]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[83]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[84]),
        .O(next_state[83]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[84]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[85]),
        .O(next_state[84]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[85]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[86]),
        .O(next_state[85]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[86]_i_1 
       (.I0(current_state[87]),
        .I1(packet_trigger),
        .O(\current_state[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[87]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[88]),
        .O(next_state[87]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[88]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[89]),
        .O(next_state[88]));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[89]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[90]),
        .O(next_state[89]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[8]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[9]),
        .O(next_state[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[90]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[91]),
        .O(next_state[90]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[91]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[92]),
        .O(next_state[91]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[92]_i_1 
       (.I0(packet_trigger),
        .I1(current_state[93]),
        .O(next_state[92]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[93]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[94]),
        .O(next_state[93]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[94]_i_1 
       (.I0(current_state[95]),
        .I1(packet_trigger),
        .O(\current_state[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \current_state[95]_i_1 
       (.I0(\current_state[103]_i_2_n_0 ),
        .I1(PACKET_DATA),
        .I2(packet_trigger),
        .I3(current_state[96]),
        .O(next_state[95]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[96]_i_1 
       (.I0(\current_state[96]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[97]),
        .O(next_state[96]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2A2A2A2B)) 
    \current_state[96]_i_2 
       (.I0(\current_state_reg[354]_0 [0]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [4]),
        .I3(\current_state_reg[354]_0 [1]),
        .I4(\current_state_reg[354]_0 [2]),
        .O(\current_state[96]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \current_state[97]_i_1 
       (.I0(\current_state_reg[354]_0 [4]),
        .I1(\current_state_reg[354]_0 [3]),
        .I2(\current_state_reg[354]_0 [1]),
        .I3(packet_trigger),
        .I4(current_state[98]),
        .O(next_state[97]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[98]_i_1 
       (.I0(\current_state[98]_i_2_n_0 ),
        .I1(packet_trigger),
        .I2(current_state[99]),
        .O(next_state[98]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0AAA0AAB)) 
    \current_state[98]_i_2 
       (.I0(\current_state_reg[354]_0 [2]),
        .I1(\current_state_reg[354]_0 [1]),
        .I2(\current_state_reg[354]_0 [4]),
        .I3(\current_state_reg[354]_0 [3]),
        .I4(\current_state_reg[354]_0 [0]),
        .O(\current_state[98]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[99]_i_1 
       (.I0(\current_state_reg[354]_0 [3]),
        .I1(packet_trigger),
        .I2(current_state[100]),
        .O(next_state[99]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[9]_i_1 
       (.I0(current_state[10]),
        .I1(packet_trigger),
        .O(\current_state[9]_i_1_n_0 ));
  FDRE \current_state_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q[0]),
        .R(RESET));
  FDRE \current_state_reg[100] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[100]),
        .Q(current_state[100]),
        .R(RESET));
  FDRE \current_state_reg[101] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[101]),
        .Q(current_state[101]),
        .R(RESET));
  FDRE \current_state_reg[102] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[102]_i_1_n_0 ),
        .Q(current_state[102]),
        .R(RESET));
  FDRE \current_state_reg[103] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[103]),
        .Q(current_state[103]),
        .R(RESET));
  FDRE \current_state_reg[104] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[104]),
        .Q(current_state[104]),
        .R(RESET));
  FDRE \current_state_reg[105] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[105]),
        .Q(current_state[105]),
        .R(RESET));
  FDRE \current_state_reg[106] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[106]),
        .Q(current_state[106]),
        .R(RESET));
  FDRE \current_state_reg[107] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[107]),
        .Q(current_state[107]),
        .R(RESET));
  FDRE \current_state_reg[108] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[108]),
        .Q(current_state[108]),
        .R(RESET));
  FDRE \current_state_reg[109] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[109]),
        .Q(current_state[109]),
        .R(RESET));
  FDRE \current_state_reg[10] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[10]),
        .Q(current_state[10]),
        .R(RESET));
  FDRE \current_state_reg[110] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[110]_i_1_n_0 ),
        .Q(current_state[110]),
        .R(RESET));
  FDRE \current_state_reg[111] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[0]),
        .Q(current_state[111]),
        .R(RESET));
  FDRE \current_state_reg[112] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[112]),
        .Q(Q[1]),
        .R(RESET));
  FDRE \current_state_reg[113] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[113]),
        .Q(current_state[113]),
        .R(RESET));
  FDRE \current_state_reg[114] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[114]),
        .Q(current_state[114]),
        .R(RESET));
  FDRE \current_state_reg[115] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[115]),
        .Q(current_state[115]),
        .R(RESET));
  FDRE \current_state_reg[116] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[116]),
        .Q(current_state[116]),
        .R(RESET));
  FDRE \current_state_reg[117] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[117]),
        .Q(current_state[117]),
        .R(RESET));
  FDRE \current_state_reg[118] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[118]_i_1_n_0 ),
        .Q(current_state[118]),
        .R(RESET));
  FDRE \current_state_reg[119] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[1]),
        .Q(current_state[119]),
        .R(RESET));
  FDRE \current_state_reg[11] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[11]_i_1_n_0 ),
        .Q(current_state[11]),
        .R(RESET));
  FDRE \current_state_reg[120] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[120]),
        .Q(Q[2]),
        .R(RESET));
  FDRE \current_state_reg[121] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[121]),
        .Q(current_state[121]),
        .R(RESET));
  FDRE \current_state_reg[122] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[122]),
        .Q(current_state[122]),
        .R(RESET));
  FDRE \current_state_reg[123] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[123]),
        .Q(current_state[123]),
        .R(RESET));
  FDRE \current_state_reg[124] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[124]),
        .Q(current_state[124]),
        .R(RESET));
  FDRE \current_state_reg[125] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[125]),
        .Q(current_state[125]),
        .R(RESET));
  FDRE \current_state_reg[126] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[126]_i_1_n_0 ),
        .Q(current_state[126]),
        .R(RESET));
  FDRE \current_state_reg[127] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[2]),
        .Q(current_state[127]),
        .R(RESET));
  FDRE \current_state_reg[128] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[128]),
        .Q(Q[3]),
        .R(RESET));
  FDRE \current_state_reg[129] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[129]),
        .Q(current_state[129]),
        .R(RESET));
  FDRE \current_state_reg[12] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[12]),
        .Q(current_state[12]),
        .R(RESET));
  FDRE \current_state_reg[130] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[130]),
        .Q(current_state[130]),
        .R(RESET));
  FDRE \current_state_reg[131] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[131]),
        .Q(current_state[131]),
        .R(RESET));
  FDRE \current_state_reg[132] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[132]),
        .Q(current_state[132]),
        .R(RESET));
  FDRE \current_state_reg[133] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[133]),
        .Q(current_state[133]),
        .R(RESET));
  FDRE \current_state_reg[134] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[134]_i_1_n_0 ),
        .Q(current_state[134]),
        .R(RESET));
  FDRE \current_state_reg[135] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[3]),
        .Q(current_state[135]),
        .R(RESET));
  FDRE \current_state_reg[136] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[136]),
        .Q(Q[4]),
        .R(RESET));
  FDRE \current_state_reg[137] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[137]),
        .Q(current_state[137]),
        .R(RESET));
  FDRE \current_state_reg[138] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[138]),
        .Q(current_state[138]),
        .R(RESET));
  FDRE \current_state_reg[139] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[139]),
        .Q(current_state[139]),
        .R(RESET));
  FDRE \current_state_reg[13] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[13]_i_1_n_0 ),
        .Q(current_state[13]),
        .R(RESET));
  FDRE \current_state_reg[140] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[140]),
        .Q(current_state[140]),
        .R(RESET));
  FDRE \current_state_reg[141] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[141]),
        .Q(current_state[141]),
        .R(RESET));
  FDRE \current_state_reg[142] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[142]_i_1_n_0 ),
        .Q(current_state[142]),
        .R(RESET));
  FDRE \current_state_reg[143] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[4]),
        .Q(current_state[143]),
        .R(RESET));
  FDRE \current_state_reg[144] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[144]),
        .Q(Q[5]),
        .R(RESET));
  FDRE \current_state_reg[145] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[145]),
        .Q(current_state[145]),
        .R(RESET));
  FDRE \current_state_reg[146] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[146]),
        .Q(current_state[146]),
        .R(RESET));
  FDRE \current_state_reg[147] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[147]),
        .Q(current_state[147]),
        .R(RESET));
  FDRE \current_state_reg[148] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[148]),
        .Q(current_state[148]),
        .R(RESET));
  FDRE \current_state_reg[149] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[149]),
        .Q(current_state[149]),
        .R(RESET));
  FDRE \current_state_reg[14] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[14]),
        .Q(current_state[14]),
        .R(RESET));
  FDRE \current_state_reg[150] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[150]_i_1_n_0 ),
        .Q(current_state[150]),
        .R(RESET));
  FDRE \current_state_reg[151] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[5]),
        .Q(current_state[151]),
        .R(RESET));
  FDRE \current_state_reg[152] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[152]),
        .Q(Q[6]),
        .R(RESET));
  FDRE \current_state_reg[153] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[153]),
        .Q(current_state[153]),
        .R(RESET));
  FDRE \current_state_reg[154] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[154]),
        .Q(current_state[154]),
        .R(RESET));
  FDRE \current_state_reg[155] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[155]),
        .Q(current_state[155]),
        .R(RESET));
  FDRE \current_state_reg[156] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[156]),
        .Q(current_state[156]),
        .R(RESET));
  FDRE \current_state_reg[157] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[157]),
        .Q(current_state[157]),
        .R(RESET));
  FDRE \current_state_reg[158] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[158]_i_1_n_0 ),
        .Q(current_state[158]),
        .R(RESET));
  FDRE \current_state_reg[159] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[6]),
        .Q(current_state[159]),
        .R(RESET));
  FDRE \current_state_reg[15] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[15]_i_1_n_0 ),
        .Q(current_state[15]),
        .R(RESET));
  FDRE \current_state_reg[160] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[160]),
        .Q(Q[7]),
        .R(RESET));
  FDRE \current_state_reg[161] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[161]),
        .Q(current_state[161]),
        .R(RESET));
  FDRE \current_state_reg[162] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[162]),
        .Q(current_state[162]),
        .R(RESET));
  FDRE \current_state_reg[163] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[163]),
        .Q(current_state[163]),
        .R(RESET));
  FDRE \current_state_reg[164] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[164]),
        .Q(current_state[164]),
        .R(RESET));
  FDRE \current_state_reg[165] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[165]),
        .Q(current_state[165]),
        .R(RESET));
  FDRE \current_state_reg[166] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[166]_i_1_n_0 ),
        .Q(current_state[166]),
        .R(RESET));
  FDRE \current_state_reg[167] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[7]),
        .Q(current_state[167]),
        .R(RESET));
  FDRE \current_state_reg[168] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[168]),
        .Q(Q[8]),
        .R(RESET));
  FDRE \current_state_reg[169] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[169]),
        .Q(current_state[169]),
        .R(RESET));
  FDRE \current_state_reg[16] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[16]),
        .Q(current_state[16]),
        .R(RESET));
  FDRE \current_state_reg[170] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[170]),
        .Q(current_state[170]),
        .R(RESET));
  FDRE \current_state_reg[171] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[171]),
        .Q(current_state[171]),
        .R(RESET));
  FDRE \current_state_reg[172] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[172]),
        .Q(current_state[172]),
        .R(RESET));
  FDRE \current_state_reg[173] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[173]),
        .Q(current_state[173]),
        .R(RESET));
  FDRE \current_state_reg[174] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[174]_i_1_n_0 ),
        .Q(current_state[174]),
        .R(RESET));
  FDRE \current_state_reg[175] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[8]),
        .Q(current_state[175]),
        .R(RESET));
  FDRE \current_state_reg[176] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[176]),
        .Q(Q[9]),
        .R(RESET));
  FDRE \current_state_reg[177] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[177]),
        .Q(current_state[177]),
        .R(RESET));
  FDRE \current_state_reg[178] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[178]),
        .Q(current_state[178]),
        .R(RESET));
  FDRE \current_state_reg[179] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[179]),
        .Q(current_state[179]),
        .R(RESET));
  FDRE \current_state_reg[17] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[17]),
        .Q(current_state[17]),
        .R(RESET));
  FDRE \current_state_reg[180] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[180]),
        .Q(current_state[180]),
        .R(RESET));
  FDRE \current_state_reg[181] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[181]),
        .Q(current_state[181]),
        .R(RESET));
  FDRE \current_state_reg[182] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[182]_i_1_n_0 ),
        .Q(current_state[182]),
        .R(RESET));
  FDRE \current_state_reg[183] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[9]),
        .Q(current_state[183]),
        .R(RESET));
  FDRE \current_state_reg[184] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[184]),
        .Q(Q[10]),
        .R(RESET));
  FDRE \current_state_reg[185] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[185]),
        .Q(current_state[185]),
        .R(RESET));
  FDRE \current_state_reg[186] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[186]),
        .Q(current_state[186]),
        .R(RESET));
  FDRE \current_state_reg[187] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[187]),
        .Q(current_state[187]),
        .R(RESET));
  FDRE \current_state_reg[188] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[188]),
        .Q(current_state[188]),
        .R(RESET));
  FDRE \current_state_reg[189] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[189]),
        .Q(current_state[189]),
        .R(RESET));
  FDRE \current_state_reg[18] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[18]),
        .Q(current_state[18]),
        .R(RESET));
  FDRE \current_state_reg[190] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[190]_i_1_n_0 ),
        .Q(current_state[190]),
        .R(RESET));
  FDRE \current_state_reg[191] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[10]),
        .Q(current_state[191]),
        .R(RESET));
  FDRE \current_state_reg[192] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[192]),
        .Q(Q[11]),
        .R(RESET));
  FDRE \current_state_reg[193] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[193]),
        .Q(current_state[193]),
        .R(RESET));
  FDRE \current_state_reg[194] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[194]),
        .Q(current_state[194]),
        .R(RESET));
  FDRE \current_state_reg[195] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[195]),
        .Q(current_state[195]),
        .R(RESET));
  FDRE \current_state_reg[196] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[196]),
        .Q(current_state[196]),
        .R(RESET));
  FDRE \current_state_reg[197] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[197]),
        .Q(current_state[197]),
        .R(RESET));
  FDRE \current_state_reg[198] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[198]_i_1_n_0 ),
        .Q(current_state[198]),
        .R(RESET));
  FDRE \current_state_reg[199] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[11]),
        .Q(current_state[199]),
        .R(RESET));
  FDRE \current_state_reg[19] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[19]_i_1_n_0 ),
        .Q(current_state[19]),
        .R(RESET));
  FDRE \current_state_reg[1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(RESET));
  FDRE \current_state_reg[200] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[200]),
        .Q(Q[12]),
        .R(RESET));
  FDRE \current_state_reg[201] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[201]),
        .Q(current_state[201]),
        .R(RESET));
  FDRE \current_state_reg[202] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[202]),
        .Q(current_state[202]),
        .R(RESET));
  FDRE \current_state_reg[203] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[203]),
        .Q(current_state[203]),
        .R(RESET));
  FDRE \current_state_reg[204] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[204]),
        .Q(current_state[204]),
        .R(RESET));
  FDRE \current_state_reg[205] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[205]),
        .Q(current_state[205]),
        .R(RESET));
  FDRE \current_state_reg[206] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[206]_i_1_n_0 ),
        .Q(current_state[206]),
        .R(RESET));
  FDRE \current_state_reg[207] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[12]),
        .Q(current_state[207]),
        .R(RESET));
  FDRE \current_state_reg[208] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[208]),
        .Q(Q[13]),
        .R(RESET));
  FDRE \current_state_reg[209] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[209]),
        .Q(current_state[209]),
        .R(RESET));
  FDRE \current_state_reg[20] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[20]_i_1_n_0 ),
        .Q(current_state[20]),
        .R(RESET));
  FDRE \current_state_reg[210] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[210]),
        .Q(current_state[210]),
        .R(RESET));
  FDRE \current_state_reg[211] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[211]),
        .Q(current_state[211]),
        .R(RESET));
  FDRE \current_state_reg[212] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[212]),
        .Q(current_state[212]),
        .R(RESET));
  FDRE \current_state_reg[213] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[213]),
        .Q(current_state[213]),
        .R(RESET));
  FDRE \current_state_reg[214] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[214]_i_1_n_0 ),
        .Q(current_state[214]),
        .R(RESET));
  FDRE \current_state_reg[215] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[13]),
        .Q(current_state[215]),
        .R(RESET));
  FDRE \current_state_reg[216] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[216]),
        .Q(Q[14]),
        .R(RESET));
  FDRE \current_state_reg[217] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[217]),
        .Q(current_state[217]),
        .R(RESET));
  FDRE \current_state_reg[218] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[218]),
        .Q(current_state[218]),
        .R(RESET));
  FDRE \current_state_reg[219] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[219]),
        .Q(current_state[219]),
        .R(RESET));
  FDRE \current_state_reg[21] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[21]),
        .Q(current_state[21]),
        .R(RESET));
  FDRE \current_state_reg[220] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[220]),
        .Q(current_state[220]),
        .R(RESET));
  FDRE \current_state_reg[221] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[221]),
        .Q(current_state[221]),
        .R(RESET));
  FDRE \current_state_reg[222] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[222]_i_1_n_0 ),
        .Q(current_state[222]),
        .R(RESET));
  FDRE \current_state_reg[223] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[14]),
        .Q(current_state[223]),
        .R(RESET));
  FDRE \current_state_reg[224] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[224]),
        .Q(Q[15]),
        .R(RESET));
  FDRE \current_state_reg[225] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[225]),
        .Q(current_state[225]),
        .R(RESET));
  FDRE \current_state_reg[226] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[226]),
        .Q(current_state[226]),
        .R(RESET));
  FDRE \current_state_reg[227] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[227]),
        .Q(current_state[227]),
        .R(RESET));
  FDRE \current_state_reg[228] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[228]),
        .Q(current_state[228]),
        .R(RESET));
  FDRE \current_state_reg[229] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[229]),
        .Q(current_state[229]),
        .R(RESET));
  FDRE \current_state_reg[22] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[22]_i_1_n_0 ),
        .Q(current_state[22]),
        .R(RESET));
  FDRE \current_state_reg[230] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[230]_i_1_n_0 ),
        .Q(current_state[230]),
        .R(RESET));
  FDRE \current_state_reg[231] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[15]),
        .Q(current_state[231]),
        .R(RESET));
  FDRE \current_state_reg[232] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[232]),
        .Q(Q[16]),
        .R(RESET));
  FDRE \current_state_reg[233] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[233]),
        .Q(current_state[233]),
        .R(RESET));
  FDRE \current_state_reg[234] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[234]),
        .Q(current_state[234]),
        .R(RESET));
  FDRE \current_state_reg[235] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[235]),
        .Q(current_state[235]),
        .R(RESET));
  FDRE \current_state_reg[236] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[236]),
        .Q(current_state[236]),
        .R(RESET));
  FDRE \current_state_reg[237] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[237]),
        .Q(current_state[237]),
        .R(RESET));
  FDRE \current_state_reg[238] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[238]_i_1_n_0 ),
        .Q(current_state[238]),
        .R(RESET));
  FDRE \current_state_reg[239] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[16]),
        .Q(current_state[239]),
        .R(RESET));
  FDRE \current_state_reg[23] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[23]_i_1_n_0 ),
        .Q(current_state[23]),
        .R(RESET));
  FDRE \current_state_reg[240] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[240]),
        .Q(Q[17]),
        .R(RESET));
  FDRE \current_state_reg[241] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[241]),
        .Q(current_state[241]),
        .R(RESET));
  FDRE \current_state_reg[242] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[242]),
        .Q(current_state[242]),
        .R(RESET));
  FDRE \current_state_reg[243] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[243]),
        .Q(current_state[243]),
        .R(RESET));
  FDRE \current_state_reg[244] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[244]),
        .Q(current_state[244]),
        .R(RESET));
  FDRE \current_state_reg[245] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[245]),
        .Q(current_state[245]),
        .R(RESET));
  FDRE \current_state_reg[246] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[246]_i_1_n_0 ),
        .Q(current_state[246]),
        .R(RESET));
  FDRE \current_state_reg[247] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[17]),
        .Q(current_state[247]),
        .R(RESET));
  FDRE \current_state_reg[248] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[248]),
        .Q(Q[18]),
        .R(RESET));
  FDRE \current_state_reg[249] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[249]),
        .Q(current_state[249]),
        .R(RESET));
  FDRE \current_state_reg[24] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[24]),
        .Q(current_state[24]),
        .R(RESET));
  FDRE \current_state_reg[250] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[250]),
        .Q(current_state[250]),
        .R(RESET));
  FDRE \current_state_reg[251] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[251]),
        .Q(current_state[251]),
        .R(RESET));
  FDRE \current_state_reg[252] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[252]),
        .Q(current_state[252]),
        .R(RESET));
  FDRE \current_state_reg[253] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[253]),
        .Q(current_state[253]),
        .R(RESET));
  FDRE \current_state_reg[254] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[254]_i_1_n_0 ),
        .Q(current_state[254]),
        .R(RESET));
  FDRE \current_state_reg[255] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[18]),
        .Q(current_state[255]),
        .R(RESET));
  FDRE \current_state_reg[256] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[256]),
        .Q(Q[19]),
        .R(RESET));
  FDRE \current_state_reg[257] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[257]),
        .Q(current_state[257]),
        .R(RESET));
  FDRE \current_state_reg[258] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[258]),
        .Q(current_state[258]),
        .R(RESET));
  FDRE \current_state_reg[259] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[259]),
        .Q(current_state[259]),
        .R(RESET));
  FDRE \current_state_reg[25] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[25]),
        .Q(current_state[25]),
        .R(RESET));
  FDRE \current_state_reg[260] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[260]),
        .Q(current_state[260]),
        .R(RESET));
  FDRE \current_state_reg[261] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[261]),
        .Q(current_state[261]),
        .R(RESET));
  FDRE \current_state_reg[262] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[262]_i_1_n_0 ),
        .Q(current_state[262]),
        .R(RESET));
  FDRE \current_state_reg[263] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[19]),
        .Q(current_state[263]),
        .R(RESET));
  FDRE \current_state_reg[264] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[264]),
        .Q(Q[20]),
        .R(RESET));
  FDRE \current_state_reg[265] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[265]),
        .Q(current_state[265]),
        .R(RESET));
  FDRE \current_state_reg[266] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[266]),
        .Q(current_state[266]),
        .R(RESET));
  FDRE \current_state_reg[267] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[267]),
        .Q(current_state[267]),
        .R(RESET));
  FDRE \current_state_reg[268] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[268]),
        .Q(current_state[268]),
        .R(RESET));
  FDRE \current_state_reg[269] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[269]),
        .Q(current_state[269]),
        .R(RESET));
  FDRE \current_state_reg[26] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[26]),
        .Q(current_state[26]),
        .R(RESET));
  FDRE \current_state_reg[270] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[270]_i_1_n_0 ),
        .Q(current_state[270]),
        .R(RESET));
  FDRE \current_state_reg[271] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[20]),
        .Q(current_state[271]),
        .R(RESET));
  FDRE \current_state_reg[272] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[272]),
        .Q(Q[21]),
        .R(RESET));
  FDRE \current_state_reg[273] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[273]),
        .Q(current_state[273]),
        .R(RESET));
  FDRE \current_state_reg[274] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[274]),
        .Q(current_state[274]),
        .R(RESET));
  FDRE \current_state_reg[275] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[275]),
        .Q(current_state[275]),
        .R(RESET));
  FDRE \current_state_reg[276] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[276]),
        .Q(current_state[276]),
        .R(RESET));
  FDRE \current_state_reg[277] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[277]),
        .Q(current_state[277]),
        .R(RESET));
  FDRE \current_state_reg[278] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[278]_i_1_n_0 ),
        .Q(current_state[278]),
        .R(RESET));
  FDRE \current_state_reg[279] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[21]),
        .Q(current_state[279]),
        .R(RESET));
  FDRE \current_state_reg[27] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[27]_i_1_n_0 ),
        .Q(current_state[27]),
        .R(RESET));
  FDRE \current_state_reg[280] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[280]),
        .Q(Q[22]),
        .R(RESET));
  FDRE \current_state_reg[281] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[281]),
        .Q(current_state[281]),
        .R(RESET));
  FDRE \current_state_reg[282] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[282]),
        .Q(current_state[282]),
        .R(RESET));
  FDRE \current_state_reg[283] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[283]),
        .Q(current_state[283]),
        .R(RESET));
  FDRE \current_state_reg[284] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[284]),
        .Q(current_state[284]),
        .R(RESET));
  FDRE \current_state_reg[285] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[285]),
        .Q(current_state[285]),
        .R(RESET));
  FDRE \current_state_reg[286] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[286]_i_1_n_0 ),
        .Q(current_state[286]),
        .R(RESET));
  FDRE \current_state_reg[287] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[22]),
        .Q(current_state[287]),
        .R(RESET));
  FDRE \current_state_reg[288] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[288]),
        .Q(Q[23]),
        .R(RESET));
  FDRE \current_state_reg[289] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[289]),
        .Q(current_state[289]),
        .R(RESET));
  FDRE \current_state_reg[28] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[28]_i_1_n_0 ),
        .Q(current_state[28]),
        .R(RESET));
  FDRE \current_state_reg[290] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[290]),
        .Q(current_state[290]),
        .R(RESET));
  FDRE \current_state_reg[291] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[291]),
        .Q(current_state[291]),
        .R(RESET));
  FDRE \current_state_reg[292] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[292]),
        .Q(current_state[292]),
        .R(RESET));
  FDRE \current_state_reg[293] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[293]),
        .Q(current_state[293]),
        .R(RESET));
  FDRE \current_state_reg[294] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[294]_i_1_n_0 ),
        .Q(current_state[294]),
        .R(RESET));
  FDRE \current_state_reg[295] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[23]),
        .Q(current_state[295]),
        .R(RESET));
  FDRE \current_state_reg[296] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[296]),
        .Q(Q[24]),
        .R(RESET));
  FDRE \current_state_reg[297] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[297]),
        .Q(current_state[297]),
        .R(RESET));
  FDRE \current_state_reg[298] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[298]),
        .Q(current_state[298]),
        .R(RESET));
  FDRE \current_state_reg[299] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[299]),
        .Q(current_state[299]),
        .R(RESET));
  FDRE \current_state_reg[29] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[29]_i_1_n_0 ),
        .Q(current_state[29]),
        .R(RESET));
  FDRE \current_state_reg[2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(RESET));
  FDRE \current_state_reg[300] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[300]),
        .Q(current_state[300]),
        .R(RESET));
  FDRE \current_state_reg[301] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[301]),
        .Q(current_state[301]),
        .R(RESET));
  FDRE \current_state_reg[302] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[302]_i_1_n_0 ),
        .Q(current_state[302]),
        .R(RESET));
  FDRE \current_state_reg[303] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[24]),
        .Q(current_state[303]),
        .R(RESET));
  FDRE \current_state_reg[304] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[304]),
        .Q(Q[25]),
        .R(RESET));
  FDRE \current_state_reg[305] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[305]),
        .Q(current_state[305]),
        .R(RESET));
  FDRE \current_state_reg[306] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[306]),
        .Q(current_state[306]),
        .R(RESET));
  FDRE \current_state_reg[307] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[307]),
        .Q(current_state[307]),
        .R(RESET));
  FDRE \current_state_reg[308] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[308]),
        .Q(current_state[308]),
        .R(RESET));
  FDRE \current_state_reg[309] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[309]),
        .Q(current_state[309]),
        .R(RESET));
  FDRE \current_state_reg[30] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[30]),
        .Q(current_state[30]),
        .R(RESET));
  FDRE \current_state_reg[310] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[310]_i_1_n_0 ),
        .Q(current_state[310]),
        .R(RESET));
  FDRE \current_state_reg[311] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[25]),
        .Q(current_state[311]),
        .R(RESET));
  FDRE \current_state_reg[312] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[312]),
        .Q(Q[26]),
        .R(RESET));
  FDRE \current_state_reg[313] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[313]),
        .Q(current_state[313]),
        .R(RESET));
  FDRE \current_state_reg[314] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[314]),
        .Q(current_state[314]),
        .R(RESET));
  FDRE \current_state_reg[315] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[315]),
        .Q(current_state[315]),
        .R(RESET));
  FDRE \current_state_reg[316] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[316]),
        .Q(current_state[316]),
        .R(RESET));
  FDRE \current_state_reg[317] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[317]),
        .Q(current_state[317]),
        .R(RESET));
  FDRE \current_state_reg[318] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[318]_i_1_n_0 ),
        .Q(current_state[318]),
        .R(RESET));
  FDRE \current_state_reg[319] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[26]),
        .Q(current_state[319]),
        .R(RESET));
  FDRE \current_state_reg[31] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[31]),
        .Q(current_state[31]),
        .R(RESET));
  FDRE \current_state_reg[320] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[320]),
        .Q(Q[27]),
        .R(RESET));
  FDRE \current_state_reg[321] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[321]),
        .Q(current_state[321]),
        .R(RESET));
  FDRE \current_state_reg[322] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[322]),
        .Q(current_state[322]),
        .R(RESET));
  FDRE \current_state_reg[323] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[323]),
        .Q(current_state[323]),
        .R(RESET));
  FDRE \current_state_reg[324] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[324]),
        .Q(current_state[324]),
        .R(RESET));
  FDRE \current_state_reg[325] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[325]),
        .Q(current_state[325]),
        .R(RESET));
  FDRE \current_state_reg[326] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[326]_i_1_n_0 ),
        .Q(current_state[326]),
        .R(RESET));
  FDRE \current_state_reg[327] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[27]),
        .Q(current_state[327]),
        .R(RESET));
  FDRE \current_state_reg[328] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[328]),
        .Q(Q[28]),
        .R(RESET));
  FDRE \current_state_reg[329] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[329]),
        .Q(current_state[329]),
        .R(RESET));
  FDRE \current_state_reg[32] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[32]),
        .Q(current_state[32]),
        .R(RESET));
  FDRE \current_state_reg[330] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[330]),
        .Q(current_state[330]),
        .R(RESET));
  FDRE \current_state_reg[331] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[331]),
        .Q(current_state[331]),
        .R(RESET));
  FDRE \current_state_reg[332] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[332]),
        .Q(current_state[332]),
        .R(RESET));
  FDRE \current_state_reg[333] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[333]),
        .Q(current_state[333]),
        .R(RESET));
  FDRE \current_state_reg[334] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[334]_i_1_n_0 ),
        .Q(current_state[334]),
        .R(RESET));
  FDRE \current_state_reg[335] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[28]),
        .Q(current_state[335]),
        .R(RESET));
  FDRE \current_state_reg[336] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[336]),
        .Q(Q[29]),
        .R(RESET));
  FDRE \current_state_reg[337] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[337]),
        .Q(current_state[337]),
        .R(RESET));
  FDRE \current_state_reg[338] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[338]),
        .Q(current_state[338]),
        .R(RESET));
  FDRE \current_state_reg[339] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[339]),
        .Q(current_state[339]),
        .R(RESET));
  FDRE \current_state_reg[33] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[33]),
        .Q(current_state[33]),
        .R(RESET));
  FDRE \current_state_reg[340] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[340]),
        .Q(current_state[340]),
        .R(RESET));
  FDRE \current_state_reg[341] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[341]),
        .Q(current_state[341]),
        .R(RESET));
  FDRE \current_state_reg[342] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[342]_i_1_n_0 ),
        .Q(current_state[342]),
        .R(RESET));
  FDRE \current_state_reg[343] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[29]),
        .Q(current_state[343]),
        .R(RESET));
  FDRE \current_state_reg[344] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[344]),
        .Q(Q[30]),
        .R(RESET));
  FDRE \current_state_reg[345] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[345]),
        .Q(current_state[345]),
        .R(RESET));
  FDRE \current_state_reg[346] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[346]),
        .Q(current_state[346]),
        .R(RESET));
  FDRE \current_state_reg[347] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[347]),
        .Q(current_state[347]),
        .R(RESET));
  FDRE \current_state_reg[348] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[348]),
        .Q(current_state[348]),
        .R(RESET));
  FDRE \current_state_reg[349] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[349]),
        .Q(current_state[349]),
        .R(RESET));
  FDRE \current_state_reg[34] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[34]),
        .Q(current_state[34]),
        .R(RESET));
  FDRE \current_state_reg[350] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[350]_i_1_n_0 ),
        .Q(current_state[350]),
        .R(RESET));
  FDRE \current_state_reg[351] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[30]),
        .Q(current_state[351]),
        .R(RESET));
  FDRE \current_state_reg[352] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[352]),
        .Q(Q[31]),
        .R(RESET));
  FDRE \current_state_reg[353] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[353]),
        .Q(current_state[353]),
        .R(RESET));
  FDRE \current_state_reg[354] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[354]),
        .Q(current_state[354]),
        .R(RESET));
  FDRE \current_state_reg[355] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[355]),
        .Q(current_state[355]),
        .R(RESET));
  FDRE \current_state_reg[356] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[356]),
        .Q(current_state[356]),
        .R(RESET));
  FDRE \current_state_reg[357] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[357]),
        .Q(current_state[357]),
        .R(RESET));
  FDRE \current_state_reg[358] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[358]_i_1_n_0 ),
        .Q(current_state[358]),
        .R(RESET));
  FDRE \current_state_reg[359] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(D[31]),
        .Q(current_state[359]),
        .R(RESET));
  FDRE \current_state_reg[35] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[35]),
        .Q(current_state[35]),
        .R(RESET));
  FDRE \current_state_reg[36] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[36]),
        .Q(current_state[36]),
        .R(RESET));
  FDRE \current_state_reg[37] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[37]),
        .Q(current_state[37]),
        .R(RESET));
  FDRE \current_state_reg[38] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[38]),
        .Q(current_state[38]),
        .R(RESET));
  FDRE \current_state_reg[39] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[39]),
        .Q(current_state[39]),
        .R(RESET));
  FDRE \current_state_reg[3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[3]_i_1_n_0 ),
        .Q(current_state[3]),
        .R(RESET));
  FDRE \current_state_reg[40] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[40]),
        .Q(current_state[40]),
        .R(RESET));
  FDRE \current_state_reg[41] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[41]),
        .Q(current_state[41]),
        .R(RESET));
  FDRE \current_state_reg[42] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[42]),
        .Q(current_state[42]),
        .R(RESET));
  FDRE \current_state_reg[43] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[43]),
        .Q(current_state[43]),
        .R(RESET));
  FDRE \current_state_reg[44] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[44]),
        .Q(current_state[44]),
        .R(RESET));
  FDRE \current_state_reg[45] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[45]),
        .Q(current_state[45]),
        .R(RESET));
  FDRE \current_state_reg[46] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[46]_i_1_n_0 ),
        .Q(current_state[46]),
        .R(RESET));
  FDRE \current_state_reg[47] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[47]),
        .Q(current_state[47]),
        .R(RESET));
  FDRE \current_state_reg[48] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[48]),
        .Q(current_state[48]),
        .R(RESET));
  FDRE \current_state_reg[49] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[49]),
        .Q(current_state[49]),
        .R(RESET));
  FDRE \current_state_reg[4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[4]),
        .Q(current_state[4]),
        .R(RESET));
  FDRE \current_state_reg[50] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[50]),
        .Q(current_state[50]),
        .R(RESET));
  FDRE \current_state_reg[51] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[51]),
        .Q(current_state[51]),
        .R(RESET));
  FDRE \current_state_reg[52] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[52]),
        .Q(current_state[52]),
        .R(RESET));
  FDRE \current_state_reg[53] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[53]),
        .Q(current_state[53]),
        .R(RESET));
  FDRE \current_state_reg[54] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[54]_i_1_n_0 ),
        .Q(current_state[54]),
        .R(RESET));
  FDRE \current_state_reg[55] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[55]),
        .Q(current_state[55]),
        .R(RESET));
  FDRE \current_state_reg[56] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[56]),
        .Q(current_state[56]),
        .R(RESET));
  FDRE \current_state_reg[57] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[57]),
        .Q(current_state[57]),
        .R(RESET));
  FDRE \current_state_reg[58] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[58]),
        .Q(current_state[58]),
        .R(RESET));
  FDRE \current_state_reg[59] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[59]),
        .Q(current_state[59]),
        .R(RESET));
  FDRE \current_state_reg[5] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[5]_i_1_n_0 ),
        .Q(current_state[5]),
        .R(RESET));
  FDRE \current_state_reg[60] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[60]),
        .Q(current_state[60]),
        .R(RESET));
  FDRE \current_state_reg[61] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[61]),
        .Q(current_state[61]),
        .R(RESET));
  FDRE \current_state_reg[62] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[62]_i_1_n_0 ),
        .Q(current_state[62]),
        .R(RESET));
  FDRE \current_state_reg[63] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[63]),
        .Q(current_state[63]),
        .R(RESET));
  FDRE \current_state_reg[64] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[64]),
        .Q(current_state[64]),
        .R(RESET));
  FDRE \current_state_reg[65] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[65]),
        .Q(current_state[65]),
        .R(RESET));
  FDRE \current_state_reg[66] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[66]),
        .Q(current_state[66]),
        .R(RESET));
  FDRE \current_state_reg[67] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[67]),
        .Q(current_state[67]),
        .R(RESET));
  FDRE \current_state_reg[68] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[68]),
        .Q(current_state[68]),
        .R(RESET));
  FDRE \current_state_reg[69] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[69]),
        .Q(current_state[69]),
        .R(RESET));
  FDRE \current_state_reg[6] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[6]),
        .Q(current_state[6]),
        .R(RESET));
  FDRE \current_state_reg[70] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[70]_i_1_n_0 ),
        .Q(current_state[70]),
        .R(RESET));
  FDRE \current_state_reg[71] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[71]),
        .Q(current_state[71]),
        .R(RESET));
  FDRE \current_state_reg[72] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[72]),
        .Q(current_state[72]),
        .R(RESET));
  FDRE \current_state_reg[73] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[73]),
        .Q(current_state[73]),
        .R(RESET));
  FDRE \current_state_reg[74] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[74]),
        .Q(current_state[74]),
        .R(RESET));
  FDRE \current_state_reg[75] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[75]),
        .Q(current_state[75]),
        .R(RESET));
  FDRE \current_state_reg[76] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[76]),
        .Q(current_state[76]),
        .R(RESET));
  FDRE \current_state_reg[77] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[77]),
        .Q(current_state[77]),
        .R(RESET));
  FDRE \current_state_reg[78] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[78]_i_1_n_0 ),
        .Q(current_state[78]),
        .R(RESET));
  FDRE \current_state_reg[79] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[79]),
        .Q(current_state[79]),
        .R(RESET));
  FDRE \current_state_reg[7] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[7]_i_1_n_0 ),
        .Q(current_state[7]),
        .R(RESET));
  FDRE \current_state_reg[80] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[80]),
        .Q(current_state[80]),
        .R(RESET));
  FDRE \current_state_reg[81] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[81]),
        .Q(current_state[81]),
        .R(RESET));
  FDRE \current_state_reg[82] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[82]),
        .Q(current_state[82]),
        .R(RESET));
  FDRE \current_state_reg[83] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[83]),
        .Q(current_state[83]),
        .R(RESET));
  FDRE \current_state_reg[84] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[84]),
        .Q(current_state[84]),
        .R(RESET));
  FDRE \current_state_reg[85] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[85]),
        .Q(current_state[85]),
        .R(RESET));
  FDRE \current_state_reg[86] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[86]_i_1_n_0 ),
        .Q(current_state[86]),
        .R(RESET));
  FDRE \current_state_reg[87] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[87]),
        .Q(current_state[87]),
        .R(RESET));
  FDRE \current_state_reg[88] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[88]),
        .Q(current_state[88]),
        .R(RESET));
  FDRE \current_state_reg[89] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[89]),
        .Q(current_state[89]),
        .R(RESET));
  FDRE \current_state_reg[8] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[8]),
        .Q(current_state[8]),
        .R(RESET));
  FDRE \current_state_reg[90] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[90]),
        .Q(current_state[90]),
        .R(RESET));
  FDRE \current_state_reg[91] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[91]),
        .Q(current_state[91]),
        .R(RESET));
  FDRE \current_state_reg[92] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[92]),
        .Q(current_state[92]),
        .R(RESET));
  FDRE \current_state_reg[93] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[93]),
        .Q(current_state[93]),
        .R(RESET));
  FDRE \current_state_reg[94] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[94]_i_1_n_0 ),
        .Q(current_state[94]),
        .R(RESET));
  FDRE \current_state_reg[95] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[95]),
        .Q(current_state[95]),
        .R(RESET));
  FDRE \current_state_reg[96] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[96]),
        .Q(current_state[96]),
        .R(RESET));
  FDRE \current_state_reg[97] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[97]),
        .Q(current_state[97]),
        .R(RESET));
  FDRE \current_state_reg[98] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[98]),
        .Q(current_state[98]),
        .R(RESET));
  FDRE \current_state_reg[99] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(next_state[99]),
        .Q(current_state[99]),
        .R(RESET));
  FDRE \current_state_reg[9] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_state[9]_i_1_n_0 ),
        .Q(current_state[9]),
        .R(RESET));
endmodule

(* ORIG_REF_NAME = "sync_generator" *) 
module system_teletext_controller_0_0_sync_generator
   (SR,
    packet_trigger,
    D,
    SYNC_OUT,
    Q,
    RESET,
    PACKET_DATA,
    \current_state_reg[351] ,
    CLK_IN);
  output [0:0]SR;
  output packet_trigger;
  output [31:0]D;
  output SYNC_OUT;
  input [1:0]Q;
  input RESET;
  input [0:0]PACKET_DATA;
  input [30:0]\current_state_reg[351] ;
  input CLK_IN;

  wire CLK_IN;
  wire [31:0]D;
  wire [0:0]PACKET_DATA;
  wire [1:0]Q;
  wire RESET;
  wire [0:0]SR;
  wire SYNC_OUT;
  wire SYNC_OUT_INST_0_i_10_n_0;
  wire SYNC_OUT_INST_0_i_11_n_0;
  wire SYNC_OUT_INST_0_i_12_n_0;
  wire SYNC_OUT_INST_0_i_13_n_0;
  wire SYNC_OUT_INST_0_i_14_n_0;
  wire SYNC_OUT_INST_0_i_15_n_0;
  wire SYNC_OUT_INST_0_i_16_n_0;
  wire SYNC_OUT_INST_0_i_17_n_0;
  wire SYNC_OUT_INST_0_i_18_n_0;
  wire SYNC_OUT_INST_0_i_19_n_0;
  wire SYNC_OUT_INST_0_i_1_n_0;
  wire SYNC_OUT_INST_0_i_20_n_0;
  wire SYNC_OUT_INST_0_i_21_n_0;
  wire SYNC_OUT_INST_0_i_22_n_0;
  wire SYNC_OUT_INST_0_i_23_n_0;
  wire SYNC_OUT_INST_0_i_24_n_0;
  wire SYNC_OUT_INST_0_i_25_n_0;
  wire SYNC_OUT_INST_0_i_26_n_0;
  wire SYNC_OUT_INST_0_i_27_n_0;
  wire SYNC_OUT_INST_0_i_28_n_0;
  wire SYNC_OUT_INST_0_i_29_n_0;
  wire SYNC_OUT_INST_0_i_2_n_0;
  wire SYNC_OUT_INST_0_i_30_n_0;
  wire SYNC_OUT_INST_0_i_3_n_0;
  wire SYNC_OUT_INST_0_i_4_n_0;
  wire SYNC_OUT_INST_0_i_5_n_0;
  wire SYNC_OUT_INST_0_i_6_n_0;
  wire SYNC_OUT_INST_0_i_7_n_0;
  wire SYNC_OUT_INST_0_i_8_n_0;
  wire SYNC_OUT_INST_0_i_9_n_0;
  wire \current_column[0]_i_1_n_0 ;
  wire \current_column[5]_i_1_n_0 ;
  wire \current_column[6]_i_1_n_0 ;
  wire \current_column[6]_i_2_n_0 ;
  wire \current_column[9]_i_1_n_0 ;
  wire \current_column[9]_i_3_n_0 ;
  wire [8:0]current_column_reg;
  wire [9:9]current_column_reg__0;
  wire \current_line[0]_i_1_n_0 ;
  wire \current_line[3]_i_1__0_n_0 ;
  wire \current_line[4]_i_4_n_0 ;
  wire \current_line[4]_i_5_n_0 ;
  wire \current_line[4]_i_6_n_0 ;
  wire \current_line[4]_i_7_n_0 ;
  wire \current_line[4]_i_8_n_0 ;
  wire \current_line[4]_i_9_n_0 ;
  wire \current_line[8]_i_2_n_0 ;
  wire \current_line[9]_i_1_n_0 ;
  wire \current_line[9]_i_2_n_0 ;
  wire \current_line[9]_i_4_n_0 ;
  wire \current_line[9]_i_5_n_0 ;
  wire \current_line[9]_i_6_n_0 ;
  wire \current_line[9]_i_7_n_0 ;
  wire [9:0]current_line_reg;
  wire [30:0]\current_state_reg[351] ;
  wire [9:1]p_0_in;
  wire [9:1]p_0_in__0;
  wire packet_trigger;

  LUT6 #(
    .INIT(64'hABA8FFFFABA80000)) 
    SYNC_OUT_INST_0
       (.I0(SYNC_OUT_INST_0_i_1_n_0),
        .I1(SYNC_OUT_INST_0_i_2_n_0),
        .I2(SYNC_OUT_INST_0_i_3_n_0),
        .I3(SYNC_OUT_INST_0_i_4_n_0),
        .I4(SYNC_OUT_INST_0_i_5_n_0),
        .I5(SYNC_OUT_INST_0_i_6_n_0),
        .O(SYNC_OUT));
  LUT4 #(
    .INIT(16'hFBF8)) 
    SYNC_OUT_INST_0_i_1
       (.I0(SYNC_OUT_INST_0_i_7_n_0),
        .I1(SYNC_OUT_INST_0_i_8_n_0),
        .I2(SYNC_OUT_INST_0_i_9_n_0),
        .I3(SYNC_OUT_INST_0_i_10_n_0),
        .O(SYNC_OUT_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    SYNC_OUT_INST_0_i_10
       (.I0(SYNC_OUT_INST_0_i_14_n_0),
        .I1(current_column_reg[6]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[5]),
        .I4(SYNC_OUT_INST_0_i_15_n_0),
        .I5(current_column_reg[8]),
        .O(SYNC_OUT_INST_0_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    SYNC_OUT_INST_0_i_11
       (.I0(current_line_reg[5]),
        .I1(current_line_reg[8]),
        .O(SYNC_OUT_INST_0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h28)) 
    SYNC_OUT_INST_0_i_12
       (.I0(current_line_reg[2]),
        .I1(current_line_reg[4]),
        .I2(current_line_reg[3]),
        .O(SYNC_OUT_INST_0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    SYNC_OUT_INST_0_i_13
       (.I0(current_column_reg[6]),
        .I1(current_column_reg[5]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[8]),
        .O(SYNC_OUT_INST_0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    SYNC_OUT_INST_0_i_14
       (.I0(current_column_reg[4]),
        .I1(current_column_reg[0]),
        .I2(current_column_reg[1]),
        .I3(current_column_reg[2]),
        .I4(current_column_reg[3]),
        .O(SYNC_OUT_INST_0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    SYNC_OUT_INST_0_i_15
       (.I0(current_column_reg[0]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[3]),
        .I3(current_column_reg[4]),
        .I4(current_column_reg[2]),
        .O(SYNC_OUT_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h0005030500050005)) 
    SYNC_OUT_INST_0_i_16
       (.I0(SYNC_OUT_INST_0_i_26_n_0),
        .I1(current_line_reg[8]),
        .I2(current_line_reg[7]),
        .I3(current_line_reg[9]),
        .I4(SYNC_OUT_INST_0_i_27_n_0),
        .I5(\current_line[9]_i_6_n_0 ),
        .O(SYNC_OUT_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h000000000000888A)) 
    SYNC_OUT_INST_0_i_17
       (.I0(SYNC_OUT_INST_0_i_28_n_0),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[2]),
        .I3(current_line_reg[3]),
        .I4(SYNC_OUT_INST_0_i_29_n_0),
        .I5(SYNC_OUT_INST_0_i_30_n_0),
        .O(SYNC_OUT_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFF8000000000000)) 
    SYNC_OUT_INST_0_i_18
       (.I0(current_column_reg[1]),
        .I1(current_column_reg[0]),
        .I2(current_column_reg[2]),
        .I3(current_column_reg[3]),
        .I4(current_column_reg[5]),
        .I5(current_column_reg[4]),
        .O(SYNC_OUT_INST_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h7F7F7F7FFFFF7FFF)) 
    SYNC_OUT_INST_0_i_19
       (.I0(current_line_reg[0]),
        .I1(current_line_reg[1]),
        .I2(current_line_reg[2]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[6]),
        .I5(current_line_reg[3]),
        .O(SYNC_OUT_INST_0_i_19_n_0));
  LUT6 #(
    .INIT(64'hDFDFDFFFBFFEFF7F)) 
    SYNC_OUT_INST_0_i_2
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[6]),
        .I2(current_line_reg[5]),
        .I3(current_line_reg[3]),
        .I4(current_line_reg[2]),
        .I5(current_line_reg[8]),
        .O(SYNC_OUT_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    SYNC_OUT_INST_0_i_20
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[3]),
        .O(SYNC_OUT_INST_0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    SYNC_OUT_INST_0_i_21
       (.I0(current_line_reg[0]),
        .I1(current_line_reg[1]),
        .I2(current_line_reg[2]),
        .I3(current_line_reg[3]),
        .I4(current_line_reg[5]),
        .O(SYNC_OUT_INST_0_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    SYNC_OUT_INST_0_i_22
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[0]),
        .I2(current_line_reg[2]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[6]),
        .O(SYNC_OUT_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0D0DFF01)) 
    SYNC_OUT_INST_0_i_23
       (.I0(current_line_reg[6]),
        .I1(current_line_reg[2]),
        .I2(current_line_reg[3]),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[4]),
        .I5(current_line_reg[1]),
        .O(SYNC_OUT_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'hFBFBFFFFFFFFBFFE)) 
    SYNC_OUT_INST_0_i_24
       (.I0(current_line_reg[7]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[8]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[9]),
        .I5(current_line_reg[6]),
        .O(SYNC_OUT_INST_0_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    SYNC_OUT_INST_0_i_25
       (.I0(current_column_reg[3]),
        .I1(current_column_reg[2]),
        .I2(current_column_reg[0]),
        .I3(current_column_reg[1]),
        .O(SYNC_OUT_INST_0_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFE)) 
    SYNC_OUT_INST_0_i_26
       (.I0(current_line_reg[8]),
        .I1(current_line_reg[6]),
        .I2(current_line_reg[4]),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[3]),
        .O(SYNC_OUT_INST_0_i_26_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SYNC_OUT_INST_0_i_27
       (.I0(current_line_reg[2]),
        .I1(current_line_reg[3]),
        .O(SYNC_OUT_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'hAAAABABBAAAAAABB)) 
    SYNC_OUT_INST_0_i_28
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[9]),
        .I2(current_line_reg[8]),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[6]),
        .I5(current_line_reg[4]),
        .O(SYNC_OUT_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'hEEFFFFFF0E0E0E0E)) 
    SYNC_OUT_INST_0_i_29
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[8]),
        .I2(current_line_reg[5]),
        .I3(current_line_reg[6]),
        .I4(current_line_reg[9]),
        .I5(current_line_reg[3]),
        .O(SYNC_OUT_INST_0_i_29_n_0));
  LUT6 #(
    .INIT(64'hDFFDFFFFFFFFCFFC)) 
    SYNC_OUT_INST_0_i_3
       (.I0(current_line_reg[0]),
        .I1(current_line_reg[7]),
        .I2(SYNC_OUT_INST_0_i_11_n_0),
        .I3(current_line_reg[9]),
        .I4(current_line_reg[1]),
        .I5(SYNC_OUT_INST_0_i_12_n_0),
        .O(SYNC_OUT_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hDDFDFDFD)) 
    SYNC_OUT_INST_0_i_30
       (.I0(current_line_reg[0]),
        .I1(current_line_reg[7]),
        .I2(current_line_reg[5]),
        .I3(current_line_reg[1]),
        .I4(current_line_reg[2]),
        .O(SYNC_OUT_INST_0_i_30_n_0));
  LUT6 #(
    .INIT(64'hB8FCB8B8B8FFB8B8)) 
    SYNC_OUT_INST_0_i_4
       (.I0(SYNC_OUT_INST_0_i_7_n_0),
        .I1(SYNC_OUT_INST_0_i_8_n_0),
        .I2(SYNC_OUT_INST_0_i_10_n_0),
        .I3(SYNC_OUT_INST_0_i_13_n_0),
        .I4(SYNC_OUT_INST_0_i_14_n_0),
        .I5(SYNC_OUT_INST_0_i_15_n_0),
        .O(SYNC_OUT_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0DFE0000)) 
    SYNC_OUT_INST_0_i_5
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[3]),
        .I2(current_line_reg[2]),
        .I3(current_line_reg[1]),
        .I4(SYNC_OUT_INST_0_i_16_n_0),
        .I5(SYNC_OUT_INST_0_i_17_n_0),
        .O(SYNC_OUT_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0155555555555554)) 
    SYNC_OUT_INST_0_i_6
       (.I0(SYNC_OUT_INST_0_i_13_n_0),
        .I1(current_column_reg[0]),
        .I2(current_column_reg[1]),
        .I3(current_column_reg[4]),
        .I4(current_column_reg[2]),
        .I5(current_column_reg[3]),
        .O(SYNC_OUT_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h000FFFFF20200000)) 
    SYNC_OUT_INST_0_i_7
       (.I0(current_column_reg[5]),
        .I1(SYNC_OUT_INST_0_i_15_n_0),
        .I2(current_column_reg[6]),
        .I3(SYNC_OUT_INST_0_i_18_n_0),
        .I4(current_column_reg[7]),
        .I5(current_column_reg[8]),
        .O(SYNC_OUT_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B0B0B00)) 
    SYNC_OUT_INST_0_i_8
       (.I0(SYNC_OUT_INST_0_i_19_n_0),
        .I1(SYNC_OUT_INST_0_i_20_n_0),
        .I2(SYNC_OUT_INST_0_i_21_n_0),
        .I3(SYNC_OUT_INST_0_i_22_n_0),
        .I4(SYNC_OUT_INST_0_i_23_n_0),
        .I5(SYNC_OUT_INST_0_i_24_n_0),
        .O(SYNC_OUT_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h1515155515551555)) 
    SYNC_OUT_INST_0_i_9
       (.I0(current_column_reg[8]),
        .I1(current_column_reg[6]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[5]),
        .I4(current_column_reg[4]),
        .I5(SYNC_OUT_INST_0_i_25_n_0),
        .O(SYNC_OUT_INST_0_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \current_column[0]_i_1 
       (.I0(current_column_reg[0]),
        .O(\current_column[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_column[1]_i_1 
       (.I0(current_column_reg[1]),
        .I1(current_column_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \current_column[2]_i_1 
       (.I0(current_column_reg[2]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \current_column[3]_i_1 
       (.I0(current_column_reg[0]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[2]),
        .I3(current_column_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \current_column[4]_i_1 
       (.I0(current_column_reg[4]),
        .I1(current_column_reg[0]),
        .I2(current_column_reg[1]),
        .I3(current_column_reg[2]),
        .I4(current_column_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \current_column[5]_i_1 
       (.I0(current_column_reg[5]),
        .I1(current_column_reg[3]),
        .I2(current_column_reg[2]),
        .I3(current_column_reg[4]),
        .I4(current_column_reg[1]),
        .I5(current_column_reg[0]),
        .O(\current_column[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \current_column[6]_i_1 
       (.I0(current_column_reg[6]),
        .I1(current_column_reg[5]),
        .I2(\current_column[6]_i_2_n_0 ),
        .I3(current_column_reg[4]),
        .I4(current_column_reg[2]),
        .I5(current_column_reg[3]),
        .O(\current_column[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_column[6]_i_2 
       (.I0(current_column_reg[1]),
        .I1(current_column_reg[0]),
        .O(\current_column[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \current_column[7]_i_1 
       (.I0(current_column_reg[7]),
        .I1(\current_column[9]_i_3_n_0 ),
        .I2(current_column_reg[5]),
        .I3(current_column_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \current_column[8]_i_1 
       (.I0(current_column_reg[8]),
        .I1(\current_column[9]_i_3_n_0 ),
        .I2(current_column_reg[5]),
        .I3(current_column_reg[7]),
        .I4(current_column_reg[6]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \current_column[9]_i_1 
       (.I0(RESET),
        .I1(current_column_reg[8]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[6]),
        .I4(current_column_reg__0),
        .O(\current_column[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \current_column[9]_i_2 
       (.I0(current_column_reg[8]),
        .I1(current_column_reg[6]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[5]),
        .I4(\current_column[9]_i_3_n_0 ),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \current_column[9]_i_3 
       (.I0(current_column_reg[0]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[4]),
        .I3(current_column_reg[2]),
        .I4(current_column_reg[3]),
        .O(\current_column[9]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_column_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_column[0]_i_1_n_0 ),
        .Q(current_column_reg[0]),
        .S(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(current_column_reg[1]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(current_column_reg[2]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(current_column_reg[3]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(current_column_reg[4]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[5] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_column[5]_i_1_n_0 ),
        .Q(current_column_reg[5]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[6] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\current_column[6]_i_1_n_0 ),
        .Q(current_column_reg[6]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[7] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(current_column_reg[7]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[8] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(current_column_reg[8]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[9] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(current_column_reg__0),
        .R(\current_column[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_line[0]_i_1 
       (.I0(current_line_reg[0]),
        .O(\current_line[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_line[1]_i_1 
       (.I0(current_line_reg[1]),
        .I1(current_line_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \current_line[2]_i_1 
       (.I0(current_line_reg[2]),
        .I1(current_line_reg[0]),
        .I2(current_line_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \current_line[3]_i_1__0 
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[0]),
        .I2(current_line_reg[1]),
        .I3(current_line_reg[2]),
        .O(\current_line[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \current_line[4]_i_1 
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[2]),
        .I2(current_line_reg[1]),
        .I3(current_line_reg[0]),
        .I4(current_line_reg[3]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \current_line[4]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(packet_trigger),
        .I3(RESET),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000000105555)) 
    \current_line[4]_i_2 
       (.I0(\current_line[4]_i_4_n_0 ),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[8]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[6]),
        .I5(\current_line[4]_i_5_n_0 ),
        .O(packet_trigger));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFF0000)) 
    \current_line[4]_i_4 
       (.I0(current_line_reg[2]),
        .I1(current_line_reg[1]),
        .I2(current_line_reg[4]),
        .I3(current_line_reg[3]),
        .I4(current_line_reg[5]),
        .I5(\current_line[4]_i_6_n_0 ),
        .O(\current_line[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEFEE)) 
    \current_line[4]_i_5 
       (.I0(\current_line[4]_i_7_n_0 ),
        .I1(\current_line[4]_i_8_n_0 ),
        .I2(current_line_reg[5]),
        .I3(current_line_reg[8]),
        .I4(current_line_reg[6]),
        .I5(\current_line[4]_i_9_n_0 ),
        .O(\current_line[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \current_line[4]_i_6 
       (.I0(current_line_reg[9]),
        .I1(current_line_reg[7]),
        .I2(current_column_reg[3]),
        .I3(current_column_reg[4]),
        .I4(current_column_reg[6]),
        .O(\current_line[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0A5A5A5)) 
    \current_line[4]_i_7 
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[0]),
        .I2(current_line_reg[4]),
        .I3(current_line_reg[2]),
        .I4(current_line_reg[1]),
        .I5(current_line_reg[8]),
        .O(\current_line[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_line[4]_i_8 
       (.I0(current_column_reg[8]),
        .I1(current_column_reg[7]),
        .I2(current_column_reg[5]),
        .O(\current_line[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \current_line[4]_i_9 
       (.I0(current_column_reg[0]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[2]),
        .O(\current_line[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \current_line[5]_i_1 
       (.I0(current_line_reg[5]),
        .I1(current_line_reg[3]),
        .I2(current_line_reg[4]),
        .I3(current_line_reg[2]),
        .I4(current_line_reg[1]),
        .I5(current_line_reg[0]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \current_line[6]_i_1 
       (.I0(current_line_reg[6]),
        .I1(current_line_reg[5]),
        .I2(\current_line[9]_i_7_n_0 ),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[3]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \current_line[7]_i_1 
       (.I0(current_line_reg[7]),
        .I1(current_line_reg[6]),
        .I2(current_line_reg[5]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[3]),
        .I5(\current_line[9]_i_7_n_0 ),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \current_line[8]_i_1 
       (.I0(current_line_reg[8]),
        .I1(\current_line[8]_i_2_n_0 ),
        .I2(current_line_reg[4]),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[6]),
        .I5(current_line_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \current_line[8]_i_2 
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[0]),
        .I2(current_line_reg[1]),
        .I3(current_line_reg[2]),
        .O(\current_line[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFEAAAAAAAA)) 
    \current_line[9]_i_1 
       (.I0(RESET),
        .I1(\current_line[9]_i_4_n_0 ),
        .I2(current_line_reg[8]),
        .I3(current_line_reg[7]),
        .I4(\current_line[9]_i_5_n_0 ),
        .I5(current_line_reg[9]),
        .O(\current_line[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \current_line[9]_i_2 
       (.I0(current_column_reg[8]),
        .I1(current_column_reg[7]),
        .I2(current_column_reg[6]),
        .I3(current_column_reg__0),
        .O(\current_line[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \current_line[9]_i_3 
       (.I0(current_line_reg[9]),
        .I1(current_line_reg[7]),
        .I2(\current_line[9]_i_6_n_0 ),
        .I3(current_line_reg[3]),
        .I4(\current_line[9]_i_7_n_0 ),
        .I5(current_line_reg[8]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \current_line[9]_i_4 
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[6]),
        .I3(SYNC_OUT_INST_0_i_27_n_0),
        .I4(current_line_reg[1]),
        .I5(current_line_reg[0]),
        .O(\current_line[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \current_line[9]_i_5 
       (.I0(current_column_reg__0),
        .I1(current_column_reg[6]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[8]),
        .O(\current_line[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_line[9]_i_6 
       (.I0(current_line_reg[6]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[4]),
        .O(\current_line[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \current_line[9]_i_7 
       (.I0(current_line_reg[2]),
        .I1(current_line_reg[1]),
        .I2(current_line_reg[0]),
        .O(\current_line[9]_i_7_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_line_reg[0] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(\current_line[0]_i_1_n_0 ),
        .Q(current_line_reg[0]),
        .S(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[1] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(current_line_reg[1]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[2] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(current_line_reg[2]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[3] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(\current_line[3]_i_1__0_n_0 ),
        .Q(current_line_reg[3]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[4] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(current_line_reg[4]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[5] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(current_line_reg[5]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[6] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(current_line_reg[6]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[7] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(current_line_reg[7]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[8] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(current_line_reg[8]),
        .R(\current_line[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[9] 
       (.C(CLK_IN),
        .CE(\current_line[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(current_line_reg[9]),
        .R(\current_line[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[111]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[119]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[127]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[135]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[143]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[151]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[159]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[167]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[175]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[183]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[191]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[199]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[207]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[215]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[223]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[231]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[239]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[247]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[255]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[263]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[271]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[279]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[287]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[295]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[303]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[311]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[319]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[327]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[335]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[343]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [29]),
        .O(D[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[351]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .I2(\current_state_reg[351] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[359]_i_1 
       (.I0(PACKET_DATA),
        .I1(packet_trigger),
        .O(D[31]));
endmodule

(* ORIG_REF_NAME = "teletext_controller" *) 
module system_teletext_controller_0_0_teletext_controller
   (SYNC_OUT,
    DATA_OUT,
    RESET,
    CLK_IN);
  output SYNC_OUT;
  output DATA_OUT;
  input RESET;
  input CLK_IN;

  wire CLK_IN;
  wire DATA_OUT;
  wire RESET;
  wire SYNC_OUT;

  system_teletext_controller_0_0_teletext_generator teletext_gen
       (.CLK_IN(CLK_IN),
        .DATA_OUT(DATA_OUT),
        .RESET(RESET),
        .SYNC_OUT(SYNC_OUT));
endmodule

(* ORIG_REF_NAME = "teletext_generator" *) 
module system_teletext_controller_0_0_teletext_generator
   (SYNC_OUT,
    DATA_OUT,
    RESET,
    CLK_IN);
  output SYNC_OUT;
  output DATA_OUT;
  input RESET;
  input CLK_IN;

  wire CLK_IN;
  wire DATA_OUT;
  wire [7:7]PACKET_DATA;
  wire RESET;
  wire SYNC_OUT;
  wire [4:0]current_line;
  wire [352:112]current_state;
  wire [4:0]next_line;
  wire [359:111]next_state;
  wire packet_trigger;
  wire sync_gen_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \current_line[0]_i_1__0 
       (.I0(current_line[0]),
        .O(next_line[0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_line[1]_i_1__0 
       (.I0(current_line[0]),
        .I1(current_line[1]),
        .O(next_line[1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \current_line[2]_i_1__0 
       (.I0(current_line[1]),
        .I1(current_line[0]),
        .I2(current_line[2]),
        .O(next_line[2]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \current_line[3]_i_1 
       (.I0(current_line[2]),
        .I1(current_line[0]),
        .I2(current_line[1]),
        .I3(current_line[3]),
        .O(next_line[3]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \current_line[4]_i_3 
       (.I0(current_line[3]),
        .I1(current_line[1]),
        .I2(current_line[0]),
        .I3(current_line[2]),
        .I4(current_line[4]),
        .O(next_line[4]));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[0] 
       (.C(CLK_IN),
        .CE(packet_trigger),
        .D(next_line[0]),
        .Q(current_line[0]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[1] 
       (.C(CLK_IN),
        .CE(packet_trigger),
        .D(next_line[1]),
        .Q(current_line[1]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[2] 
       (.C(CLK_IN),
        .CE(packet_trigger),
        .D(next_line[2]),
        .Q(current_line[2]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[3] 
       (.C(CLK_IN),
        .CE(packet_trigger),
        .D(next_line[3]),
        .Q(current_line[3]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[4] 
       (.C(CLK_IN),
        .CE(packet_trigger),
        .D(next_line[4]),
        .Q(current_line[4]),
        .R(sync_gen_n_0));
  system_teletext_controller_0_0_shift_register data_out_shift
       (.CLK_IN(CLK_IN),
        .D({next_state[359],next_state[351],next_state[343],next_state[335],next_state[327],next_state[319],next_state[311],next_state[303],next_state[295],next_state[287],next_state[279],next_state[271],next_state[263],next_state[255],next_state[247],next_state[239],next_state[231],next_state[223],next_state[215],next_state[207],next_state[199],next_state[191],next_state[183],next_state[175],next_state[167],next_state[159],next_state[151],next_state[143],next_state[135],next_state[127],next_state[119],next_state[111]}),
        .PACKET_DATA(PACKET_DATA),
        .Q({current_state[352],current_state[344],current_state[336],current_state[328],current_state[320],current_state[312],current_state[304],current_state[296],current_state[288],current_state[280],current_state[272],current_state[264],current_state[256],current_state[248],current_state[240],current_state[232],current_state[224],current_state[216],current_state[208],current_state[200],current_state[192],current_state[184],current_state[176],current_state[168],current_state[160],current_state[152],current_state[144],current_state[136],current_state[128],current_state[120],current_state[112],DATA_OUT}),
        .RESET(RESET),
        .\current_state_reg[354]_0 (current_line),
        .packet_trigger(packet_trigger));
  system_teletext_controller_0_0_sync_generator sync_gen
       (.CLK_IN(CLK_IN),
        .D({next_state[359],next_state[351],next_state[343],next_state[335],next_state[327],next_state[319],next_state[311],next_state[303],next_state[295],next_state[287],next_state[279],next_state[271],next_state[263],next_state[255],next_state[247],next_state[239],next_state[231],next_state[223],next_state[215],next_state[207],next_state[199],next_state[191],next_state[183],next_state[175],next_state[167],next_state[159],next_state[151],next_state[143],next_state[135],next_state[127],next_state[119],next_state[111]}),
        .PACKET_DATA(PACKET_DATA),
        .Q(current_line[4:3]),
        .RESET(RESET),
        .SR(sync_gen_n_0),
        .SYNC_OUT(SYNC_OUT),
        .\current_state_reg[351] ({current_state[352],current_state[344],current_state[336],current_state[328],current_state[320],current_state[312],current_state[304],current_state[296],current_state[288],current_state[280],current_state[272],current_state[264],current_state[256],current_state[248],current_state[240],current_state[232],current_state[224],current_state[216],current_state[208],current_state[200],current_state[192],current_state[184],current_state[176],current_state[168],current_state[160],current_state[152],current_state[144],current_state[136],current_state[128],current_state[120],current_state[112]}),
        .packet_trigger(packet_trigger));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
