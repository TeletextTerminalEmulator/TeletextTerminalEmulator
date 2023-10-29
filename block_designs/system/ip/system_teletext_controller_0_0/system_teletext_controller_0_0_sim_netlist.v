// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct 29 23:54:03 2023
// Host        : JOROLF-LAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jorol/Documents/Uni/teletext/teletext/block_designs/system/ip/system_teletext_controller_0_0/system_teletext_controller_0_0_sim_netlist.v
// Design      : system_teletext_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_teletext_controller_0_0,teletext_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "teletext_controller,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module system_teletext_controller_0_0
   (TELETEXT_CLK,
    DATA_OUT,
    SYNC_OUT,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 TELETEXT_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME TELETEXT_CLK, FREQ_HZ 6933593, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input TELETEXT_CLK;
  output DATA_OUT;
  output SYNC_OUT;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [5:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire DATA_OUT;
  wire SYNC_OUT;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:1]\^S_AXI_BRESP ;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire TELETEXT_CLK;

  assign S_AXI_ARREADY = \<const0> ;
  assign S_AXI_BRESP[1] = \^S_AXI_BRESP [1];
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_RVALID = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_teletext_controller_0_0_teletext_controller U0
       (.DATA_OUT(DATA_OUT),
        .SYNC_OUT(SYNC_OUT),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_AWADDR(S_AXI_AWADDR[5:2]),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(\^S_AXI_BRESP ),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_WDATA({S_AXI_WDATA[24],S_AXI_WDATA[16],S_AXI_WDATA[10:0]}),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .TELETEXT_CLK(TELETEXT_CLK),
        .current_axi_awready_reg_0(S_AXI_AWREADY),
        .current_axi_dwready_reg_0(S_AXI_WREADY));
endmodule

(* ORIG_REF_NAME = "framebuffer" *) 
module system_teletext_controller_0_0_framebuffer
   (D,
    Q,
    \current_line_out_reg[8][6]_0 ,
    teletext_page_header_data,
    \current_line_out_reg[9][6]_0 ,
    \current_line_out_reg[10][6]_0 ,
    \current_line_out_reg[11][6]_0 ,
    \current_line_out_reg[12][6]_0 ,
    \current_line_out_reg[13][6]_0 ,
    \current_line_out_reg[14][6]_0 ,
    \current_line_out_reg[15][6]_0 ,
    \current_line_out_reg[16][6]_0 ,
    \current_line_out_reg[17][6]_0 ,
    \current_line_out_reg[18][6]_0 ,
    \current_line_out_reg[19][6]_0 ,
    \current_line_out_reg[20][6]_0 ,
    \current_line_out_reg[21][6]_0 ,
    \current_line_out_reg[22][6]_0 ,
    \current_line_out_reg[23][6]_0 ,
    \current_line_out_reg[24][6]_0 ,
    \current_line_out_reg[25][6]_0 ,
    \current_line_out_reg[26][6]_0 ,
    \current_line_out_reg[27][6]_0 ,
    \current_line_out_reg[28][6]_0 ,
    \current_line_out_reg[29][6]_0 ,
    \current_line_out_reg[30][6]_0 ,
    \current_line_out_reg[31][6]_0 ,
    \current_line_out_reg[32][6]_0 ,
    \current_line_out_reg[33][6]_0 ,
    \current_line_out_reg[34][6]_0 ,
    \current_line_out_reg[35][6]_0 ,
    \current_line_out_reg[36][6]_0 ,
    \current_line_out_reg[37][6]_0 ,
    \current_line_out_reg[38][6]_0 ,
    \current_line_out_reg[7][6]_0 ,
    \current_line_out_reg[6][6]_0 ,
    \current_line_out_reg[5][6]_0 ,
    \current_line_out_reg[4][6]_0 ,
    \current_line_out_reg[3][6]_0 ,
    \current_line_out_reg[2][6]_0 ,
    \current_line_out_reg[1][6]_0 ,
    \current_line_out_reg[0][6]_0 ,
    PACKET_DATA,
    TELETEXT_CLK,
    S_AXI_ACLK,
    p_0_in,
    \current_state_reg[359] ,
    \current_out_index_reg[4]_0 );
  output [0:0]D;
  output [6:0]Q;
  output [6:0]\current_line_out_reg[8][6]_0 ;
  output [30:0]teletext_page_header_data;
  output [6:0]\current_line_out_reg[9][6]_0 ;
  output [6:0]\current_line_out_reg[10][6]_0 ;
  output [6:0]\current_line_out_reg[11][6]_0 ;
  output [6:0]\current_line_out_reg[12][6]_0 ;
  output [6:0]\current_line_out_reg[13][6]_0 ;
  output [6:0]\current_line_out_reg[14][6]_0 ;
  output [6:0]\current_line_out_reg[15][6]_0 ;
  output [6:0]\current_line_out_reg[16][6]_0 ;
  output [6:0]\current_line_out_reg[17][6]_0 ;
  output [6:0]\current_line_out_reg[18][6]_0 ;
  output [6:0]\current_line_out_reg[19][6]_0 ;
  output [6:0]\current_line_out_reg[20][6]_0 ;
  output [6:0]\current_line_out_reg[21][6]_0 ;
  output [6:0]\current_line_out_reg[22][6]_0 ;
  output [6:0]\current_line_out_reg[23][6]_0 ;
  output [6:0]\current_line_out_reg[24][6]_0 ;
  output [6:0]\current_line_out_reg[25][6]_0 ;
  output [6:0]\current_line_out_reg[26][6]_0 ;
  output [6:0]\current_line_out_reg[27][6]_0 ;
  output [6:0]\current_line_out_reg[28][6]_0 ;
  output [6:0]\current_line_out_reg[29][6]_0 ;
  output [6:0]\current_line_out_reg[30][6]_0 ;
  output [6:0]\current_line_out_reg[31][6]_0 ;
  output [6:0]\current_line_out_reg[32][6]_0 ;
  output [6:0]\current_line_out_reg[33][6]_0 ;
  output [6:0]\current_line_out_reg[34][6]_0 ;
  output [6:0]\current_line_out_reg[35][6]_0 ;
  output [6:0]\current_line_out_reg[36][6]_0 ;
  output [6:0]\current_line_out_reg[37][6]_0 ;
  output [6:0]\current_line_out_reg[38][6]_0 ;
  output [6:0]\current_line_out_reg[7][6]_0 ;
  output [6:0]\current_line_out_reg[6][6]_0 ;
  output [6:0]\current_line_out_reg[5][6]_0 ;
  output [6:0]\current_line_out_reg[4][6]_0 ;
  output [6:0]\current_line_out_reg[3][6]_0 ;
  output [6:0]\current_line_out_reg[2][6]_0 ;
  output [6:0]\current_line_out_reg[1][6]_0 ;
  output [6:0]\current_line_out_reg[0][6]_0 ;
  output [7:0]PACKET_DATA;
  input TELETEXT_CLK;
  input S_AXI_ACLK;
  input p_0_in;
  input \current_state_reg[359] ;
  input [4:0]\current_out_index_reg[4]_0 ;

  wire [0:0]D;
  wire [6:0]DO;
  wire [7:0]PACKET_DATA;
  wire [6:0]Q;
  wire [10:3]RDADDR;
  wire S_AXI_ACLK;
  wire TELETEXT_CLK;
  wire [5:0]current_column;
  wire \current_column[5]_i_1_n_0 ;
  wire \current_column[5]_i_2_n_0 ;
  wire \current_line_out[11][6]_i_1_n_0 ;
  wire \current_line_out[13][6]_i_1_n_0 ;
  wire \current_line_out[19][6]_i_1_n_0 ;
  wire \current_line_out[35][6]_i_1_n_0 ;
  wire \current_line_out[3][6]_i_1_n_0 ;
  wire \current_line_out[7][6]_i_1_n_0 ;
  wire [6:0]\current_line_out_reg[0][6]_0 ;
  wire [6:0]\current_line_out_reg[10][6]_0 ;
  wire [6:0]\current_line_out_reg[11][6]_0 ;
  wire [6:0]\current_line_out_reg[12][6]_0 ;
  wire [6:0]\current_line_out_reg[13][6]_0 ;
  wire [6:0]\current_line_out_reg[14][6]_0 ;
  wire [6:0]\current_line_out_reg[15][6]_0 ;
  wire [6:0]\current_line_out_reg[16][6]_0 ;
  wire [6:0]\current_line_out_reg[17][6]_0 ;
  wire [6:0]\current_line_out_reg[18][6]_0 ;
  wire [6:0]\current_line_out_reg[19][6]_0 ;
  wire [6:0]\current_line_out_reg[1][6]_0 ;
  wire [6:0]\current_line_out_reg[20][6]_0 ;
  wire [6:0]\current_line_out_reg[21][6]_0 ;
  wire [6:0]\current_line_out_reg[22][6]_0 ;
  wire [6:0]\current_line_out_reg[23][6]_0 ;
  wire [6:0]\current_line_out_reg[24][6]_0 ;
  wire [6:0]\current_line_out_reg[25][6]_0 ;
  wire [6:0]\current_line_out_reg[26][6]_0 ;
  wire [6:0]\current_line_out_reg[27][6]_0 ;
  wire [6:0]\current_line_out_reg[28][6]_0 ;
  wire [6:0]\current_line_out_reg[29][6]_0 ;
  wire [6:0]\current_line_out_reg[2][6]_0 ;
  wire [6:0]\current_line_out_reg[30][6]_0 ;
  wire [6:0]\current_line_out_reg[31][6]_0 ;
  wire [6:0]\current_line_out_reg[32][6]_0 ;
  wire [6:0]\current_line_out_reg[33][6]_0 ;
  wire [6:0]\current_line_out_reg[34][6]_0 ;
  wire [6:0]\current_line_out_reg[35][6]_0 ;
  wire [6:0]\current_line_out_reg[36][6]_0 ;
  wire [6:0]\current_line_out_reg[37][6]_0 ;
  wire [6:0]\current_line_out_reg[38][6]_0 ;
  wire [6:0]\current_line_out_reg[3][6]_0 ;
  wire [6:0]\current_line_out_reg[4][6]_0 ;
  wire [6:0]\current_line_out_reg[5][6]_0 ;
  wire [6:0]\current_line_out_reg[6][6]_0 ;
  wire [6:0]\current_line_out_reg[7][6]_0 ;
  wire [6:0]\current_line_out_reg[8][6]_0 ;
  wire [6:0]\current_line_out_reg[9][6]_0 ;
  wire [4:0]\current_out_index_reg[4]_0 ;
  wire \current_state[111]_i_3_n_0 ;
  wire \current_state[119]_i_3_n_0 ;
  wire \current_state[127]_i_3_n_0 ;
  wire \current_state[135]_i_3_n_0 ;
  wire \current_state[143]_i_3_n_0 ;
  wire \current_state[151]_i_3_n_0 ;
  wire \current_state[159]_i_3_n_0 ;
  wire \current_state[167]_i_3_n_0 ;
  wire \current_state[175]_i_3_n_0 ;
  wire \current_state[183]_i_3_n_0 ;
  wire \current_state[191]_i_3_n_0 ;
  wire \current_state[199]_i_3_n_0 ;
  wire \current_state[207]_i_3_n_0 ;
  wire \current_state[215]_i_3_n_0 ;
  wire \current_state[223]_i_3_n_0 ;
  wire \current_state[231]_i_4_n_0 ;
  wire \current_state[239]_i_3_n_0 ;
  wire \current_state[247]_i_3_n_0 ;
  wire \current_state[255]_i_3_n_0 ;
  wire \current_state[263]_i_3_n_0 ;
  wire \current_state[271]_i_3_n_0 ;
  wire \current_state[279]_i_3_n_0 ;
  wire \current_state[287]_i_3_n_0 ;
  wire \current_state[295]_i_3_n_0 ;
  wire \current_state[303]_i_3_n_0 ;
  wire \current_state[311]_i_3_n_0 ;
  wire \current_state[319]_i_3_n_0 ;
  wire \current_state[327]_i_3_n_0 ;
  wire \current_state[335]_i_3_n_0 ;
  wire \current_state[343]_i_3_n_0 ;
  wire \current_state[351]_i_4_n_0 ;
  wire \current_state[359]_i_2_n_0 ;
  wire \current_state_reg[359] ;
  wire \next_line_out_reg_n_0_[0] ;
  wire \next_line_out_reg_n_0_[10] ;
  wire \next_line_out_reg_n_0_[12] ;
  wire \next_line_out_reg_n_0_[14] ;
  wire \next_line_out_reg_n_0_[15] ;
  wire \next_line_out_reg_n_0_[16] ;
  wire \next_line_out_reg_n_0_[17] ;
  wire \next_line_out_reg_n_0_[18] ;
  wire \next_line_out_reg_n_0_[1] ;
  wire \next_line_out_reg_n_0_[20] ;
  wire \next_line_out_reg_n_0_[21] ;
  wire \next_line_out_reg_n_0_[22] ;
  wire \next_line_out_reg_n_0_[23] ;
  wire \next_line_out_reg_n_0_[24] ;
  wire \next_line_out_reg_n_0_[25] ;
  wire \next_line_out_reg_n_0_[26] ;
  wire \next_line_out_reg_n_0_[27] ;
  wire \next_line_out_reg_n_0_[28] ;
  wire \next_line_out_reg_n_0_[29] ;
  wire \next_line_out_reg_n_0_[2] ;
  wire \next_line_out_reg_n_0_[30] ;
  wire \next_line_out_reg_n_0_[31] ;
  wire \next_line_out_reg_n_0_[32] ;
  wire \next_line_out_reg_n_0_[33] ;
  wire \next_line_out_reg_n_0_[34] ;
  wire \next_line_out_reg_n_0_[36] ;
  wire \next_line_out_reg_n_0_[37] ;
  wire \next_line_out_reg_n_0_[38] ;
  wire \next_line_out_reg_n_0_[39] ;
  wire \next_line_out_reg_n_0_[4] ;
  wire \next_line_out_reg_n_0_[5] ;
  wire \next_line_out_reg_n_0_[6] ;
  wire \next_line_out_reg_n_0_[8] ;
  wire \next_line_out_reg_n_0_[9] ;
  wire \odd_parities[0].odd_parityx/current_state[47]_i_3_n_0 ;
  wire \odd_parities[1].odd_parityx/current_state[55]_i_3_n_0 ;
  wire \odd_parities[2].odd_parityx/current_state[63]_i_3_n_0 ;
  wire \odd_parities[3].odd_parityx/current_state[71]_i_3_n_0 ;
  wire \odd_parities[4].odd_parityx/current_state[79]_i_3_n_0 ;
  wire \odd_parities[5].odd_parityx/current_state[87]_i_3_n_0 ;
  wire \odd_parities[6].odd_parityx/current_state[95]_i_3_n_0 ;
  wire \odd_parities[7].odd_parityx/current_state[103]_i_3_n_0 ;
  wire p_0_in;
  wire [2:0]plusOp;
  wire [30:0]teletext_page_header_data;

  system_teletext_controller_0_0_unimacro_BRAM_SDP_MACRO BRAM_SDP_MACRO_inst
       (.ADDRARDADDR({RDADDR,plusOp}),
        .D(DO),
        .S_AXI_ACLK(S_AXI_ACLK),
        .TELETEXT_CLK(TELETEXT_CLK),
        .p_0_in(p_0_in));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \current_column[5]_i_1 
       (.I0(RDADDR[9]),
        .I1(\current_out_index_reg[4]_0 [3]),
        .I2(\current_column[5]_i_2_n_0 ),
        .I3(\current_out_index_reg[4]_0 [4]),
        .I4(RDADDR[10]),
        .O(\current_column[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \current_column[5]_i_2 
       (.I0(RDADDR[6]),
        .I1(\current_out_index_reg[4]_0 [0]),
        .I2(\current_out_index_reg[4]_0 [1]),
        .I3(RDADDR[7]),
        .I4(\current_out_index_reg[4]_0 [2]),
        .I5(RDADDR[8]),
        .O(\current_column[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[0] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(current_column[0]),
        .R(\current_column[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[1] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(current_column[1]),
        .R(\current_column[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[2] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(current_column[2]),
        .R(\current_column[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[3] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(RDADDR[3]),
        .Q(current_column[3]),
        .R(\current_column[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[4] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(RDADDR[4]),
        .Q(current_column[4]),
        .R(\current_column[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[5] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(RDADDR[5]),
        .Q(current_column[5]),
        .R(\current_column[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \current_line_out[11][6]_i_1 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[5]),
        .I3(current_column[3]),
        .I4(current_column[1]),
        .I5(current_column[0]),
        .O(\current_line_out[11][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \current_line_out[13][6]_i_1 
       (.I0(current_column[4]),
        .I1(current_column[1]),
        .I2(current_column[5]),
        .I3(current_column[3]),
        .I4(current_column[0]),
        .I5(current_column[2]),
        .O(\current_line_out[13][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \current_line_out[19][6]_i_1 
       (.I0(current_column[5]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[4]),
        .I4(current_column[1]),
        .I5(current_column[0]),
        .O(\current_line_out[19][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \current_line_out[35][6]_i_1 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[5]),
        .I4(current_column[1]),
        .I5(current_column[0]),
        .O(\current_line_out[35][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \current_line_out[3][6]_i_1 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[1]),
        .I4(current_column[0]),
        .I5(current_column[2]),
        .O(\current_line_out[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \current_line_out[7][6]_i_1 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[2]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\current_line_out[7][6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[0][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[0] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[0][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[0][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[0] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[0][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[0][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[0] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[0][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[0][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[0] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[0][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[0][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[0] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[0][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[0][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[0] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[0][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[0][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[0] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[0][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[10][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[10] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[10][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[10][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[10] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[10][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[10][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[10] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[10][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[10][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[10] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[10][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[10][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[10] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[10][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[10][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[10] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[10][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[10][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[10] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[10][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[11][0] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[11][6]_i_1_n_0 ),
        .D(DO[0]),
        .Q(\current_line_out_reg[11][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[11][1] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[11][6]_i_1_n_0 ),
        .D(DO[1]),
        .Q(\current_line_out_reg[11][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[11][2] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[11][6]_i_1_n_0 ),
        .D(DO[2]),
        .Q(\current_line_out_reg[11][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[11][3] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[11][6]_i_1_n_0 ),
        .D(DO[3]),
        .Q(\current_line_out_reg[11][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[11][4] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[11][6]_i_1_n_0 ),
        .D(DO[4]),
        .Q(\current_line_out_reg[11][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[11][5] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[11][6]_i_1_n_0 ),
        .D(DO[5]),
        .Q(\current_line_out_reg[11][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[11][6] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[11][6]_i_1_n_0 ),
        .D(DO[6]),
        .Q(\current_line_out_reg[11][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[12][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[12] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[12][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[12][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[12] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[12][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[12][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[12] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[12][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[12][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[12] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[12][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[12][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[12] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[12][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[12][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[12] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[12][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[12][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[12] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[12][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[13][0] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[13][6]_i_1_n_0 ),
        .D(DO[0]),
        .Q(\current_line_out_reg[13][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[13][1] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[13][6]_i_1_n_0 ),
        .D(DO[1]),
        .Q(\current_line_out_reg[13][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[13][2] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[13][6]_i_1_n_0 ),
        .D(DO[2]),
        .Q(\current_line_out_reg[13][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[13][3] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[13][6]_i_1_n_0 ),
        .D(DO[3]),
        .Q(\current_line_out_reg[13][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[13][4] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[13][6]_i_1_n_0 ),
        .D(DO[4]),
        .Q(\current_line_out_reg[13][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[13][5] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[13][6]_i_1_n_0 ),
        .D(DO[5]),
        .Q(\current_line_out_reg[13][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[13][6] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[13][6]_i_1_n_0 ),
        .D(DO[6]),
        .Q(\current_line_out_reg[13][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[14][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[14] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[14][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[14][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[14] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[14][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[14][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[14] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[14][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[14][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[14] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[14][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[14][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[14] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[14][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[14][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[14] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[14][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[14][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[14] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[14][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[15][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[15] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[15][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[15][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[15] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[15][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[15][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[15] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[15][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[15][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[15] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[15][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[15][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[15] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[15][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[15][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[15] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[15][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[15][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[15] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[15][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[16][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[16] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[16][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[16][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[16] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[16][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[16][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[16] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[16][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[16][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[16] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[16][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[16][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[16] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[16][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[16][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[16] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[16][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[16][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[16] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[16][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[17][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[17] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[17][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[17][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[17] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[17][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[17][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[17] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[17][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[17][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[17] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[17][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[17][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[17] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[17][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[17][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[17] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[17][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[17][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[17] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[17][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[18][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[18] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[18][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[18][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[18] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[18][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[18][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[18] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[18][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[18][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[18] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[18][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[18][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[18] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[18][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[18][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[18] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[18][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[18][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[18] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[18][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[19][0] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[19][6]_i_1_n_0 ),
        .D(DO[0]),
        .Q(\current_line_out_reg[19][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[19][1] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[19][6]_i_1_n_0 ),
        .D(DO[1]),
        .Q(\current_line_out_reg[19][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[19][2] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[19][6]_i_1_n_0 ),
        .D(DO[2]),
        .Q(\current_line_out_reg[19][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[19][3] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[19][6]_i_1_n_0 ),
        .D(DO[3]),
        .Q(\current_line_out_reg[19][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[19][4] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[19][6]_i_1_n_0 ),
        .D(DO[4]),
        .Q(\current_line_out_reg[19][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[19][5] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[19][6]_i_1_n_0 ),
        .D(DO[5]),
        .Q(\current_line_out_reg[19][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[19][6] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[19][6]_i_1_n_0 ),
        .D(DO[6]),
        .Q(\current_line_out_reg[19][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[1][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[1] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[1][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[1][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[1] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[1][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[1][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[1] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[1][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[1][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[1] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[1][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[1][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[1] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[1][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[1][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[1] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[1][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[1][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[1] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[1][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[20][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[20] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[20][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[20][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[20] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[20][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[20][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[20] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[20][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[20][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[20] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[20][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[20][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[20] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[20][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[20][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[20] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[20][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[20][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[20] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[20][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[21][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[21] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[21][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[21][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[21] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[21][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[21][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[21] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[21][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[21][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[21] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[21][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[21][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[21] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[21][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[21][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[21] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[21][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[21][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[21] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[21][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[22][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[22] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[22][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[22][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[22] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[22][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[22][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[22] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[22][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[22][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[22] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[22][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[22][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[22] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[22][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[22][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[22] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[22][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[22][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[22] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[22][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[23][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[23] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[23][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[23][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[23] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[23][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[23][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[23] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[23][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[23][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[23] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[23][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[23][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[23] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[23][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[23][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[23] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[23][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[23][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[23] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[23][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[24][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[24] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[24][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[24][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[24] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[24][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[24][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[24] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[24][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[24][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[24] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[24][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[24][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[24] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[24][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[24][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[24] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[24][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[24][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[24] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[24][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[25][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[25] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[25][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[25][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[25] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[25][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[25][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[25] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[25][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[25][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[25] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[25][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[25][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[25] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[25][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[25][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[25] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[25][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[25][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[25] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[25][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[26][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[26] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[26][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[26][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[26] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[26][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[26][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[26] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[26][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[26][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[26] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[26][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[26][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[26] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[26][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[26][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[26] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[26][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[26][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[26] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[26][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[27][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[27] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[27][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[27][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[27] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[27][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[27][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[27] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[27][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[27][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[27] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[27][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[27][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[27] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[27][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[27][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[27] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[27][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[27][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[27] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[27][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[28][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[28] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[28][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[28][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[28] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[28][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[28][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[28] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[28][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[28][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[28] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[28][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[28][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[28] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[28][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[28][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[28] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[28][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[28][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[28] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[28][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[29][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[29] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[29][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[29][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[29] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[29][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[29][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[29] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[29][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[29][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[29] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[29][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[29][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[29] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[29][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[29][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[29] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[29][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[29][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[29] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[29][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[2][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[2] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[2][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[2][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[2] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[2][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[2][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[2] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[2][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[2][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[2] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[2][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[2][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[2] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[2][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[2][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[2] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[2][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[2][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[2] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[2][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[30][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[30] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[30][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[30][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[30] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[30][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[30][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[30] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[30][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[30][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[30] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[30][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[30][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[30] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[30][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[30][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[30] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[30][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[30][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[30] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[30][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[31][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[31] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[31][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[31][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[31] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[31][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[31][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[31] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[31][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[31][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[31] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[31][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[31][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[31] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[31][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[31][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[31] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[31][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[31][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[31] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[31][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[32][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[32] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[32][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[32][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[32] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[32][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[32][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[32] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[32][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[32][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[32] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[32][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[32][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[32] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[32][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[32][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[32] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[32][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[32][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[32] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[32][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[33][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[33] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[33][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[33][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[33] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[33][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[33][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[33] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[33][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[33][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[33] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[33][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[33][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[33] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[33][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[33][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[33] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[33][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[33][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[33] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[33][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[34][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[34] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[34][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[34][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[34] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[34][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[34][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[34] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[34][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[34][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[34] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[34][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[34][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[34] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[34][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[34][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[34] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[34][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[34][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[34] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[34][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[35][0] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[35][6]_i_1_n_0 ),
        .D(DO[0]),
        .Q(\current_line_out_reg[35][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[35][1] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[35][6]_i_1_n_0 ),
        .D(DO[1]),
        .Q(\current_line_out_reg[35][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[35][2] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[35][6]_i_1_n_0 ),
        .D(DO[2]),
        .Q(\current_line_out_reg[35][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[35][3] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[35][6]_i_1_n_0 ),
        .D(DO[3]),
        .Q(\current_line_out_reg[35][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[35][4] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[35][6]_i_1_n_0 ),
        .D(DO[4]),
        .Q(\current_line_out_reg[35][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[35][5] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[35][6]_i_1_n_0 ),
        .D(DO[5]),
        .Q(\current_line_out_reg[35][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[35][6] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[35][6]_i_1_n_0 ),
        .D(DO[6]),
        .Q(\current_line_out_reg[35][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[36][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[36] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[36][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[36][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[36] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[36][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[36][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[36] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[36][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[36][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[36] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[36][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[36][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[36] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[36][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[36][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[36] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[36][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[36][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[36] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[36][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[37][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[37] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[37][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[37][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[37] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[37][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[37][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[37] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[37][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[37][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[37] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[37][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[37][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[37] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[37][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[37][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[37] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[37][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[37][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[37] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[37][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[38][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[38] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[38][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[38][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[38] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[38][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[38][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[38] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[38][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[38][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[38] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[38][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[38][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[38] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[38][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[38][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[38] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[38][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[38][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[38] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[38][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[39][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[39] ),
        .D(DO[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[39][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[39] ),
        .D(DO[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[39][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[39] ),
        .D(DO[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[39][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[39] ),
        .D(DO[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[39][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[39] ),
        .D(DO[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[39][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[39] ),
        .D(DO[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[39][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[39] ),
        .D(DO[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[3][0] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[3][6]_i_1_n_0 ),
        .D(DO[0]),
        .Q(\current_line_out_reg[3][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[3][1] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[3][6]_i_1_n_0 ),
        .D(DO[1]),
        .Q(\current_line_out_reg[3][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[3][2] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[3][6]_i_1_n_0 ),
        .D(DO[2]),
        .Q(\current_line_out_reg[3][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[3][3] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[3][6]_i_1_n_0 ),
        .D(DO[3]),
        .Q(\current_line_out_reg[3][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[3][4] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[3][6]_i_1_n_0 ),
        .D(DO[4]),
        .Q(\current_line_out_reg[3][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[3][5] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[3][6]_i_1_n_0 ),
        .D(DO[5]),
        .Q(\current_line_out_reg[3][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[3][6] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[3][6]_i_1_n_0 ),
        .D(DO[6]),
        .Q(\current_line_out_reg[3][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[4][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[4] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[4][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[4][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[4] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[4][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[4][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[4] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[4][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[4][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[4] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[4][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[4][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[4] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[4][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[4][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[4] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[4][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[4][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[4] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[4][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[5][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[5] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[5][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[5][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[5] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[5][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[5][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[5] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[5][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[5][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[5] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[5][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[5][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[5] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[5][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[5][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[5] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[5][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[5][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[5] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[5][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[6][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[6] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[6][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[6][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[6] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[6][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[6][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[6] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[6][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[6][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[6] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[6][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[6][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[6] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[6][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[6][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[6] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[6][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[6][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[6] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[6][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[7][0] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[7][6]_i_1_n_0 ),
        .D(DO[0]),
        .Q(\current_line_out_reg[7][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[7][1] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[7][6]_i_1_n_0 ),
        .D(DO[1]),
        .Q(\current_line_out_reg[7][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[7][2] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[7][6]_i_1_n_0 ),
        .D(DO[2]),
        .Q(\current_line_out_reg[7][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[7][3] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[7][6]_i_1_n_0 ),
        .D(DO[3]),
        .Q(\current_line_out_reg[7][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[7][4] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[7][6]_i_1_n_0 ),
        .D(DO[4]),
        .Q(\current_line_out_reg[7][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[7][5] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[7][6]_i_1_n_0 ),
        .D(DO[5]),
        .Q(\current_line_out_reg[7][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[7][6] 
       (.C(TELETEXT_CLK),
        .CE(\current_line_out[7][6]_i_1_n_0 ),
        .D(DO[6]),
        .Q(\current_line_out_reg[7][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[8][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[8] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[8][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[8][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[8] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[8][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[8][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[8] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[8][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[8][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[8] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[8][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[8][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[8] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[8][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[8][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[8] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[8][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[8][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[8] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[8][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[9][0] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[9] ),
        .D(DO[0]),
        .Q(\current_line_out_reg[9][6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[9][1] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[9] ),
        .D(DO[1]),
        .Q(\current_line_out_reg[9][6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[9][2] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[9] ),
        .D(DO[2]),
        .Q(\current_line_out_reg[9][6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[9][3] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[9] ),
        .D(DO[3]),
        .Q(\current_line_out_reg[9][6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[9][4] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[9] ),
        .D(DO[4]),
        .Q(\current_line_out_reg[9][6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[9][5] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[9] ),
        .D(DO[5]),
        .Q(\current_line_out_reg[9][6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_out_reg[9][6] 
       (.C(TELETEXT_CLK),
        .CE(\next_line_out_reg_n_0_[9] ),
        .D(DO[6]),
        .Q(\current_line_out_reg[9][6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_out_index_reg[0] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(\current_out_index_reg[4]_0 [0]),
        .Q(RDADDR[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_out_index_reg[1] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(\current_out_index_reg[4]_0 [1]),
        .Q(RDADDR[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_out_index_reg[2] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(\current_out_index_reg[4]_0 [2]),
        .Q(RDADDR[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_out_index_reg[3] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(\current_out_index_reg[4]_0 [3]),
        .Q(RDADDR[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_out_index_reg[4] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(\current_out_index_reg[4]_0 [4]),
        .Q(RDADDR[10]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[111]_i_2 
       (.I0(\current_line_out_reg[8][6]_0 [2]),
        .I1(\current_line_out_reg[8][6]_0 [3]),
        .I2(\current_line_out_reg[8][6]_0 [1]),
        .I3(\current_state[111]_i_3_n_0 ),
        .O(teletext_page_header_data[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[111]_i_3 
       (.I0(\current_line_out_reg[8][6]_0 [5]),
        .I1(\current_line_out_reg[8][6]_0 [4]),
        .I2(\current_line_out_reg[8][6]_0 [0]),
        .I3(\current_line_out_reg[8][6]_0 [6]),
        .O(\current_state[111]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[119]_i_2 
       (.I0(\current_line_out_reg[9][6]_0 [2]),
        .I1(\current_line_out_reg[9][6]_0 [3]),
        .I2(\current_line_out_reg[9][6]_0 [1]),
        .I3(\current_state[119]_i_3_n_0 ),
        .O(teletext_page_header_data[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[119]_i_3 
       (.I0(\current_line_out_reg[9][6]_0 [5]),
        .I1(\current_line_out_reg[9][6]_0 [4]),
        .I2(\current_line_out_reg[9][6]_0 [0]),
        .I3(\current_line_out_reg[9][6]_0 [6]),
        .O(\current_state[119]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[127]_i_2 
       (.I0(\current_line_out_reg[10][6]_0 [2]),
        .I1(\current_line_out_reg[10][6]_0 [3]),
        .I2(\current_line_out_reg[10][6]_0 [1]),
        .I3(\current_state[127]_i_3_n_0 ),
        .O(teletext_page_header_data[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[127]_i_3 
       (.I0(\current_line_out_reg[10][6]_0 [5]),
        .I1(\current_line_out_reg[10][6]_0 [4]),
        .I2(\current_line_out_reg[10][6]_0 [0]),
        .I3(\current_line_out_reg[10][6]_0 [6]),
        .O(\current_state[127]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[135]_i_2 
       (.I0(\current_line_out_reg[11][6]_0 [2]),
        .I1(\current_line_out_reg[11][6]_0 [3]),
        .I2(\current_line_out_reg[11][6]_0 [1]),
        .I3(\current_state[135]_i_3_n_0 ),
        .O(teletext_page_header_data[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[135]_i_3 
       (.I0(\current_line_out_reg[11][6]_0 [5]),
        .I1(\current_line_out_reg[11][6]_0 [4]),
        .I2(\current_line_out_reg[11][6]_0 [0]),
        .I3(\current_line_out_reg[11][6]_0 [6]),
        .O(\current_state[135]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[143]_i_2 
       (.I0(\current_line_out_reg[12][6]_0 [2]),
        .I1(\current_line_out_reg[12][6]_0 [3]),
        .I2(\current_line_out_reg[12][6]_0 [1]),
        .I3(\current_state[143]_i_3_n_0 ),
        .O(teletext_page_header_data[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[143]_i_3 
       (.I0(\current_line_out_reg[12][6]_0 [5]),
        .I1(\current_line_out_reg[12][6]_0 [4]),
        .I2(\current_line_out_reg[12][6]_0 [0]),
        .I3(\current_line_out_reg[12][6]_0 [6]),
        .O(\current_state[143]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[151]_i_2 
       (.I0(\current_line_out_reg[13][6]_0 [2]),
        .I1(\current_line_out_reg[13][6]_0 [3]),
        .I2(\current_line_out_reg[13][6]_0 [1]),
        .I3(\current_state[151]_i_3_n_0 ),
        .O(teletext_page_header_data[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[151]_i_3 
       (.I0(\current_line_out_reg[13][6]_0 [5]),
        .I1(\current_line_out_reg[13][6]_0 [4]),
        .I2(\current_line_out_reg[13][6]_0 [0]),
        .I3(\current_line_out_reg[13][6]_0 [6]),
        .O(\current_state[151]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[159]_i_2 
       (.I0(\current_line_out_reg[14][6]_0 [2]),
        .I1(\current_line_out_reg[14][6]_0 [3]),
        .I2(\current_line_out_reg[14][6]_0 [1]),
        .I3(\current_state[159]_i_3_n_0 ),
        .O(teletext_page_header_data[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[159]_i_3 
       (.I0(\current_line_out_reg[14][6]_0 [5]),
        .I1(\current_line_out_reg[14][6]_0 [4]),
        .I2(\current_line_out_reg[14][6]_0 [0]),
        .I3(\current_line_out_reg[14][6]_0 [6]),
        .O(\current_state[159]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[167]_i_2 
       (.I0(\current_line_out_reg[15][6]_0 [2]),
        .I1(\current_line_out_reg[15][6]_0 [3]),
        .I2(\current_line_out_reg[15][6]_0 [1]),
        .I3(\current_state[167]_i_3_n_0 ),
        .O(teletext_page_header_data[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[167]_i_3 
       (.I0(\current_line_out_reg[15][6]_0 [5]),
        .I1(\current_line_out_reg[15][6]_0 [4]),
        .I2(\current_line_out_reg[15][6]_0 [0]),
        .I3(\current_line_out_reg[15][6]_0 [6]),
        .O(\current_state[167]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[175]_i_2 
       (.I0(\current_line_out_reg[16][6]_0 [2]),
        .I1(\current_line_out_reg[16][6]_0 [3]),
        .I2(\current_line_out_reg[16][6]_0 [1]),
        .I3(\current_state[175]_i_3_n_0 ),
        .O(teletext_page_header_data[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[175]_i_3 
       (.I0(\current_line_out_reg[16][6]_0 [5]),
        .I1(\current_line_out_reg[16][6]_0 [4]),
        .I2(\current_line_out_reg[16][6]_0 [0]),
        .I3(\current_line_out_reg[16][6]_0 [6]),
        .O(\current_state[175]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[183]_i_2 
       (.I0(\current_line_out_reg[17][6]_0 [2]),
        .I1(\current_line_out_reg[17][6]_0 [3]),
        .I2(\current_line_out_reg[17][6]_0 [1]),
        .I3(\current_state[183]_i_3_n_0 ),
        .O(teletext_page_header_data[9]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[183]_i_3 
       (.I0(\current_line_out_reg[17][6]_0 [5]),
        .I1(\current_line_out_reg[17][6]_0 [4]),
        .I2(\current_line_out_reg[17][6]_0 [0]),
        .I3(\current_line_out_reg[17][6]_0 [6]),
        .O(\current_state[183]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[191]_i_2 
       (.I0(\current_line_out_reg[18][6]_0 [2]),
        .I1(\current_line_out_reg[18][6]_0 [3]),
        .I2(\current_line_out_reg[18][6]_0 [1]),
        .I3(\current_state[191]_i_3_n_0 ),
        .O(teletext_page_header_data[10]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[191]_i_3 
       (.I0(\current_line_out_reg[18][6]_0 [5]),
        .I1(\current_line_out_reg[18][6]_0 [4]),
        .I2(\current_line_out_reg[18][6]_0 [0]),
        .I3(\current_line_out_reg[18][6]_0 [6]),
        .O(\current_state[191]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[199]_i_2 
       (.I0(\current_line_out_reg[19][6]_0 [2]),
        .I1(\current_line_out_reg[19][6]_0 [3]),
        .I2(\current_line_out_reg[19][6]_0 [1]),
        .I3(\current_state[199]_i_3_n_0 ),
        .O(teletext_page_header_data[11]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[199]_i_3 
       (.I0(\current_line_out_reg[19][6]_0 [5]),
        .I1(\current_line_out_reg[19][6]_0 [4]),
        .I2(\current_line_out_reg[19][6]_0 [0]),
        .I3(\current_line_out_reg[19][6]_0 [6]),
        .O(\current_state[199]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[207]_i_2 
       (.I0(\current_line_out_reg[20][6]_0 [2]),
        .I1(\current_line_out_reg[20][6]_0 [3]),
        .I2(\current_line_out_reg[20][6]_0 [1]),
        .I3(\current_state[207]_i_3_n_0 ),
        .O(teletext_page_header_data[12]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[207]_i_3 
       (.I0(\current_line_out_reg[20][6]_0 [5]),
        .I1(\current_line_out_reg[20][6]_0 [4]),
        .I2(\current_line_out_reg[20][6]_0 [0]),
        .I3(\current_line_out_reg[20][6]_0 [6]),
        .O(\current_state[207]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[215]_i_2 
       (.I0(\current_line_out_reg[21][6]_0 [2]),
        .I1(\current_line_out_reg[21][6]_0 [3]),
        .I2(\current_line_out_reg[21][6]_0 [1]),
        .I3(\current_state[215]_i_3_n_0 ),
        .O(teletext_page_header_data[13]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[215]_i_3 
       (.I0(\current_line_out_reg[21][6]_0 [5]),
        .I1(\current_line_out_reg[21][6]_0 [4]),
        .I2(\current_line_out_reg[21][6]_0 [0]),
        .I3(\current_line_out_reg[21][6]_0 [6]),
        .O(\current_state[215]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[223]_i_2 
       (.I0(\current_line_out_reg[22][6]_0 [2]),
        .I1(\current_line_out_reg[22][6]_0 [3]),
        .I2(\current_line_out_reg[22][6]_0 [1]),
        .I3(\current_state[223]_i_3_n_0 ),
        .O(teletext_page_header_data[14]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[223]_i_3 
       (.I0(\current_line_out_reg[22][6]_0 [5]),
        .I1(\current_line_out_reg[22][6]_0 [4]),
        .I2(\current_line_out_reg[22][6]_0 [0]),
        .I3(\current_line_out_reg[22][6]_0 [6]),
        .O(\current_state[223]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[231]_i_2 
       (.I0(\current_line_out_reg[23][6]_0 [2]),
        .I1(\current_line_out_reg[23][6]_0 [3]),
        .I2(\current_line_out_reg[23][6]_0 [1]),
        .I3(\current_state[231]_i_4_n_0 ),
        .O(teletext_page_header_data[15]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[231]_i_4 
       (.I0(\current_line_out_reg[23][6]_0 [5]),
        .I1(\current_line_out_reg[23][6]_0 [4]),
        .I2(\current_line_out_reg[23][6]_0 [0]),
        .I3(\current_line_out_reg[23][6]_0 [6]),
        .O(\current_state[231]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[239]_i_2 
       (.I0(\current_line_out_reg[24][6]_0 [2]),
        .I1(\current_line_out_reg[24][6]_0 [3]),
        .I2(\current_line_out_reg[24][6]_0 [1]),
        .I3(\current_state[239]_i_3_n_0 ),
        .O(teletext_page_header_data[16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[239]_i_3 
       (.I0(\current_line_out_reg[24][6]_0 [5]),
        .I1(\current_line_out_reg[24][6]_0 [4]),
        .I2(\current_line_out_reg[24][6]_0 [0]),
        .I3(\current_line_out_reg[24][6]_0 [6]),
        .O(\current_state[239]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[247]_i_2 
       (.I0(\current_line_out_reg[25][6]_0 [2]),
        .I1(\current_line_out_reg[25][6]_0 [3]),
        .I2(\current_line_out_reg[25][6]_0 [1]),
        .I3(\current_state[247]_i_3_n_0 ),
        .O(teletext_page_header_data[17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[247]_i_3 
       (.I0(\current_line_out_reg[25][6]_0 [5]),
        .I1(\current_line_out_reg[25][6]_0 [4]),
        .I2(\current_line_out_reg[25][6]_0 [0]),
        .I3(\current_line_out_reg[25][6]_0 [6]),
        .O(\current_state[247]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[255]_i_2 
       (.I0(\current_line_out_reg[26][6]_0 [2]),
        .I1(\current_line_out_reg[26][6]_0 [3]),
        .I2(\current_line_out_reg[26][6]_0 [1]),
        .I3(\current_state[255]_i_3_n_0 ),
        .O(teletext_page_header_data[18]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[255]_i_3 
       (.I0(\current_line_out_reg[26][6]_0 [5]),
        .I1(\current_line_out_reg[26][6]_0 [4]),
        .I2(\current_line_out_reg[26][6]_0 [0]),
        .I3(\current_line_out_reg[26][6]_0 [6]),
        .O(\current_state[255]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[263]_i_2 
       (.I0(\current_line_out_reg[27][6]_0 [2]),
        .I1(\current_line_out_reg[27][6]_0 [3]),
        .I2(\current_line_out_reg[27][6]_0 [1]),
        .I3(\current_state[263]_i_3_n_0 ),
        .O(teletext_page_header_data[19]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[263]_i_3 
       (.I0(\current_line_out_reg[27][6]_0 [5]),
        .I1(\current_line_out_reg[27][6]_0 [4]),
        .I2(\current_line_out_reg[27][6]_0 [0]),
        .I3(\current_line_out_reg[27][6]_0 [6]),
        .O(\current_state[263]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[271]_i_2 
       (.I0(\current_line_out_reg[28][6]_0 [2]),
        .I1(\current_line_out_reg[28][6]_0 [3]),
        .I2(\current_line_out_reg[28][6]_0 [1]),
        .I3(\current_state[271]_i_3_n_0 ),
        .O(teletext_page_header_data[20]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[271]_i_3 
       (.I0(\current_line_out_reg[28][6]_0 [5]),
        .I1(\current_line_out_reg[28][6]_0 [4]),
        .I2(\current_line_out_reg[28][6]_0 [0]),
        .I3(\current_line_out_reg[28][6]_0 [6]),
        .O(\current_state[271]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[279]_i_2 
       (.I0(\current_line_out_reg[29][6]_0 [2]),
        .I1(\current_line_out_reg[29][6]_0 [3]),
        .I2(\current_line_out_reg[29][6]_0 [1]),
        .I3(\current_state[279]_i_3_n_0 ),
        .O(teletext_page_header_data[21]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[279]_i_3 
       (.I0(\current_line_out_reg[29][6]_0 [5]),
        .I1(\current_line_out_reg[29][6]_0 [4]),
        .I2(\current_line_out_reg[29][6]_0 [0]),
        .I3(\current_line_out_reg[29][6]_0 [6]),
        .O(\current_state[279]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[287]_i_2 
       (.I0(\current_line_out_reg[30][6]_0 [2]),
        .I1(\current_line_out_reg[30][6]_0 [3]),
        .I2(\current_line_out_reg[30][6]_0 [1]),
        .I3(\current_state[287]_i_3_n_0 ),
        .O(teletext_page_header_data[22]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[287]_i_3 
       (.I0(\current_line_out_reg[30][6]_0 [5]),
        .I1(\current_line_out_reg[30][6]_0 [4]),
        .I2(\current_line_out_reg[30][6]_0 [0]),
        .I3(\current_line_out_reg[30][6]_0 [6]),
        .O(\current_state[287]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[295]_i_2 
       (.I0(\current_line_out_reg[31][6]_0 [2]),
        .I1(\current_line_out_reg[31][6]_0 [3]),
        .I2(\current_line_out_reg[31][6]_0 [1]),
        .I3(\current_state[295]_i_3_n_0 ),
        .O(teletext_page_header_data[23]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[295]_i_3 
       (.I0(\current_line_out_reg[31][6]_0 [5]),
        .I1(\current_line_out_reg[31][6]_0 [4]),
        .I2(\current_line_out_reg[31][6]_0 [0]),
        .I3(\current_line_out_reg[31][6]_0 [6]),
        .O(\current_state[295]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[303]_i_2 
       (.I0(\current_line_out_reg[32][6]_0 [2]),
        .I1(\current_line_out_reg[32][6]_0 [3]),
        .I2(\current_line_out_reg[32][6]_0 [1]),
        .I3(\current_state[303]_i_3_n_0 ),
        .O(teletext_page_header_data[24]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[303]_i_3 
       (.I0(\current_line_out_reg[32][6]_0 [5]),
        .I1(\current_line_out_reg[32][6]_0 [4]),
        .I2(\current_line_out_reg[32][6]_0 [0]),
        .I3(\current_line_out_reg[32][6]_0 [6]),
        .O(\current_state[303]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[311]_i_2 
       (.I0(\current_line_out_reg[33][6]_0 [2]),
        .I1(\current_line_out_reg[33][6]_0 [3]),
        .I2(\current_line_out_reg[33][6]_0 [1]),
        .I3(\current_state[311]_i_3_n_0 ),
        .O(teletext_page_header_data[25]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[311]_i_3 
       (.I0(\current_line_out_reg[33][6]_0 [5]),
        .I1(\current_line_out_reg[33][6]_0 [4]),
        .I2(\current_line_out_reg[33][6]_0 [0]),
        .I3(\current_line_out_reg[33][6]_0 [6]),
        .O(\current_state[311]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[319]_i_2 
       (.I0(\current_line_out_reg[34][6]_0 [2]),
        .I1(\current_line_out_reg[34][6]_0 [3]),
        .I2(\current_line_out_reg[34][6]_0 [1]),
        .I3(\current_state[319]_i_3_n_0 ),
        .O(teletext_page_header_data[26]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[319]_i_3 
       (.I0(\current_line_out_reg[34][6]_0 [5]),
        .I1(\current_line_out_reg[34][6]_0 [4]),
        .I2(\current_line_out_reg[34][6]_0 [0]),
        .I3(\current_line_out_reg[34][6]_0 [6]),
        .O(\current_state[319]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[327]_i_2 
       (.I0(\current_line_out_reg[35][6]_0 [2]),
        .I1(\current_line_out_reg[35][6]_0 [3]),
        .I2(\current_line_out_reg[35][6]_0 [1]),
        .I3(\current_state[327]_i_3_n_0 ),
        .O(teletext_page_header_data[27]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[327]_i_3 
       (.I0(\current_line_out_reg[35][6]_0 [5]),
        .I1(\current_line_out_reg[35][6]_0 [4]),
        .I2(\current_line_out_reg[35][6]_0 [0]),
        .I3(\current_line_out_reg[35][6]_0 [6]),
        .O(\current_state[327]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[335]_i_2 
       (.I0(\current_line_out_reg[36][6]_0 [2]),
        .I1(\current_line_out_reg[36][6]_0 [3]),
        .I2(\current_line_out_reg[36][6]_0 [1]),
        .I3(\current_state[335]_i_3_n_0 ),
        .O(teletext_page_header_data[28]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[335]_i_3 
       (.I0(\current_line_out_reg[36][6]_0 [5]),
        .I1(\current_line_out_reg[36][6]_0 [4]),
        .I2(\current_line_out_reg[36][6]_0 [0]),
        .I3(\current_line_out_reg[36][6]_0 [6]),
        .O(\current_state[335]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[343]_i_2 
       (.I0(\current_line_out_reg[37][6]_0 [2]),
        .I1(\current_line_out_reg[37][6]_0 [3]),
        .I2(\current_line_out_reg[37][6]_0 [1]),
        .I3(\current_state[343]_i_3_n_0 ),
        .O(teletext_page_header_data[29]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[343]_i_3 
       (.I0(\current_line_out_reg[37][6]_0 [5]),
        .I1(\current_line_out_reg[37][6]_0 [4]),
        .I2(\current_line_out_reg[37][6]_0 [0]),
        .I3(\current_line_out_reg[37][6]_0 [6]),
        .O(\current_state[343]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \current_state[351]_i_2 
       (.I0(\current_line_out_reg[38][6]_0 [2]),
        .I1(\current_line_out_reg[38][6]_0 [3]),
        .I2(\current_line_out_reg[38][6]_0 [1]),
        .I3(\current_state[351]_i_4_n_0 ),
        .O(teletext_page_header_data[30]));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[351]_i_4 
       (.I0(\current_line_out_reg[38][6]_0 [5]),
        .I1(\current_line_out_reg[38][6]_0 [4]),
        .I2(\current_line_out_reg[38][6]_0 [0]),
        .I3(\current_line_out_reg[38][6]_0 [6]),
        .O(\current_state[351]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h96690000)) 
    \current_state[359]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\current_state[359]_i_2_n_0 ),
        .I4(\current_state_reg[359] ),
        .O(D));
  LUT4 #(
    .INIT(16'h6996)) 
    \current_state[359]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[6]),
        .O(\current_state[359]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \next_line_out_reg[0] 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[0]),
        .I4(current_column[1]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[10] 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[5]),
        .I3(current_column[0]),
        .I4(current_column[1]),
        .I5(current_column[3]),
        .O(\next_line_out_reg_n_0_[10] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[12] 
       (.I0(current_column[4]),
        .I1(current_column[1]),
        .I2(current_column[5]),
        .I3(current_column[0]),
        .I4(current_column[2]),
        .I5(current_column[3]),
        .O(\next_line_out_reg_n_0_[12] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[14] 
       (.I0(current_column[4]),
        .I1(current_column[0]),
        .I2(current_column[5]),
        .I3(current_column[3]),
        .I4(current_column[1]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[14] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \next_line_out_reg[15] 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[2]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[15] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_line_out_reg[16] 
       (.I0(current_column[5]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[4]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[16] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[17] 
       (.I0(current_column[5]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[1]),
        .I4(current_column[0]),
        .I5(current_column[4]),
        .O(\next_line_out_reg_n_0_[17] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[18] 
       (.I0(current_column[5]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[0]),
        .I4(current_column[1]),
        .I5(current_column[4]),
        .O(\next_line_out_reg_n_0_[18] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_line_out_reg[1] 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[0]),
        .I4(current_column[1]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[20] 
       (.I0(current_column[5]),
        .I1(current_column[1]),
        .I2(current_column[3]),
        .I3(current_column[0]),
        .I4(current_column[2]),
        .I5(current_column[4]),
        .O(\next_line_out_reg_n_0_[20] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[21] 
       (.I0(current_column[5]),
        .I1(current_column[1]),
        .I2(current_column[3]),
        .I3(current_column[4]),
        .I4(current_column[0]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[21] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[22] 
       (.I0(current_column[5]),
        .I1(current_column[0]),
        .I2(current_column[3]),
        .I3(current_column[4]),
        .I4(current_column[1]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[22] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \next_line_out_reg[23] 
       (.I0(current_column[5]),
        .I1(current_column[4]),
        .I2(current_column[3]),
        .I3(current_column[2]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[23] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[24] 
       (.I0(current_column[5]),
        .I1(current_column[1]),
        .I2(current_column[2]),
        .I3(current_column[0]),
        .I4(current_column[3]),
        .I5(current_column[4]),
        .O(\next_line_out_reg_n_0_[24] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[25] 
       (.I0(current_column[5]),
        .I1(current_column[1]),
        .I2(current_column[2]),
        .I3(current_column[4]),
        .I4(current_column[0]),
        .I5(current_column[3]),
        .O(\next_line_out_reg_n_0_[25] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[26] 
       (.I0(current_column[5]),
        .I1(current_column[0]),
        .I2(current_column[2]),
        .I3(current_column[4]),
        .I4(current_column[1]),
        .I5(current_column[3]),
        .O(\next_line_out_reg_n_0_[26] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \next_line_out_reg[27] 
       (.I0(current_column[5]),
        .I1(current_column[4]),
        .I2(current_column[2]),
        .I3(current_column[3]),
        .I4(current_column[1]),
        .I5(current_column[0]),
        .O(\next_line_out_reg_n_0_[27] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[28] 
       (.I0(current_column[5]),
        .I1(current_column[0]),
        .I2(current_column[1]),
        .I3(current_column[4]),
        .I4(current_column[2]),
        .I5(current_column[3]),
        .O(\next_line_out_reg_n_0_[28] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \next_line_out_reg[29] 
       (.I0(current_column[5]),
        .I1(current_column[4]),
        .I2(current_column[1]),
        .I3(current_column[3]),
        .I4(current_column[0]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[29] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_line_out_reg[2] 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[1]),
        .I4(current_column[0]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \next_line_out_reg[30] 
       (.I0(current_column[5]),
        .I1(current_column[4]),
        .I2(current_column[0]),
        .I3(current_column[3]),
        .I4(current_column[1]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[30] ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \next_line_out_reg[31] 
       (.I0(current_column[5]),
        .I1(current_column[3]),
        .I2(current_column[4]),
        .I3(current_column[2]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[31] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_line_out_reg[32] 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[5]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[32] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[33] 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[1]),
        .I4(current_column[0]),
        .I5(current_column[5]),
        .O(\next_line_out_reg_n_0_[33] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[34] 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[3]),
        .I3(current_column[0]),
        .I4(current_column[1]),
        .I5(current_column[5]),
        .O(\next_line_out_reg_n_0_[34] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[36] 
       (.I0(current_column[4]),
        .I1(current_column[1]),
        .I2(current_column[3]),
        .I3(current_column[0]),
        .I4(current_column[2]),
        .I5(current_column[5]),
        .O(\next_line_out_reg_n_0_[36] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[37] 
       (.I0(current_column[4]),
        .I1(current_column[1]),
        .I2(current_column[3]),
        .I3(current_column[5]),
        .I4(current_column[0]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[37] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_line_out_reg[38] 
       (.I0(current_column[4]),
        .I1(current_column[0]),
        .I2(current_column[3]),
        .I3(current_column[5]),
        .I4(current_column[1]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[38] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \next_line_out_reg[39] 
       (.I0(current_column[4]),
        .I1(current_column[5]),
        .I2(current_column[3]),
        .I3(current_column[2]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[39] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_line_out_reg[4] 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[2]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[5] 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[1]),
        .I4(current_column[0]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[6] 
       (.I0(current_column[4]),
        .I1(current_column[3]),
        .I2(current_column[5]),
        .I3(current_column[0]),
        .I4(current_column[1]),
        .I5(current_column[2]),
        .O(\next_line_out_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_line_out_reg[8] 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[5]),
        .I3(current_column[3]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(\next_line_out_reg_n_0_[8] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \next_line_out_reg[9] 
       (.I0(current_column[4]),
        .I1(current_column[2]),
        .I2(current_column[5]),
        .I3(current_column[1]),
        .I4(current_column[0]),
        .I5(current_column[3]),
        .O(\next_line_out_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[0].odd_parityx/current_state[47]_i_2 
       (.I0(\current_line_out_reg[0][6]_0 [2]),
        .I1(\current_line_out_reg[0][6]_0 [3]),
        .I2(\current_line_out_reg[0][6]_0 [1]),
        .I3(\odd_parities[0].odd_parityx/current_state[47]_i_3_n_0 ),
        .O(PACKET_DATA[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[0].odd_parityx/current_state[47]_i_3 
       (.I0(\current_line_out_reg[0][6]_0 [5]),
        .I1(\current_line_out_reg[0][6]_0 [4]),
        .I2(\current_line_out_reg[0][6]_0 [0]),
        .I3(\current_line_out_reg[0][6]_0 [6]),
        .O(\odd_parities[0].odd_parityx/current_state[47]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[1].odd_parityx/current_state[55]_i_2 
       (.I0(\current_line_out_reg[1][6]_0 [2]),
        .I1(\current_line_out_reg[1][6]_0 [3]),
        .I2(\current_line_out_reg[1][6]_0 [1]),
        .I3(\odd_parities[1].odd_parityx/current_state[55]_i_3_n_0 ),
        .O(PACKET_DATA[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[1].odd_parityx/current_state[55]_i_3 
       (.I0(\current_line_out_reg[1][6]_0 [5]),
        .I1(\current_line_out_reg[1][6]_0 [4]),
        .I2(\current_line_out_reg[1][6]_0 [0]),
        .I3(\current_line_out_reg[1][6]_0 [6]),
        .O(\odd_parities[1].odd_parityx/current_state[55]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[2].odd_parityx/current_state[63]_i_2 
       (.I0(\current_line_out_reg[2][6]_0 [2]),
        .I1(\current_line_out_reg[2][6]_0 [3]),
        .I2(\current_line_out_reg[2][6]_0 [1]),
        .I3(\odd_parities[2].odd_parityx/current_state[63]_i_3_n_0 ),
        .O(PACKET_DATA[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[2].odd_parityx/current_state[63]_i_3 
       (.I0(\current_line_out_reg[2][6]_0 [5]),
        .I1(\current_line_out_reg[2][6]_0 [4]),
        .I2(\current_line_out_reg[2][6]_0 [0]),
        .I3(\current_line_out_reg[2][6]_0 [6]),
        .O(\odd_parities[2].odd_parityx/current_state[63]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[3].odd_parityx/current_state[71]_i_2 
       (.I0(\current_line_out_reg[3][6]_0 [2]),
        .I1(\current_line_out_reg[3][6]_0 [3]),
        .I2(\current_line_out_reg[3][6]_0 [1]),
        .I3(\odd_parities[3].odd_parityx/current_state[71]_i_3_n_0 ),
        .O(PACKET_DATA[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[3].odd_parityx/current_state[71]_i_3 
       (.I0(\current_line_out_reg[3][6]_0 [5]),
        .I1(\current_line_out_reg[3][6]_0 [4]),
        .I2(\current_line_out_reg[3][6]_0 [0]),
        .I3(\current_line_out_reg[3][6]_0 [6]),
        .O(\odd_parities[3].odd_parityx/current_state[71]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[4].odd_parityx/current_state[79]_i_2 
       (.I0(\current_line_out_reg[4][6]_0 [2]),
        .I1(\current_line_out_reg[4][6]_0 [3]),
        .I2(\current_line_out_reg[4][6]_0 [1]),
        .I3(\odd_parities[4].odd_parityx/current_state[79]_i_3_n_0 ),
        .O(PACKET_DATA[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[4].odd_parityx/current_state[79]_i_3 
       (.I0(\current_line_out_reg[4][6]_0 [5]),
        .I1(\current_line_out_reg[4][6]_0 [4]),
        .I2(\current_line_out_reg[4][6]_0 [0]),
        .I3(\current_line_out_reg[4][6]_0 [6]),
        .O(\odd_parities[4].odd_parityx/current_state[79]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[5].odd_parityx/current_state[87]_i_2 
       (.I0(\current_line_out_reg[5][6]_0 [2]),
        .I1(\current_line_out_reg[5][6]_0 [3]),
        .I2(\current_line_out_reg[5][6]_0 [1]),
        .I3(\odd_parities[5].odd_parityx/current_state[87]_i_3_n_0 ),
        .O(PACKET_DATA[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[5].odd_parityx/current_state[87]_i_3 
       (.I0(\current_line_out_reg[5][6]_0 [5]),
        .I1(\current_line_out_reg[5][6]_0 [4]),
        .I2(\current_line_out_reg[5][6]_0 [0]),
        .I3(\current_line_out_reg[5][6]_0 [6]),
        .O(\odd_parities[5].odd_parityx/current_state[87]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[6].odd_parityx/current_state[95]_i_2 
       (.I0(\current_line_out_reg[6][6]_0 [2]),
        .I1(\current_line_out_reg[6][6]_0 [3]),
        .I2(\current_line_out_reg[6][6]_0 [1]),
        .I3(\odd_parities[6].odd_parityx/current_state[95]_i_3_n_0 ),
        .O(PACKET_DATA[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[6].odd_parityx/current_state[95]_i_3 
       (.I0(\current_line_out_reg[6][6]_0 [5]),
        .I1(\current_line_out_reg[6][6]_0 [4]),
        .I2(\current_line_out_reg[6][6]_0 [0]),
        .I3(\current_line_out_reg[6][6]_0 [6]),
        .O(\odd_parities[6].odd_parityx/current_state[95]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \odd_parities[7].odd_parityx/current_state[103]_i_2 
       (.I0(\current_line_out_reg[7][6]_0 [2]),
        .I1(\current_line_out_reg[7][6]_0 [3]),
        .I2(\current_line_out_reg[7][6]_0 [1]),
        .I3(\odd_parities[7].odd_parityx/current_state[103]_i_3_n_0 ),
        .O(PACKET_DATA[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \odd_parities[7].odd_parityx/current_state[103]_i_3 
       (.I0(\current_line_out_reg[7][6]_0 [5]),
        .I1(\current_line_out_reg[7][6]_0 [4]),
        .I2(\current_line_out_reg[7][6]_0 [0]),
        .I3(\current_line_out_reg[7][6]_0 [6]),
        .O(\odd_parities[7].odd_parityx/current_state[103]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000002AAA)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_1 
       (.I0(current_column[5]),
        .I1(current_column[2]),
        .I2(current_column[0]),
        .I3(current_column[1]),
        .I4(current_column[3]),
        .I5(current_column[4]),
        .O(RDADDR[5]));
  LUT6 #(
    .INIT(64'h3FFFD55540000000)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_2 
       (.I0(current_column[5]),
        .I1(current_column[2]),
        .I2(current_column[0]),
        .I3(current_column[1]),
        .I4(current_column[3]),
        .I5(current_column[4]),
        .O(RDADDR[4]));
  LUT6 #(
    .INIT(64'h4338383838383838)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_3 
       (.I0(current_column[4]),
        .I1(current_column[5]),
        .I2(current_column[3]),
        .I3(current_column[2]),
        .I4(current_column[0]),
        .I5(current_column[1]),
        .O(RDADDR[3]));
  LUT3 #(
    .INIT(8'h78)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_4 
       (.I0(current_column[0]),
        .I1(current_column[1]),
        .I2(current_column[2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_5 
       (.I0(current_column[0]),
        .I1(current_column[1]),
        .O(plusOp[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_6 
       (.I0(current_column[0]),
        .O(plusOp[0]));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module system_teletext_controller_0_0_shift_register
   (SR,
    Q,
    \current_line_reg[2] ,
    teletext_page_header_data,
    S_AXI_ARESETN,
    D,
    \current_state_reg[23]_0 ,
    \current_state_reg[40]_0 ,
    TELETEXT_CLK,
    \CONTROL_BITS[UPDATE_INDICATOR] ,
    \CONTROL_BITS[INTERRUPTED_SEQUENCE] ,
    \CONTROL_BITS[INHIBIT_DISPLAY] ,
    \CONTROL_BITS[SUPPRESS_HEADER] ,
    \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ,
    \CONTROL_BITS[MAGAZINE_SERIAL] ,
    \current_state_reg[54]_0 );
  output [0:0]SR;
  output [335:0]Q;
  output \current_line_reg[2] ;
  output [11:0]teletext_page_header_data;
  input S_AXI_ARESETN;
  input [335:0]D;
  input \current_state_reg[23]_0 ;
  input [4:0]\current_state_reg[40]_0 ;
  input TELETEXT_CLK;
  input \CONTROL_BITS[UPDATE_INDICATOR] ;
  input \CONTROL_BITS[INTERRUPTED_SEQUENCE] ;
  input \CONTROL_BITS[INHIBIT_DISPLAY] ;
  input \CONTROL_BITS[SUPPRESS_HEADER] ;
  input [2:0]\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ;
  input \CONTROL_BITS[MAGAZINE_SERIAL] ;
  input [7:0]\current_state_reg[54]_0 ;

  wire \CONTROL_BITS[INHIBIT_DISPLAY] ;
  wire \CONTROL_BITS[INTERRUPTED_SEQUENCE] ;
  wire \CONTROL_BITS[MAGAZINE_SERIAL] ;
  wire [2:0]\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ;
  wire \CONTROL_BITS[SUPPRESS_HEADER] ;
  wire \CONTROL_BITS[UPDATE_INDICATOR] ;
  wire [335:0]D;
  wire [335:0]Q;
  wire [0:0]SR;
  wire S_AXI_ARESETN;
  wire TELETEXT_CLK;
  wire \current_line_reg[2] ;
  wire [24:1]current_state;
  wire \current_state_reg[23]_0 ;
  wire [4:0]\current_state_reg[40]_0 ;
  wire [7:0]\current_state_reg[54]_0 ;
  wire [23:0]next_state;
  wire [11:0]teletext_page_header_data;

  LUT3 #(
    .INIT(8'h69)) 
    \control_bits_1_ham/current_state[90]_i_2 
       (.I0(\CONTROL_BITS[SUPPRESS_HEADER] ),
        .I1(\CONTROL_BITS[UPDATE_INDICATOR] ),
        .I2(\CONTROL_BITS[INHIBIT_DISPLAY] ),
        .O(teletext_page_header_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \control_bits_1_ham/current_state[92]_i_2 
       (.I0(\CONTROL_BITS[INTERRUPTED_SEQUENCE] ),
        .I1(\CONTROL_BITS[SUPPRESS_HEADER] ),
        .I2(\CONTROL_BITS[UPDATE_INDICATOR] ),
        .O(teletext_page_header_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \control_bits_1_ham/current_state[94]_i_2 
       (.I0(\CONTROL_BITS[UPDATE_INDICATOR] ),
        .I1(\CONTROL_BITS[INTERRUPTED_SEQUENCE] ),
        .I2(\CONTROL_BITS[INHIBIT_DISPLAY] ),
        .O(teletext_page_header_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \control_bits_2_ham/current_state[100]_i_2 
       (.I0(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [1]),
        .I1(\CONTROL_BITS[MAGAZINE_SERIAL] ),
        .I2(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [0]),
        .O(teletext_page_header_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \control_bits_2_ham/current_state[102]_i_2 
       (.I0(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [0]),
        .I1(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [1]),
        .I2(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [2]),
        .O(teletext_page_header_data[11]));
  LUT3 #(
    .INIT(8'h69)) 
    \control_bits_2_ham/current_state[98]_i_2 
       (.I0(\CONTROL_BITS[MAGAZINE_SERIAL] ),
        .I1(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [0]),
        .I2(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [2]),
        .O(teletext_page_header_data[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \current_state[0]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[0]_i_2 
       (.I0(current_state[1]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[10]_i_1 
       (.I0(current_state[11]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[11]_i_1 
       (.I0(current_state[12]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[12]_i_1 
       (.I0(current_state[13]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[13]_i_1 
       (.I0(current_state[14]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[14]_i_1 
       (.I0(current_state[15]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[15]_i_1 
       (.I0(current_state[16]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[16]_i_1 
       (.I0(current_state[17]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[17]_i_1 
       (.I0(current_state[18]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[18]_i_1 
       (.I0(current_state[19]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[19]_i_1 
       (.I0(current_state[20]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[1]_i_1 
       (.I0(current_state[2]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[20]_i_1 
       (.I0(current_state[21]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[21]_i_1 
       (.I0(current_state[22]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[22]_i_1 
       (.I0(current_state[23]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[23]_i_1 
       (.I0(current_state[24]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[2]_i_1 
       (.I0(current_state[3]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[2]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \current_state[351]_i_3 
       (.I0(\current_state_reg[40]_0 [2]),
        .I1(\current_state_reg[40]_0 [1]),
        .I2(\current_state_reg[40]_0 [0]),
        .I3(\current_state_reg[40]_0 [4]),
        .I4(\current_state_reg[40]_0 [3]),
        .O(\current_line_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[3]_i_1 
       (.I0(current_state[4]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[4]_i_1 
       (.I0(current_state[5]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[5]_i_1 
       (.I0(current_state[6]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[6]_i_1 
       (.I0(current_state[7]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[7]_i_1 
       (.I0(current_state[8]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[8]_i_1 
       (.I0(current_state[9]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[9]_i_1 
       (.I0(current_state[10]),
        .I1(\current_state_reg[23]_0 ),
        .O(next_state[9]));
  FDRE \current_state_reg[0] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \current_state_reg[100] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[76]),
        .Q(Q[76]),
        .R(SR));
  FDRE \current_state_reg[101] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[77]),
        .Q(Q[77]),
        .R(SR));
  FDRE \current_state_reg[102] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[78]),
        .Q(Q[78]),
        .R(SR));
  FDRE \current_state_reg[103] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[79]),
        .Q(Q[79]),
        .R(SR));
  FDRE \current_state_reg[104] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[80]),
        .Q(Q[80]),
        .R(SR));
  FDRE \current_state_reg[105] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[81]),
        .Q(Q[81]),
        .R(SR));
  FDRE \current_state_reg[106] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[82]),
        .Q(Q[82]),
        .R(SR));
  FDRE \current_state_reg[107] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[83]),
        .Q(Q[83]),
        .R(SR));
  FDRE \current_state_reg[108] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[84]),
        .Q(Q[84]),
        .R(SR));
  FDRE \current_state_reg[109] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[85]),
        .Q(Q[85]),
        .R(SR));
  FDRE \current_state_reg[10] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[10]),
        .Q(current_state[10]),
        .R(SR));
  FDRE \current_state_reg[110] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[86]),
        .Q(Q[86]),
        .R(SR));
  FDRE \current_state_reg[111] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[87]),
        .Q(Q[87]),
        .R(SR));
  FDRE \current_state_reg[112] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[88]),
        .Q(Q[88]),
        .R(SR));
  FDRE \current_state_reg[113] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[89]),
        .Q(Q[89]),
        .R(SR));
  FDRE \current_state_reg[114] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[90]),
        .Q(Q[90]),
        .R(SR));
  FDRE \current_state_reg[115] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[91]),
        .Q(Q[91]),
        .R(SR));
  FDRE \current_state_reg[116] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[92]),
        .Q(Q[92]),
        .R(SR));
  FDRE \current_state_reg[117] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[93]),
        .Q(Q[93]),
        .R(SR));
  FDRE \current_state_reg[118] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[94]),
        .Q(Q[94]),
        .R(SR));
  FDRE \current_state_reg[119] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[95]),
        .Q(Q[95]),
        .R(SR));
  FDRE \current_state_reg[11] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[11]),
        .Q(current_state[11]),
        .R(SR));
  FDRE \current_state_reg[120] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[96]),
        .Q(Q[96]),
        .R(SR));
  FDRE \current_state_reg[121] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[97]),
        .Q(Q[97]),
        .R(SR));
  FDRE \current_state_reg[122] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[98]),
        .Q(Q[98]),
        .R(SR));
  FDRE \current_state_reg[123] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[99]),
        .Q(Q[99]),
        .R(SR));
  FDRE \current_state_reg[124] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[100]),
        .Q(Q[100]),
        .R(SR));
  FDRE \current_state_reg[125] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[101]),
        .Q(Q[101]),
        .R(SR));
  FDRE \current_state_reg[126] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[102]),
        .Q(Q[102]),
        .R(SR));
  FDRE \current_state_reg[127] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[103]),
        .Q(Q[103]),
        .R(SR));
  FDRE \current_state_reg[128] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[104]),
        .Q(Q[104]),
        .R(SR));
  FDRE \current_state_reg[129] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[105]),
        .Q(Q[105]),
        .R(SR));
  FDRE \current_state_reg[12] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[12]),
        .Q(current_state[12]),
        .R(SR));
  FDRE \current_state_reg[130] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[106]),
        .Q(Q[106]),
        .R(SR));
  FDRE \current_state_reg[131] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[107]),
        .Q(Q[107]),
        .R(SR));
  FDRE \current_state_reg[132] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[108]),
        .Q(Q[108]),
        .R(SR));
  FDRE \current_state_reg[133] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[109]),
        .Q(Q[109]),
        .R(SR));
  FDRE \current_state_reg[134] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[110]),
        .Q(Q[110]),
        .R(SR));
  FDRE \current_state_reg[135] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[111]),
        .Q(Q[111]),
        .R(SR));
  FDRE \current_state_reg[136] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[112]),
        .Q(Q[112]),
        .R(SR));
  FDRE \current_state_reg[137] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[113]),
        .Q(Q[113]),
        .R(SR));
  FDRE \current_state_reg[138] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[114]),
        .Q(Q[114]),
        .R(SR));
  FDRE \current_state_reg[139] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[115]),
        .Q(Q[115]),
        .R(SR));
  FDRE \current_state_reg[13] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[13]),
        .Q(current_state[13]),
        .R(SR));
  FDRE \current_state_reg[140] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[116]),
        .Q(Q[116]),
        .R(SR));
  FDRE \current_state_reg[141] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[117]),
        .Q(Q[117]),
        .R(SR));
  FDRE \current_state_reg[142] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[118]),
        .Q(Q[118]),
        .R(SR));
  FDRE \current_state_reg[143] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[119]),
        .Q(Q[119]),
        .R(SR));
  FDRE \current_state_reg[144] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[120]),
        .Q(Q[120]),
        .R(SR));
  FDRE \current_state_reg[145] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[121]),
        .Q(Q[121]),
        .R(SR));
  FDRE \current_state_reg[146] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[122]),
        .Q(Q[122]),
        .R(SR));
  FDRE \current_state_reg[147] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[123]),
        .Q(Q[123]),
        .R(SR));
  FDRE \current_state_reg[148] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[124]),
        .Q(Q[124]),
        .R(SR));
  FDRE \current_state_reg[149] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[125]),
        .Q(Q[125]),
        .R(SR));
  FDRE \current_state_reg[14] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[14]),
        .Q(current_state[14]),
        .R(SR));
  FDRE \current_state_reg[150] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[126]),
        .Q(Q[126]),
        .R(SR));
  FDRE \current_state_reg[151] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[127]),
        .Q(Q[127]),
        .R(SR));
  FDRE \current_state_reg[152] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[128]),
        .Q(Q[128]),
        .R(SR));
  FDRE \current_state_reg[153] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[129]),
        .Q(Q[129]),
        .R(SR));
  FDRE \current_state_reg[154] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[130]),
        .Q(Q[130]),
        .R(SR));
  FDRE \current_state_reg[155] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[131]),
        .Q(Q[131]),
        .R(SR));
  FDRE \current_state_reg[156] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[132]),
        .Q(Q[132]),
        .R(SR));
  FDRE \current_state_reg[157] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[133]),
        .Q(Q[133]),
        .R(SR));
  FDRE \current_state_reg[158] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[134]),
        .Q(Q[134]),
        .R(SR));
  FDRE \current_state_reg[159] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[135]),
        .Q(Q[135]),
        .R(SR));
  FDRE \current_state_reg[15] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[15]),
        .Q(current_state[15]),
        .R(SR));
  FDRE \current_state_reg[160] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[136]),
        .Q(Q[136]),
        .R(SR));
  FDRE \current_state_reg[161] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[137]),
        .Q(Q[137]),
        .R(SR));
  FDRE \current_state_reg[162] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[138]),
        .Q(Q[138]),
        .R(SR));
  FDRE \current_state_reg[163] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[139]),
        .Q(Q[139]),
        .R(SR));
  FDRE \current_state_reg[164] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[140]),
        .Q(Q[140]),
        .R(SR));
  FDRE \current_state_reg[165] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[141]),
        .Q(Q[141]),
        .R(SR));
  FDRE \current_state_reg[166] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[142]),
        .Q(Q[142]),
        .R(SR));
  FDRE \current_state_reg[167] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[143]),
        .Q(Q[143]),
        .R(SR));
  FDRE \current_state_reg[168] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[144]),
        .Q(Q[144]),
        .R(SR));
  FDRE \current_state_reg[169] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[145]),
        .Q(Q[145]),
        .R(SR));
  FDRE \current_state_reg[16] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[16]),
        .Q(current_state[16]),
        .R(SR));
  FDRE \current_state_reg[170] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[146]),
        .Q(Q[146]),
        .R(SR));
  FDRE \current_state_reg[171] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[147]),
        .Q(Q[147]),
        .R(SR));
  FDRE \current_state_reg[172] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[148]),
        .Q(Q[148]),
        .R(SR));
  FDRE \current_state_reg[173] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[149]),
        .Q(Q[149]),
        .R(SR));
  FDRE \current_state_reg[174] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[150]),
        .Q(Q[150]),
        .R(SR));
  FDRE \current_state_reg[175] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[151]),
        .Q(Q[151]),
        .R(SR));
  FDRE \current_state_reg[176] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[152]),
        .Q(Q[152]),
        .R(SR));
  FDRE \current_state_reg[177] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[153]),
        .Q(Q[153]),
        .R(SR));
  FDRE \current_state_reg[178] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[154]),
        .Q(Q[154]),
        .R(SR));
  FDRE \current_state_reg[179] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[155]),
        .Q(Q[155]),
        .R(SR));
  FDRE \current_state_reg[17] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[17]),
        .Q(current_state[17]),
        .R(SR));
  FDRE \current_state_reg[180] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[156]),
        .Q(Q[156]),
        .R(SR));
  FDRE \current_state_reg[181] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[157]),
        .Q(Q[157]),
        .R(SR));
  FDRE \current_state_reg[182] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[158]),
        .Q(Q[158]),
        .R(SR));
  FDRE \current_state_reg[183] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[159]),
        .Q(Q[159]),
        .R(SR));
  FDRE \current_state_reg[184] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[160]),
        .Q(Q[160]),
        .R(SR));
  FDRE \current_state_reg[185] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[161]),
        .Q(Q[161]),
        .R(SR));
  FDRE \current_state_reg[186] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[162]),
        .Q(Q[162]),
        .R(SR));
  FDRE \current_state_reg[187] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[163]),
        .Q(Q[163]),
        .R(SR));
  FDRE \current_state_reg[188] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[164]),
        .Q(Q[164]),
        .R(SR));
  FDRE \current_state_reg[189] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[165]),
        .Q(Q[165]),
        .R(SR));
  FDRE \current_state_reg[18] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[18]),
        .Q(current_state[18]),
        .R(SR));
  FDRE \current_state_reg[190] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[166]),
        .Q(Q[166]),
        .R(SR));
  FDRE \current_state_reg[191] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[167]),
        .Q(Q[167]),
        .R(SR));
  FDRE \current_state_reg[192] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[168]),
        .Q(Q[168]),
        .R(SR));
  FDRE \current_state_reg[193] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[169]),
        .Q(Q[169]),
        .R(SR));
  FDRE \current_state_reg[194] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[170]),
        .Q(Q[170]),
        .R(SR));
  FDRE \current_state_reg[195] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[171]),
        .Q(Q[171]),
        .R(SR));
  FDRE \current_state_reg[196] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[172]),
        .Q(Q[172]),
        .R(SR));
  FDRE \current_state_reg[197] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[173]),
        .Q(Q[173]),
        .R(SR));
  FDRE \current_state_reg[198] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[174]),
        .Q(Q[174]),
        .R(SR));
  FDRE \current_state_reg[199] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[175]),
        .Q(Q[175]),
        .R(SR));
  FDRE \current_state_reg[19] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[19]),
        .Q(current_state[19]),
        .R(SR));
  FDRE \current_state_reg[1] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  FDRE \current_state_reg[200] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[176]),
        .Q(Q[176]),
        .R(SR));
  FDRE \current_state_reg[201] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[177]),
        .Q(Q[177]),
        .R(SR));
  FDRE \current_state_reg[202] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[178]),
        .Q(Q[178]),
        .R(SR));
  FDRE \current_state_reg[203] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[179]),
        .Q(Q[179]),
        .R(SR));
  FDRE \current_state_reg[204] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[180]),
        .Q(Q[180]),
        .R(SR));
  FDRE \current_state_reg[205] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[181]),
        .Q(Q[181]),
        .R(SR));
  FDRE \current_state_reg[206] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[182]),
        .Q(Q[182]),
        .R(SR));
  FDRE \current_state_reg[207] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[183]),
        .Q(Q[183]),
        .R(SR));
  FDRE \current_state_reg[208] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[184]),
        .Q(Q[184]),
        .R(SR));
  FDRE \current_state_reg[209] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[185]),
        .Q(Q[185]),
        .R(SR));
  FDRE \current_state_reg[20] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[20]),
        .Q(current_state[20]),
        .R(SR));
  FDRE \current_state_reg[210] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[186]),
        .Q(Q[186]),
        .R(SR));
  FDRE \current_state_reg[211] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[187]),
        .Q(Q[187]),
        .R(SR));
  FDRE \current_state_reg[212] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[188]),
        .Q(Q[188]),
        .R(SR));
  FDRE \current_state_reg[213] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[189]),
        .Q(Q[189]),
        .R(SR));
  FDRE \current_state_reg[214] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[190]),
        .Q(Q[190]),
        .R(SR));
  FDRE \current_state_reg[215] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[191]),
        .Q(Q[191]),
        .R(SR));
  FDRE \current_state_reg[216] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[192]),
        .Q(Q[192]),
        .R(SR));
  FDRE \current_state_reg[217] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[193]),
        .Q(Q[193]),
        .R(SR));
  FDRE \current_state_reg[218] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[194]),
        .Q(Q[194]),
        .R(SR));
  FDRE \current_state_reg[219] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[195]),
        .Q(Q[195]),
        .R(SR));
  FDRE \current_state_reg[21] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[21]),
        .Q(current_state[21]),
        .R(SR));
  FDRE \current_state_reg[220] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[196]),
        .Q(Q[196]),
        .R(SR));
  FDRE \current_state_reg[221] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[197]),
        .Q(Q[197]),
        .R(SR));
  FDRE \current_state_reg[222] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[198]),
        .Q(Q[198]),
        .R(SR));
  FDRE \current_state_reg[223] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[199]),
        .Q(Q[199]),
        .R(SR));
  FDRE \current_state_reg[224] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[200]),
        .Q(Q[200]),
        .R(SR));
  FDRE \current_state_reg[225] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[201]),
        .Q(Q[201]),
        .R(SR));
  FDRE \current_state_reg[226] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[202]),
        .Q(Q[202]),
        .R(SR));
  FDRE \current_state_reg[227] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[203]),
        .Q(Q[203]),
        .R(SR));
  FDRE \current_state_reg[228] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[204]),
        .Q(Q[204]),
        .R(SR));
  FDRE \current_state_reg[229] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[205]),
        .Q(Q[205]),
        .R(SR));
  FDRE \current_state_reg[22] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[22]),
        .Q(current_state[22]),
        .R(SR));
  FDRE \current_state_reg[230] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[206]),
        .Q(Q[206]),
        .R(SR));
  FDRE \current_state_reg[231] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[207]),
        .Q(Q[207]),
        .R(SR));
  FDRE \current_state_reg[232] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[208]),
        .Q(Q[208]),
        .R(SR));
  FDRE \current_state_reg[233] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[209]),
        .Q(Q[209]),
        .R(SR));
  FDRE \current_state_reg[234] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[210]),
        .Q(Q[210]),
        .R(SR));
  FDRE \current_state_reg[235] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[211]),
        .Q(Q[211]),
        .R(SR));
  FDRE \current_state_reg[236] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[212]),
        .Q(Q[212]),
        .R(SR));
  FDRE \current_state_reg[237] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[213]),
        .Q(Q[213]),
        .R(SR));
  FDRE \current_state_reg[238] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[214]),
        .Q(Q[214]),
        .R(SR));
  FDRE \current_state_reg[239] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[215]),
        .Q(Q[215]),
        .R(SR));
  FDRE \current_state_reg[23] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[23]),
        .Q(current_state[23]),
        .R(SR));
  FDRE \current_state_reg[240] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[216]),
        .Q(Q[216]),
        .R(SR));
  FDRE \current_state_reg[241] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[217]),
        .Q(Q[217]),
        .R(SR));
  FDRE \current_state_reg[242] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[218]),
        .Q(Q[218]),
        .R(SR));
  FDRE \current_state_reg[243] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[219]),
        .Q(Q[219]),
        .R(SR));
  FDRE \current_state_reg[244] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[220]),
        .Q(Q[220]),
        .R(SR));
  FDRE \current_state_reg[245] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[221]),
        .Q(Q[221]),
        .R(SR));
  FDRE \current_state_reg[246] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[222]),
        .Q(Q[222]),
        .R(SR));
  FDRE \current_state_reg[247] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[223]),
        .Q(Q[223]),
        .R(SR));
  FDRE \current_state_reg[248] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[224]),
        .Q(Q[224]),
        .R(SR));
  FDRE \current_state_reg[249] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[225]),
        .Q(Q[225]),
        .R(SR));
  FDRE \current_state_reg[24] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(current_state[24]),
        .R(SR));
  FDRE \current_state_reg[250] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[226]),
        .Q(Q[226]),
        .R(SR));
  FDRE \current_state_reg[251] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[227]),
        .Q(Q[227]),
        .R(SR));
  FDRE \current_state_reg[252] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[228]),
        .Q(Q[228]),
        .R(SR));
  FDRE \current_state_reg[253] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[229]),
        .Q(Q[229]),
        .R(SR));
  FDRE \current_state_reg[254] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[230]),
        .Q(Q[230]),
        .R(SR));
  FDRE \current_state_reg[255] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[231]),
        .Q(Q[231]),
        .R(SR));
  FDRE \current_state_reg[256] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[232]),
        .Q(Q[232]),
        .R(SR));
  FDRE \current_state_reg[257] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[233]),
        .Q(Q[233]),
        .R(SR));
  FDRE \current_state_reg[258] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[234]),
        .Q(Q[234]),
        .R(SR));
  FDRE \current_state_reg[259] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[235]),
        .Q(Q[235]),
        .R(SR));
  FDRE \current_state_reg[25] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \current_state_reg[260] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[236]),
        .Q(Q[236]),
        .R(SR));
  FDRE \current_state_reg[261] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[237]),
        .Q(Q[237]),
        .R(SR));
  FDRE \current_state_reg[262] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[238]),
        .Q(Q[238]),
        .R(SR));
  FDRE \current_state_reg[263] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[239]),
        .Q(Q[239]),
        .R(SR));
  FDRE \current_state_reg[264] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[240]),
        .Q(Q[240]),
        .R(SR));
  FDRE \current_state_reg[265] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[241]),
        .Q(Q[241]),
        .R(SR));
  FDRE \current_state_reg[266] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[242]),
        .Q(Q[242]),
        .R(SR));
  FDRE \current_state_reg[267] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[243]),
        .Q(Q[243]),
        .R(SR));
  FDRE \current_state_reg[268] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[244]),
        .Q(Q[244]),
        .R(SR));
  FDRE \current_state_reg[269] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[245]),
        .Q(Q[245]),
        .R(SR));
  FDRE \current_state_reg[26] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \current_state_reg[270] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[246]),
        .Q(Q[246]),
        .R(SR));
  FDRE \current_state_reg[271] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[247]),
        .Q(Q[247]),
        .R(SR));
  FDRE \current_state_reg[272] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[248]),
        .Q(Q[248]),
        .R(SR));
  FDRE \current_state_reg[273] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[249]),
        .Q(Q[249]),
        .R(SR));
  FDRE \current_state_reg[274] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[250]),
        .Q(Q[250]),
        .R(SR));
  FDRE \current_state_reg[275] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[251]),
        .Q(Q[251]),
        .R(SR));
  FDRE \current_state_reg[276] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[252]),
        .Q(Q[252]),
        .R(SR));
  FDRE \current_state_reg[277] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[253]),
        .Q(Q[253]),
        .R(SR));
  FDRE \current_state_reg[278] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[254]),
        .Q(Q[254]),
        .R(SR));
  FDRE \current_state_reg[279] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[255]),
        .Q(Q[255]),
        .R(SR));
  FDRE \current_state_reg[27] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \current_state_reg[280] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[256]),
        .Q(Q[256]),
        .R(SR));
  FDRE \current_state_reg[281] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[257]),
        .Q(Q[257]),
        .R(SR));
  FDRE \current_state_reg[282] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[258]),
        .Q(Q[258]),
        .R(SR));
  FDRE \current_state_reg[283] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[259]),
        .Q(Q[259]),
        .R(SR));
  FDRE \current_state_reg[284] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[260]),
        .Q(Q[260]),
        .R(SR));
  FDRE \current_state_reg[285] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[261]),
        .Q(Q[261]),
        .R(SR));
  FDRE \current_state_reg[286] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[262]),
        .Q(Q[262]),
        .R(SR));
  FDRE \current_state_reg[287] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[263]),
        .Q(Q[263]),
        .R(SR));
  FDRE \current_state_reg[288] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[264]),
        .Q(Q[264]),
        .R(SR));
  FDRE \current_state_reg[289] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[265]),
        .Q(Q[265]),
        .R(SR));
  FDRE \current_state_reg[28] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \current_state_reg[290] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[266]),
        .Q(Q[266]),
        .R(SR));
  FDRE \current_state_reg[291] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[267]),
        .Q(Q[267]),
        .R(SR));
  FDRE \current_state_reg[292] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[268]),
        .Q(Q[268]),
        .R(SR));
  FDRE \current_state_reg[293] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[269]),
        .Q(Q[269]),
        .R(SR));
  FDRE \current_state_reg[294] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[270]),
        .Q(Q[270]),
        .R(SR));
  FDRE \current_state_reg[295] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[271]),
        .Q(Q[271]),
        .R(SR));
  FDRE \current_state_reg[296] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[272]),
        .Q(Q[272]),
        .R(SR));
  FDRE \current_state_reg[297] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[273]),
        .Q(Q[273]),
        .R(SR));
  FDRE \current_state_reg[298] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[274]),
        .Q(Q[274]),
        .R(SR));
  FDRE \current_state_reg[299] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[275]),
        .Q(Q[275]),
        .R(SR));
  FDRE \current_state_reg[29] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \current_state_reg[2] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  FDRE \current_state_reg[300] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[276]),
        .Q(Q[276]),
        .R(SR));
  FDRE \current_state_reg[301] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[277]),
        .Q(Q[277]),
        .R(SR));
  FDRE \current_state_reg[302] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[278]),
        .Q(Q[278]),
        .R(SR));
  FDRE \current_state_reg[303] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[279]),
        .Q(Q[279]),
        .R(SR));
  FDRE \current_state_reg[304] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[280]),
        .Q(Q[280]),
        .R(SR));
  FDRE \current_state_reg[305] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[281]),
        .Q(Q[281]),
        .R(SR));
  FDRE \current_state_reg[306] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[282]),
        .Q(Q[282]),
        .R(SR));
  FDRE \current_state_reg[307] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[283]),
        .Q(Q[283]),
        .R(SR));
  FDRE \current_state_reg[308] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[284]),
        .Q(Q[284]),
        .R(SR));
  FDRE \current_state_reg[309] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[285]),
        .Q(Q[285]),
        .R(SR));
  FDRE \current_state_reg[30] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \current_state_reg[310] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[286]),
        .Q(Q[286]),
        .R(SR));
  FDRE \current_state_reg[311] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[287]),
        .Q(Q[287]),
        .R(SR));
  FDRE \current_state_reg[312] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[288]),
        .Q(Q[288]),
        .R(SR));
  FDRE \current_state_reg[313] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[289]),
        .Q(Q[289]),
        .R(SR));
  FDRE \current_state_reg[314] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[290]),
        .Q(Q[290]),
        .R(SR));
  FDRE \current_state_reg[315] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[291]),
        .Q(Q[291]),
        .R(SR));
  FDRE \current_state_reg[316] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[292]),
        .Q(Q[292]),
        .R(SR));
  FDRE \current_state_reg[317] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[293]),
        .Q(Q[293]),
        .R(SR));
  FDRE \current_state_reg[318] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[294]),
        .Q(Q[294]),
        .R(SR));
  FDRE \current_state_reg[319] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[295]),
        .Q(Q[295]),
        .R(SR));
  FDRE \current_state_reg[31] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \current_state_reg[320] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[296]),
        .Q(Q[296]),
        .R(SR));
  FDRE \current_state_reg[321] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[297]),
        .Q(Q[297]),
        .R(SR));
  FDRE \current_state_reg[322] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[298]),
        .Q(Q[298]),
        .R(SR));
  FDRE \current_state_reg[323] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[299]),
        .Q(Q[299]),
        .R(SR));
  FDRE \current_state_reg[324] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[300]),
        .Q(Q[300]),
        .R(SR));
  FDRE \current_state_reg[325] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[301]),
        .Q(Q[301]),
        .R(SR));
  FDRE \current_state_reg[326] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[302]),
        .Q(Q[302]),
        .R(SR));
  FDRE \current_state_reg[327] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[303]),
        .Q(Q[303]),
        .R(SR));
  FDRE \current_state_reg[328] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[304]),
        .Q(Q[304]),
        .R(SR));
  FDRE \current_state_reg[329] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[305]),
        .Q(Q[305]),
        .R(SR));
  FDRE \current_state_reg[32] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \current_state_reg[330] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[306]),
        .Q(Q[306]),
        .R(SR));
  FDRE \current_state_reg[331] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[307]),
        .Q(Q[307]),
        .R(SR));
  FDRE \current_state_reg[332] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[308]),
        .Q(Q[308]),
        .R(SR));
  FDRE \current_state_reg[333] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[309]),
        .Q(Q[309]),
        .R(SR));
  FDRE \current_state_reg[334] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[310]),
        .Q(Q[310]),
        .R(SR));
  FDRE \current_state_reg[335] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[311]),
        .Q(Q[311]),
        .R(SR));
  FDRE \current_state_reg[336] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[312]),
        .Q(Q[312]),
        .R(SR));
  FDRE \current_state_reg[337] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[313]),
        .Q(Q[313]),
        .R(SR));
  FDRE \current_state_reg[338] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[314]),
        .Q(Q[314]),
        .R(SR));
  FDRE \current_state_reg[339] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[315]),
        .Q(Q[315]),
        .R(SR));
  FDRE \current_state_reg[33] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE \current_state_reg[340] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[316]),
        .Q(Q[316]),
        .R(SR));
  FDRE \current_state_reg[341] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[317]),
        .Q(Q[317]),
        .R(SR));
  FDRE \current_state_reg[342] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[318]),
        .Q(Q[318]),
        .R(SR));
  FDRE \current_state_reg[343] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[319]),
        .Q(Q[319]),
        .R(SR));
  FDRE \current_state_reg[344] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[320]),
        .Q(Q[320]),
        .R(SR));
  FDRE \current_state_reg[345] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[321]),
        .Q(Q[321]),
        .R(SR));
  FDRE \current_state_reg[346] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[322]),
        .Q(Q[322]),
        .R(SR));
  FDRE \current_state_reg[347] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[323]),
        .Q(Q[323]),
        .R(SR));
  FDRE \current_state_reg[348] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[324]),
        .Q(Q[324]),
        .R(SR));
  FDRE \current_state_reg[349] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[325]),
        .Q(Q[325]),
        .R(SR));
  FDRE \current_state_reg[34] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \current_state_reg[350] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[326]),
        .Q(Q[326]),
        .R(SR));
  FDRE \current_state_reg[351] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[327]),
        .Q(Q[327]),
        .R(SR));
  FDRE \current_state_reg[352] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[328]),
        .Q(Q[328]),
        .R(SR));
  FDRE \current_state_reg[353] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[329]),
        .Q(Q[329]),
        .R(SR));
  FDRE \current_state_reg[354] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[330]),
        .Q(Q[330]),
        .R(SR));
  FDRE \current_state_reg[355] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[331]),
        .Q(Q[331]),
        .R(SR));
  FDRE \current_state_reg[356] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[332]),
        .Q(Q[332]),
        .R(SR));
  FDRE \current_state_reg[357] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[333]),
        .Q(Q[333]),
        .R(SR));
  FDRE \current_state_reg[358] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[334]),
        .Q(Q[334]),
        .R(SR));
  FDRE \current_state_reg[359] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[335]),
        .Q(Q[335]),
        .R(SR));
  FDRE \current_state_reg[35] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \current_state_reg[36] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \current_state_reg[37] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \current_state_reg[38] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \current_state_reg[39] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \current_state_reg[3] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(SR));
  FDRE \current_state_reg[40] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \current_state_reg[41] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \current_state_reg[42] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \current_state_reg[43] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \current_state_reg[44] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \current_state_reg[45] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \current_state_reg[46] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \current_state_reg[47] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \current_state_reg[48] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \current_state_reg[49] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \current_state_reg[4] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[4]),
        .Q(current_state[4]),
        .R(SR));
  FDRE \current_state_reg[50] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \current_state_reg[51] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \current_state_reg[52] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \current_state_reg[53] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \current_state_reg[54] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \current_state_reg[55] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \current_state_reg[56] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE \current_state_reg[57] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(SR));
  FDRE \current_state_reg[58] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[34]),
        .Q(Q[34]),
        .R(SR));
  FDRE \current_state_reg[59] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[35]),
        .Q(Q[35]),
        .R(SR));
  FDRE \current_state_reg[5] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[5]),
        .Q(current_state[5]),
        .R(SR));
  FDRE \current_state_reg[60] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[36]),
        .Q(Q[36]),
        .R(SR));
  FDRE \current_state_reg[61] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[37]),
        .Q(Q[37]),
        .R(SR));
  FDRE \current_state_reg[62] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[38]),
        .Q(Q[38]),
        .R(SR));
  FDRE \current_state_reg[63] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[39]),
        .Q(Q[39]),
        .R(SR));
  FDRE \current_state_reg[64] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[40]),
        .Q(Q[40]),
        .R(SR));
  FDRE \current_state_reg[65] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[41]),
        .Q(Q[41]),
        .R(SR));
  FDRE \current_state_reg[66] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[42]),
        .Q(Q[42]),
        .R(SR));
  FDRE \current_state_reg[67] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[43]),
        .Q(Q[43]),
        .R(SR));
  FDRE \current_state_reg[68] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[44]),
        .Q(Q[44]),
        .R(SR));
  FDRE \current_state_reg[69] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[45]),
        .Q(Q[45]),
        .R(SR));
  FDRE \current_state_reg[6] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[6]),
        .Q(current_state[6]),
        .R(SR));
  FDRE \current_state_reg[70] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[46]),
        .Q(Q[46]),
        .R(SR));
  FDRE \current_state_reg[71] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[47]),
        .Q(Q[47]),
        .R(SR));
  FDRE \current_state_reg[72] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[48]),
        .Q(Q[48]),
        .R(SR));
  FDRE \current_state_reg[73] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[49]),
        .Q(Q[49]),
        .R(SR));
  FDRE \current_state_reg[74] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[50]),
        .Q(Q[50]),
        .R(SR));
  FDRE \current_state_reg[75] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[51]),
        .Q(Q[51]),
        .R(SR));
  FDRE \current_state_reg[76] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[52]),
        .Q(Q[52]),
        .R(SR));
  FDRE \current_state_reg[77] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[53]),
        .Q(Q[53]),
        .R(SR));
  FDRE \current_state_reg[78] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[54]),
        .Q(Q[54]),
        .R(SR));
  FDRE \current_state_reg[79] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[55]),
        .Q(Q[55]),
        .R(SR));
  FDRE \current_state_reg[7] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[7]),
        .Q(current_state[7]),
        .R(SR));
  FDRE \current_state_reg[80] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[56]),
        .Q(Q[56]),
        .R(SR));
  FDRE \current_state_reg[81] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[57]),
        .Q(Q[57]),
        .R(SR));
  FDRE \current_state_reg[82] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[58]),
        .Q(Q[58]),
        .R(SR));
  FDRE \current_state_reg[83] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[59]),
        .Q(Q[59]),
        .R(SR));
  FDRE \current_state_reg[84] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[60]),
        .Q(Q[60]),
        .R(SR));
  FDRE \current_state_reg[85] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[61]),
        .Q(Q[61]),
        .R(SR));
  FDRE \current_state_reg[86] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[62]),
        .Q(Q[62]),
        .R(SR));
  FDRE \current_state_reg[87] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[63]),
        .Q(Q[63]),
        .R(SR));
  FDRE \current_state_reg[88] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[64]),
        .Q(Q[64]),
        .R(SR));
  FDRE \current_state_reg[89] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[65]),
        .Q(Q[65]),
        .R(SR));
  FDRE \current_state_reg[8] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[8]),
        .Q(current_state[8]),
        .R(SR));
  FDRE \current_state_reg[90] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[66]),
        .Q(Q[66]),
        .R(SR));
  FDRE \current_state_reg[91] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[67]),
        .Q(Q[67]),
        .R(SR));
  FDRE \current_state_reg[92] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[68]),
        .Q(Q[68]),
        .R(SR));
  FDRE \current_state_reg[93] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[69]),
        .Q(Q[69]),
        .R(SR));
  FDRE \current_state_reg[94] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[70]),
        .Q(Q[70]),
        .R(SR));
  FDRE \current_state_reg[95] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[71]),
        .Q(Q[71]),
        .R(SR));
  FDRE \current_state_reg[96] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[72]),
        .Q(Q[72]),
        .R(SR));
  FDRE \current_state_reg[97] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[73]),
        .Q(Q[73]),
        .R(SR));
  FDRE \current_state_reg[98] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[74]),
        .Q(Q[74]),
        .R(SR));
  FDRE \current_state_reg[99] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(D[75]),
        .Q(Q[75]),
        .R(SR));
  FDRE \current_state_reg[9] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(next_state[9]),
        .Q(current_state[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h69)) 
    \page_tens_ham/current_state[50]_i_2 
       (.I0(\current_state_reg[54]_0 [4]),
        .I1(\current_state_reg[54]_0 [5]),
        .I2(\current_state_reg[54]_0 [7]),
        .O(teletext_page_header_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \page_tens_ham/current_state[52]_i_2 
       (.I0(\current_state_reg[54]_0 [6]),
        .I1(\current_state_reg[54]_0 [4]),
        .I2(\current_state_reg[54]_0 [5]),
        .O(teletext_page_header_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \page_tens_ham/current_state[54]_i_2 
       (.I0(\current_state_reg[54]_0 [5]),
        .I1(\current_state_reg[54]_0 [6]),
        .I2(\current_state_reg[54]_0 [7]),
        .O(teletext_page_header_data[5]));
  LUT3 #(
    .INIT(8'h69)) 
    \page_units_ham/current_state[42]_i_2 
       (.I0(\current_state_reg[54]_0 [0]),
        .I1(\current_state_reg[54]_0 [1]),
        .I2(\current_state_reg[54]_0 [3]),
        .O(teletext_page_header_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \page_units_ham/current_state[44]_i_2 
       (.I0(\current_state_reg[54]_0 [2]),
        .I1(\current_state_reg[54]_0 [0]),
        .I2(\current_state_reg[54]_0 [1]),
        .O(teletext_page_header_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \page_units_ham/current_state[46]_i_2 
       (.I0(\current_state_reg[54]_0 [1]),
        .I1(\current_state_reg[54]_0 [2]),
        .I2(\current_state_reg[54]_0 [3]),
        .O(teletext_page_header_data[2]));
endmodule

(* ORIG_REF_NAME = "sync_generator" *) 
module system_teletext_controller_0_0_sync_generator
   (SS,
    D,
    \current_line_reg[0]_0 ,
    \current_line_reg[0]_1 ,
    E,
    SYNC_OUT,
    S_AXI_ARESETN,
    \current_state_reg[86] ,
    \current_state_reg[86]_0 ,
    \current_state_reg[40] ,
    \current_state_reg[86]_1 ,
    Q,
    \current_state_reg[64] ,
    \current_state_reg[70] ,
    \current_state_reg[38] ,
    current_magazine_number,
    teletext_page_header_data,
    \current_state_reg[46] ,
    \current_state_reg[55] ,
    PACKET_DATA,
    \current_state_reg[54] ,
    \current_state_reg[62] ,
    \current_state_reg[78] ,
    \current_state_reg[94] ,
    \CONTROL_BITS[SUPPRESS_HEADER] ,
    \CONTROL_BITS[UPDATE_INDICATOR] ,
    \CONTROL_BITS[INTERRUPTED_SEQUENCE] ,
    \CONTROL_BITS[INHIBIT_DISPLAY] ,
    \current_state_reg[102] ,
    \CONTROL_BITS[MAGAZINE_SERIAL] ,
    \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ,
    \current_state_reg[110] ,
    \current_state_reg[351] ,
    \current_state_reg[118] ,
    \current_state_reg[126] ,
    \current_state_reg[134] ,
    \current_state_reg[142] ,
    \current_state_reg[150] ,
    \current_state_reg[158] ,
    \current_state_reg[166] ,
    \current_state_reg[174] ,
    \current_state_reg[182] ,
    \current_state_reg[190] ,
    \current_state_reg[198] ,
    \current_state_reg[206] ,
    \current_state_reg[214] ,
    \current_state_reg[222] ,
    \current_state_reg[230] ,
    \current_state_reg[238] ,
    \current_state_reg[246] ,
    \current_state_reg[254] ,
    \current_state_reg[262] ,
    \current_state_reg[270] ,
    \current_state_reg[278] ,
    \current_state_reg[286] ,
    \current_state_reg[294] ,
    \current_state_reg[302] ,
    \current_state_reg[310] ,
    \current_state_reg[318] ,
    \current_state_reg[326] ,
    \current_state_reg[334] ,
    \current_state_reg[342] ,
    \current_state_reg[350] ,
    \current_state_reg[358] ,
    TELETEXT_CLK);
  output [0:0]SS;
  output [334:0]D;
  output \current_line_reg[0]_0 ;
  output \current_line_reg[0]_1 ;
  output [0:0]E;
  output SYNC_OUT;
  input S_AXI_ARESETN;
  input \current_state_reg[86] ;
  input \current_state_reg[86]_0 ;
  input \current_state_reg[40] ;
  input [6:0]\current_state_reg[86]_1 ;
  input [334:0]Q;
  input \current_state_reg[64] ;
  input [6:0]\current_state_reg[70] ;
  input [4:0]\current_state_reg[38] ;
  input [2:0]current_magazine_number;
  input [15:0]teletext_page_header_data;
  input [6:0]\current_state_reg[46] ;
  input [7:0]\current_state_reg[55] ;
  input [7:0]PACKET_DATA;
  input [6:0]\current_state_reg[54] ;
  input [6:0]\current_state_reg[62] ;
  input [6:0]\current_state_reg[78] ;
  input [6:0]\current_state_reg[94] ;
  input \CONTROL_BITS[SUPPRESS_HEADER] ;
  input \CONTROL_BITS[UPDATE_INDICATOR] ;
  input \CONTROL_BITS[INTERRUPTED_SEQUENCE] ;
  input \CONTROL_BITS[INHIBIT_DISPLAY] ;
  input [6:0]\current_state_reg[102] ;
  input \CONTROL_BITS[MAGAZINE_SERIAL] ;
  input [2:0]\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ;
  input [6:0]\current_state_reg[110] ;
  input [30:0]\current_state_reg[351] ;
  input [6:0]\current_state_reg[118] ;
  input [6:0]\current_state_reg[126] ;
  input [6:0]\current_state_reg[134] ;
  input [6:0]\current_state_reg[142] ;
  input [6:0]\current_state_reg[150] ;
  input [6:0]\current_state_reg[158] ;
  input [6:0]\current_state_reg[166] ;
  input [6:0]\current_state_reg[174] ;
  input [6:0]\current_state_reg[182] ;
  input [6:0]\current_state_reg[190] ;
  input [6:0]\current_state_reg[198] ;
  input [6:0]\current_state_reg[206] ;
  input [6:0]\current_state_reg[214] ;
  input [6:0]\current_state_reg[222] ;
  input [6:0]\current_state_reg[230] ;
  input [6:0]\current_state_reg[238] ;
  input [6:0]\current_state_reg[246] ;
  input [6:0]\current_state_reg[254] ;
  input [6:0]\current_state_reg[262] ;
  input [6:0]\current_state_reg[270] ;
  input [6:0]\current_state_reg[278] ;
  input [6:0]\current_state_reg[286] ;
  input [6:0]\current_state_reg[294] ;
  input [6:0]\current_state_reg[302] ;
  input [6:0]\current_state_reg[310] ;
  input [6:0]\current_state_reg[318] ;
  input [6:0]\current_state_reg[326] ;
  input [6:0]\current_state_reg[334] ;
  input [6:0]\current_state_reg[342] ;
  input [6:0]\current_state_reg[350] ;
  input [6:0]\current_state_reg[358] ;
  input TELETEXT_CLK;

  wire \CONTROL_BITS[INHIBIT_DISPLAY] ;
  wire \CONTROL_BITS[INTERRUPTED_SEQUENCE] ;
  wire \CONTROL_BITS[MAGAZINE_SERIAL] ;
  wire [2:0]\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ;
  wire \CONTROL_BITS[SUPPRESS_HEADER] ;
  wire \CONTROL_BITS[UPDATE_INDICATOR] ;
  wire [334:0]D;
  wire [0:0]E;
  wire [7:0]PACKET_DATA;
  wire [334:0]Q;
  wire [0:0]SS;
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
  wire SYNC_OUT_INST_0_i_3_n_0;
  wire SYNC_OUT_INST_0_i_4_n_0;
  wire SYNC_OUT_INST_0_i_5_n_0;
  wire SYNC_OUT_INST_0_i_6_n_0;
  wire SYNC_OUT_INST_0_i_7_n_0;
  wire SYNC_OUT_INST_0_i_8_n_0;
  wire SYNC_OUT_INST_0_i_9_n_0;
  wire S_AXI_ARESETN;
  wire TELETEXT_CLK;
  wire \current_column[0]_i_1_n_0 ;
  wire \current_column[5]_i_1__0_n_0 ;
  wire \current_column[6]_i_2_n_0 ;
  wire \current_column[9]_i_1_n_0 ;
  wire \current_column[9]_i_3_n_0 ;
  wire [8:0]current_column_reg;
  wire [9:9]current_column_reg__0;
  wire current_line0;
  wire \current_line[0]_i_1__0_n_0 ;
  wire \current_line[2]_i_1__0_n_0 ;
  wire \current_line[4]_i_1_n_0 ;
  wire \current_line[4]_i_4_n_0 ;
  wire \current_line[4]_i_5_n_0 ;
  wire \current_line[4]_i_6_n_0 ;
  wire \current_line[9]_i_3_n_0 ;
  wire \current_line[9]_i_4_n_0 ;
  wire [9:0]current_line_reg;
  wire \current_line_reg[0]_0 ;
  wire \current_line_reg[0]_1 ;
  wire [2:0]current_magazine_number;
  wire \current_state[231]_i_3_n_0 ;
  wire \current_state[39]_i_2_n_0 ;
  wire \current_state[39]_i_3_n_0 ;
  wire \current_state[39]_i_4_n_0 ;
  wire \current_state[39]_i_5_n_0 ;
  wire \current_state[39]_i_6_n_0 ;
  wire \current_state[39]_i_7_n_0 ;
  wire \current_state[39]_i_8_n_0 ;
  wire [6:0]\current_state_reg[102] ;
  wire [6:0]\current_state_reg[110] ;
  wire [6:0]\current_state_reg[118] ;
  wire [6:0]\current_state_reg[126] ;
  wire [6:0]\current_state_reg[134] ;
  wire [6:0]\current_state_reg[142] ;
  wire [6:0]\current_state_reg[150] ;
  wire [6:0]\current_state_reg[158] ;
  wire [6:0]\current_state_reg[166] ;
  wire [6:0]\current_state_reg[174] ;
  wire [6:0]\current_state_reg[182] ;
  wire [6:0]\current_state_reg[190] ;
  wire [6:0]\current_state_reg[198] ;
  wire [6:0]\current_state_reg[206] ;
  wire [6:0]\current_state_reg[214] ;
  wire [6:0]\current_state_reg[222] ;
  wire [6:0]\current_state_reg[230] ;
  wire [6:0]\current_state_reg[238] ;
  wire [6:0]\current_state_reg[246] ;
  wire [6:0]\current_state_reg[254] ;
  wire [6:0]\current_state_reg[262] ;
  wire [6:0]\current_state_reg[270] ;
  wire [6:0]\current_state_reg[278] ;
  wire [6:0]\current_state_reg[286] ;
  wire [6:0]\current_state_reg[294] ;
  wire [6:0]\current_state_reg[302] ;
  wire [6:0]\current_state_reg[310] ;
  wire [6:0]\current_state_reg[318] ;
  wire [6:0]\current_state_reg[326] ;
  wire [6:0]\current_state_reg[334] ;
  wire [6:0]\current_state_reg[342] ;
  wire [6:0]\current_state_reg[350] ;
  wire [30:0]\current_state_reg[351] ;
  wire [6:0]\current_state_reg[358] ;
  wire [4:0]\current_state_reg[38] ;
  wire \current_state_reg[40] ;
  wire [6:0]\current_state_reg[46] ;
  wire [6:0]\current_state_reg[54] ;
  wire [7:0]\current_state_reg[55] ;
  wire [6:0]\current_state_reg[62] ;
  wire \current_state_reg[64] ;
  wire [6:0]\current_state_reg[70] ;
  wire [6:0]\current_state_reg[78] ;
  wire \current_state_reg[86] ;
  wire \current_state_reg[86]_0 ;
  wire [6:0]\current_state_reg[86]_1 ;
  wire [6:0]\current_state_reg[94] ;
  wire [9:1]p_0_in__0;
  wire [9:1]p_0_in__1;
  wire [15:0]teletext_page_header_data;

  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    SYNC_OUT_INST_0
       (.I0(SYNC_OUT_INST_0_i_1_n_0),
        .I1(SYNC_OUT_INST_0_i_2_n_0),
        .I2(SYNC_OUT_INST_0_i_3_n_0),
        .I3(SYNC_OUT_INST_0_i_4_n_0),
        .I4(SYNC_OUT_INST_0_i_5_n_0),
        .I5(SYNC_OUT_INST_0_i_6_n_0),
        .O(SYNC_OUT));
  LUT6 #(
    .INIT(64'h00000000AAEFAA20)) 
    SYNC_OUT_INST_0_i_1
       (.I0(SYNC_OUT_INST_0_i_7_n_0),
        .I1(SYNC_OUT_INST_0_i_8_n_0),
        .I2(SYNC_OUT_INST_0_i_9_n_0),
        .I3(SYNC_OUT_INST_0_i_10_n_0),
        .I4(SYNC_OUT_INST_0_i_11_n_0),
        .I5(SYNC_OUT_INST_0_i_12_n_0),
        .O(SYNC_OUT_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF5FFFFFFFFFF7E)) 
    SYNC_OUT_INST_0_i_10
       (.I0(current_line_reg[5]),
        .I1(current_line_reg[4]),
        .I2(current_line_reg[8]),
        .I3(current_line_reg[7]),
        .I4(current_line_reg[9]),
        .I5(current_line_reg[6]),
        .O(SYNC_OUT_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    SYNC_OUT_INST_0_i_11
       (.I0(SYNC_OUT_INST_0_i_27_n_0),
        .I1(current_column_reg[8]),
        .I2(current_column_reg[5]),
        .I3(current_column_reg[6]),
        .I4(current_column_reg[7]),
        .I5(SYNC_OUT_INST_0_i_23_n_0),
        .O(SYNC_OUT_INST_0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h15151555)) 
    SYNC_OUT_INST_0_i_12
       (.I0(current_column_reg[8]),
        .I1(current_column_reg[6]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[5]),
        .I4(SYNC_OUT_INST_0_i_24_n_0),
        .O(SYNC_OUT_INST_0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hD7FF3C00)) 
    SYNC_OUT_INST_0_i_13
       (.I0(current_line_reg[0]),
        .I1(current_line_reg[4]),
        .I2(current_line_reg[3]),
        .I3(current_line_reg[2]),
        .I4(current_line_reg[1]),
        .O(SYNC_OUT_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hDDFFDFFFFF7EF7FF)) 
    SYNC_OUT_INST_0_i_14
       (.I0(current_line_reg[5]),
        .I1(current_line_reg[6]),
        .I2(current_line_reg[3]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[2]),
        .I5(current_line_reg[8]),
        .O(SYNC_OUT_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    SYNC_OUT_INST_0_i_15
       (.I0(current_column_reg[3]),
        .I1(current_column_reg[2]),
        .I2(current_column_reg[1]),
        .I3(current_column_reg[0]),
        .I4(current_column_reg[4]),
        .I5(SYNC_OUT_INST_0_i_22_n_0),
        .O(SYNC_OUT_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFEFFFFFFFF)) 
    SYNC_OUT_INST_0_i_16
       (.I0(SYNC_OUT_INST_0_i_23_n_0),
        .I1(current_column_reg[8]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[5]),
        .I4(current_column_reg[6]),
        .I5(SYNC_OUT_INST_0_i_27_n_0),
        .O(SYNC_OUT_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    SYNC_OUT_INST_0_i_17
       (.I0(SYNC_OUT_INST_0_i_28_n_0),
        .I1(current_line_reg[3]),
        .I2(current_line_reg[2]),
        .I3(current_line_reg[9]),
        .I4(current_line_reg[7]),
        .I5(current_line_reg[8]),
        .O(SYNC_OUT_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'h0200000000000001)) 
    SYNC_OUT_INST_0_i_18
       (.I0(current_line_reg[8]),
        .I1(current_line_reg[6]),
        .I2(SYNC_OUT_INST_0_i_29_n_0),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[4]),
        .I5(current_line_reg[3]),
        .O(SYNC_OUT_INST_0_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hF75FFFF5)) 
    SYNC_OUT_INST_0_i_19
       (.I0(current_line_reg[0]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[3]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[2]),
        .O(SYNC_OUT_INST_0_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFB4)) 
    SYNC_OUT_INST_0_i_2
       (.I0(current_line_reg[8]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[9]),
        .I3(current_line_reg[7]),
        .I4(SYNC_OUT_INST_0_i_13_n_0),
        .I5(SYNC_OUT_INST_0_i_14_n_0),
        .O(SYNC_OUT_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hD0D0D0D0FFFFFFD0)) 
    SYNC_OUT_INST_0_i_20
       (.I0(current_line_reg[9]),
        .I1(current_line_reg[8]),
        .I2(current_line_reg[6]),
        .I3(current_line_reg[3]),
        .I4(current_line_reg[4]),
        .I5(current_line_reg[1]),
        .O(SYNC_OUT_INST_0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h36F63FFE)) 
    SYNC_OUT_INST_0_i_21
       (.I0(current_line_reg[8]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[6]),
        .I3(current_line_reg[3]),
        .I4(current_line_reg[4]),
        .O(SYNC_OUT_INST_0_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    SYNC_OUT_INST_0_i_22
       (.I0(current_column_reg[6]),
        .I1(current_column_reg[5]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[8]),
        .O(SYNC_OUT_INST_0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    SYNC_OUT_INST_0_i_23
       (.I0(current_column_reg[0]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[3]),
        .I3(current_column_reg[4]),
        .I4(current_column_reg[2]),
        .O(SYNC_OUT_INST_0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    SYNC_OUT_INST_0_i_24
       (.I0(current_column_reg[4]),
        .I1(current_column_reg[2]),
        .I2(current_column_reg[3]),
        .I3(current_column_reg[1]),
        .I4(current_column_reg[0]),
        .O(SYNC_OUT_INST_0_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    SYNC_OUT_INST_0_i_25
       (.I0(current_line_reg[1]),
        .I1(current_line_reg[0]),
        .O(SYNC_OUT_INST_0_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    SYNC_OUT_INST_0_i_26
       (.I0(current_line_reg[1]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[4]),
        .O(SYNC_OUT_INST_0_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    SYNC_OUT_INST_0_i_27
       (.I0(current_column_reg[4]),
        .I1(current_column_reg[0]),
        .I2(current_column_reg[1]),
        .I3(current_column_reg[2]),
        .I4(current_column_reg[3]),
        .O(SYNC_OUT_INST_0_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    SYNC_OUT_INST_0_i_28
       (.I0(current_line_reg[6]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[4]),
        .O(SYNC_OUT_INST_0_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    SYNC_OUT_INST_0_i_29
       (.I0(current_line_reg[7]),
        .I1(current_line_reg[9]),
        .O(SYNC_OUT_INST_0_i_29_n_0));
  LUT6 #(
    .INIT(64'h2222F2FF22220200)) 
    SYNC_OUT_INST_0_i_3
       (.I0(SYNC_OUT_INST_0_i_7_n_0),
        .I1(SYNC_OUT_INST_0_i_15_n_0),
        .I2(SYNC_OUT_INST_0_i_8_n_0),
        .I3(SYNC_OUT_INST_0_i_9_n_0),
        .I4(SYNC_OUT_INST_0_i_10_n_0),
        .I5(SYNC_OUT_INST_0_i_16_n_0),
        .O(SYNC_OUT_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0E000E0EEEEEEEE0)) 
    SYNC_OUT_INST_0_i_4
       (.I0(SYNC_OUT_INST_0_i_17_n_0),
        .I1(SYNC_OUT_INST_0_i_18_n_0),
        .I2(current_line_reg[2]),
        .I3(current_line_reg[3]),
        .I4(current_line_reg[4]),
        .I5(current_line_reg[1]),
        .O(SYNC_OUT_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    SYNC_OUT_INST_0_i_5
       (.I0(SYNC_OUT_INST_0_i_19_n_0),
        .I1(current_line_reg[7]),
        .I2(current_line_reg[9]),
        .I3(current_line_reg[6]),
        .I4(SYNC_OUT_INST_0_i_20_n_0),
        .I5(SYNC_OUT_INST_0_i_21_n_0),
        .O(SYNC_OUT_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808001)) 
    SYNC_OUT_INST_0_i_6
       (.I0(current_column_reg[4]),
        .I1(current_column_reg[2]),
        .I2(current_column_reg[3]),
        .I3(current_column_reg[0]),
        .I4(current_column_reg[1]),
        .I5(SYNC_OUT_INST_0_i_22_n_0),
        .O(SYNC_OUT_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFF00AFFFC000FFFF)) 
    SYNC_OUT_INST_0_i_7
       (.I0(SYNC_OUT_INST_0_i_23_n_0),
        .I1(SYNC_OUT_INST_0_i_24_n_0),
        .I2(current_column_reg[5]),
        .I3(current_column_reg[7]),
        .I4(current_column_reg[8]),
        .I5(current_column_reg[6]),
        .O(SYNC_OUT_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h030004040000000F)) 
    SYNC_OUT_INST_0_i_8
       (.I0(current_line_reg[6]),
        .I1(current_line_reg[4]),
        .I2(SYNC_OUT_INST_0_i_25_n_0),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[3]),
        .I5(current_line_reg[2]),
        .O(SYNC_OUT_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFBEEEFEFFBEEEBEF)) 
    SYNC_OUT_INST_0_i_9
       (.I0(SYNC_OUT_INST_0_i_26_n_0),
        .I1(current_line_reg[3]),
        .I2(current_line_reg[6]),
        .I3(current_line_reg[4]),
        .I4(current_line_reg[2]),
        .I5(current_line_reg[0]),
        .O(SYNC_OUT_INST_0_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \current_column[0]_i_1 
       (.I0(current_column_reg[0]),
        .O(\current_column[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_column[1]_i_1 
       (.I0(current_column_reg[1]),
        .I1(current_column_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \current_column[2]_i_1 
       (.I0(current_column_reg[2]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \current_column[3]_i_1 
       (.I0(current_column_reg[0]),
        .I1(current_column_reg[1]),
        .I2(current_column_reg[2]),
        .I3(current_column_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \current_column[4]_i_1 
       (.I0(current_column_reg[4]),
        .I1(current_column_reg[0]),
        .I2(current_column_reg[1]),
        .I3(current_column_reg[2]),
        .I4(current_column_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \current_column[5]_i_1__0 
       (.I0(current_column_reg[5]),
        .I1(current_column_reg[3]),
        .I2(current_column_reg[2]),
        .I3(current_column_reg[4]),
        .I4(current_column_reg[1]),
        .I5(current_column_reg[0]),
        .O(\current_column[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \current_column[6]_i_1 
       (.I0(current_column_reg[6]),
        .I1(\current_column[6]_i_2_n_0 ),
        .I2(current_column_reg[4]),
        .I3(current_column_reg[2]),
        .I4(current_column_reg[3]),
        .I5(current_column_reg[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_column[6]_i_2 
       (.I0(current_column_reg[1]),
        .I1(current_column_reg[0]),
        .O(\current_column[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \current_column[7]_i_1 
       (.I0(current_column_reg[7]),
        .I1(current_column_reg[5]),
        .I2(\current_column[9]_i_3_n_0 ),
        .I3(current_column_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \current_column[8]_i_1 
       (.I0(current_column_reg[8]),
        .I1(current_column_reg[7]),
        .I2(current_column_reg[6]),
        .I3(current_column_reg[5]),
        .I4(\current_column[9]_i_3_n_0 ),
        .O(p_0_in__1[8]));
  LUT5 #(
    .INIT(32'hFFFFD555)) 
    \current_column[9]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(current_column_reg[8]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[6]),
        .I4(current_column_reg__0),
        .O(\current_column[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \current_column[9]_i_2 
       (.I0(current_column_reg[8]),
        .I1(\current_column[9]_i_3_n_0 ),
        .I2(current_column_reg[5]),
        .I3(current_column_reg[6]),
        .I4(current_column_reg[7]),
        .O(p_0_in__1[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(\current_column[0]_i_1_n_0 ),
        .Q(current_column_reg[0]),
        .S(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[1] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(current_column_reg[1]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[2] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(current_column_reg[2]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[3] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(current_column_reg[3]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[4] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(current_column_reg[4]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[5] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(\current_column[5]_i_1__0_n_0 ),
        .Q(current_column_reg[5]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[6] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(current_column_reg[6]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[7] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(current_column_reg[7]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[8] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[8]),
        .Q(current_column_reg[8]),
        .R(\current_column[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_column_reg[9] 
       (.C(TELETEXT_CLK),
        .CE(1'b1),
        .D(p_0_in__1[9]),
        .Q(current_column_reg__0),
        .R(\current_column[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_line[0]_i_1__0 
       (.I0(current_line_reg[0]),
        .O(\current_line[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_line[1]_i_1__0 
       (.I0(current_line_reg[1]),
        .I1(current_line_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \current_line[2]_i_1__0 
       (.I0(current_line_reg[2]),
        .I1(current_line_reg[0]),
        .I2(current_line_reg[1]),
        .O(\current_line[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \current_line[3]_i_1 
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[1]),
        .I2(current_line_reg[0]),
        .I3(current_line_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \current_line[4]_i_1 
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[2]),
        .I2(current_line_reg[0]),
        .I3(current_line_reg[1]),
        .I4(current_line_reg[3]),
        .O(\current_line[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444440FFFFFFFF)) 
    \current_line[4]_i_1__0 
       (.I0(\current_line[4]_i_4_n_0 ),
        .I1(current_line_reg[9]),
        .I2(\current_line[4]_i_5_n_0 ),
        .I3(current_line_reg[8]),
        .I4(current_line_reg[7]),
        .I5(S_AXI_ARESETN),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_line[4]_i_2 
       (.I0(\current_state[39]_i_2_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'h1555)) 
    \current_line[4]_i_4 
       (.I0(current_column_reg__0),
        .I1(current_column_reg[6]),
        .I2(current_column_reg[7]),
        .I3(current_column_reg[8]),
        .O(\current_line[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \current_line[4]_i_5 
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[6]),
        .I3(\current_line[4]_i_6_n_0 ),
        .I4(current_line_reg[1]),
        .I5(current_line_reg[0]),
        .O(\current_line[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \current_line[4]_i_6 
       (.I0(current_line_reg[2]),
        .I1(current_line_reg[3]),
        .O(\current_line[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \current_line[5]_i_1 
       (.I0(current_line_reg[5]),
        .I1(current_line_reg[3]),
        .I2(current_line_reg[1]),
        .I3(current_line_reg[0]),
        .I4(current_line_reg[2]),
        .I5(current_line_reg[4]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \current_line[6]_i_1 
       (.I0(current_line_reg[6]),
        .I1(current_line_reg[3]),
        .I2(current_line_reg[1]),
        .I3(current_line_reg[0]),
        .I4(current_line_reg[2]),
        .I5(\current_line[9]_i_4_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \current_line[7]_i_1 
       (.I0(current_line_reg[7]),
        .I1(\current_line[9]_i_3_n_0 ),
        .I2(current_line_reg[6]),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[4]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \current_line[8]_i_1 
       (.I0(current_line_reg[8]),
        .I1(current_line_reg[7]),
        .I2(current_line_reg[4]),
        .I3(current_line_reg[5]),
        .I4(current_line_reg[6]),
        .I5(\current_line[9]_i_3_n_0 ),
        .O(p_0_in__0[8]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \current_line[9]_i_1 
       (.I0(current_column_reg[8]),
        .I1(current_column_reg[7]),
        .I2(current_column_reg[6]),
        .I3(current_column_reg__0),
        .O(current_line0));
  LUT6 #(
    .INIT(64'hAA9AAAAAAAAAAAAA)) 
    \current_line[9]_i_2 
       (.I0(current_line_reg[9]),
        .I1(\current_line[9]_i_3_n_0 ),
        .I2(current_line_reg[6]),
        .I3(\current_line[9]_i_4_n_0 ),
        .I4(current_line_reg[7]),
        .I5(current_line_reg[8]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_line[9]_i_3 
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[1]),
        .I2(current_line_reg[0]),
        .I3(current_line_reg[2]),
        .O(\current_line[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_line[9]_i_4 
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[5]),
        .O(\current_line[9]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_line_reg[0] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(\current_line[0]_i_1__0_n_0 ),
        .Q(current_line_reg[0]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[1] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(p_0_in__0[1]),
        .Q(current_line_reg[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[2] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(\current_line[2]_i_1__0_n_0 ),
        .Q(current_line_reg[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[3] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(p_0_in__0[3]),
        .Q(current_line_reg[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[4] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(\current_line[4]_i_1_n_0 ),
        .Q(current_line_reg[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[5] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(p_0_in__0[5]),
        .Q(current_line_reg[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[6] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(p_0_in__0[6]),
        .Q(current_line_reg[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[7] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(p_0_in__0[7]),
        .Q(current_line_reg[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[8] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(p_0_in__0[8]),
        .Q(current_line_reg[8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[9] 
       (.C(TELETEXT_CLK),
        .CE(current_line0),
        .D(p_0_in__0[9]),
        .Q(current_line_reg[9]),
        .R(SS));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \current_state[0]_i_3 
       (.I0(\current_state[39]_i_2_n_0 ),
        .I1(\current_state_reg[38] [0]),
        .I2(\current_state_reg[38] [1]),
        .I3(\current_state_reg[38] [2]),
        .I4(\current_state_reg[38] [3]),
        .I5(\current_state_reg[38] [4]),
        .O(\current_line_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[100]_i_1 
       (.I0(teletext_page_header_data[14]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[102] [4]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[76]),
        .O(D[76]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[101]_i_1 
       (.I0(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[102] [5]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[77]),
        .O(D[77]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[102]_i_1 
       (.I0(teletext_page_header_data[15]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[102] [6]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[78]),
        .O(D[78]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[103]_i_1 
       (.I0(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [2]),
        .I1(\current_state_reg[40] ),
        .I2(PACKET_DATA[7]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[79]),
        .O(D[79]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[104]_i_1 
       (.I0(\current_state_reg[110] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[80]),
        .O(D[80]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[105]_i_1 
       (.I0(\current_state_reg[110] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[81]),
        .O(D[81]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[106]_i_1 
       (.I0(\current_state_reg[110] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[82]),
        .O(D[82]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[107]_i_1 
       (.I0(\current_state_reg[110] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[83]),
        .O(D[83]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[108]_i_1 
       (.I0(\current_state_reg[110] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[84]),
        .O(D[84]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[109]_i_1 
       (.I0(\current_state_reg[110] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[85]),
        .O(D[85]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[110]_i_1 
       (.I0(\current_state_reg[110] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[86]),
        .O(D[86]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[111]_i_1 
       (.I0(\current_state_reg[351] [0]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [0]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[87]),
        .O(D[87]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[112]_i_1 
       (.I0(\current_state_reg[118] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[88]),
        .O(D[88]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[113]_i_1 
       (.I0(\current_state_reg[118] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[89]),
        .O(D[89]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[114]_i_1 
       (.I0(\current_state_reg[118] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[90]),
        .O(D[90]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[115]_i_1 
       (.I0(\current_state_reg[118] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[91]),
        .O(D[91]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[116]_i_1 
       (.I0(\current_state_reg[118] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[92]),
        .O(D[92]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[117]_i_1 
       (.I0(\current_state_reg[118] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[93]),
        .O(D[93]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[118]_i_1 
       (.I0(\current_state_reg[118] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[94]),
        .O(D[94]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[119]_i_1 
       (.I0(\current_state_reg[351] [1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [1]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[95]),
        .O(D[95]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[120]_i_1 
       (.I0(\current_state_reg[126] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[96]),
        .O(D[96]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[121]_i_1 
       (.I0(\current_state_reg[126] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[97]),
        .O(D[97]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[122]_i_1 
       (.I0(\current_state_reg[126] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[98]),
        .O(D[98]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[123]_i_1 
       (.I0(\current_state_reg[126] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[99]),
        .O(D[99]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[124]_i_1 
       (.I0(\current_state_reg[126] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[100]),
        .O(D[100]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[125]_i_1 
       (.I0(\current_state_reg[126] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[101]),
        .O(D[101]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[126]_i_1 
       (.I0(\current_state_reg[126] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[102]),
        .O(D[102]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[127]_i_1 
       (.I0(\current_state_reg[351] [2]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [2]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[103]),
        .O(D[103]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[128]_i_1 
       (.I0(\current_state_reg[134] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[104]),
        .O(D[104]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[129]_i_1 
       (.I0(\current_state_reg[134] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[105]),
        .O(D[105]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[130]_i_1 
       (.I0(\current_state_reg[134] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[106]),
        .O(D[106]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[131]_i_1 
       (.I0(\current_state_reg[134] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[107]),
        .O(D[107]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[132]_i_1 
       (.I0(\current_state_reg[134] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[108]),
        .O(D[108]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[133]_i_1 
       (.I0(\current_state_reg[134] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[109]),
        .O(D[109]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[134]_i_1 
       (.I0(\current_state_reg[134] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[110]),
        .O(D[110]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[135]_i_1 
       (.I0(\current_state_reg[351] [3]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [3]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[111]),
        .O(D[111]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[136]_i_1 
       (.I0(\current_state_reg[142] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[112]),
        .O(D[112]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[137]_i_1 
       (.I0(\current_state_reg[142] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[113]),
        .O(D[113]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[138]_i_1 
       (.I0(\current_state_reg[142] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[114]),
        .O(D[114]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[139]_i_1 
       (.I0(\current_state_reg[142] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[115]),
        .O(D[115]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[140]_i_1 
       (.I0(\current_state_reg[142] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[116]),
        .O(D[116]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[141]_i_1 
       (.I0(\current_state_reg[142] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[117]),
        .O(D[117]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[142]_i_1 
       (.I0(\current_state_reg[142] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[118]),
        .O(D[118]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[143]_i_1 
       (.I0(\current_state_reg[351] [4]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [4]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[119]),
        .O(D[119]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[144]_i_1 
       (.I0(\current_state_reg[150] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[120]),
        .O(D[120]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[145]_i_1 
       (.I0(\current_state_reg[150] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[121]),
        .O(D[121]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[146]_i_1 
       (.I0(\current_state_reg[150] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[122]),
        .O(D[122]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[147]_i_1 
       (.I0(\current_state_reg[150] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[123]),
        .O(D[123]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[148]_i_1 
       (.I0(\current_state_reg[150] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[124]),
        .O(D[124]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[149]_i_1 
       (.I0(\current_state_reg[150] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[125]),
        .O(D[125]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[150]_i_1 
       (.I0(\current_state_reg[150] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[126]),
        .O(D[126]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[151]_i_1 
       (.I0(\current_state_reg[351] [5]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [5]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[127]),
        .O(D[127]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[152]_i_1 
       (.I0(\current_state_reg[158] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[128]),
        .O(D[128]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[153]_i_1 
       (.I0(\current_state_reg[158] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[129]),
        .O(D[129]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[154]_i_1 
       (.I0(\current_state_reg[158] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[130]),
        .O(D[130]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[155]_i_1 
       (.I0(\current_state_reg[158] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[131]),
        .O(D[131]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[156]_i_1 
       (.I0(\current_state_reg[158] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[132]),
        .O(D[132]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[157]_i_1 
       (.I0(\current_state_reg[158] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[133]),
        .O(D[133]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[158]_i_1 
       (.I0(\current_state_reg[158] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[134]),
        .O(D[134]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[159]_i_1 
       (.I0(\current_state_reg[351] [6]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [6]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[135]),
        .O(D[135]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[160]_i_1 
       (.I0(\current_state_reg[166] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[136]),
        .O(D[136]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[161]_i_1 
       (.I0(\current_state_reg[166] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[137]),
        .O(D[137]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[162]_i_1 
       (.I0(\current_state_reg[166] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[138]),
        .O(D[138]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[163]_i_1 
       (.I0(\current_state_reg[166] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[139]),
        .O(D[139]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[164]_i_1 
       (.I0(\current_state_reg[166] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[140]),
        .O(D[140]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[165]_i_1 
       (.I0(\current_state_reg[166] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[141]),
        .O(D[141]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[166]_i_1 
       (.I0(\current_state_reg[166] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[142]),
        .O(D[142]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[167]_i_1 
       (.I0(\current_state_reg[351] [7]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [7]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[143]),
        .O(D[143]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[168]_i_1 
       (.I0(\current_state_reg[174] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[144]),
        .O(D[144]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[169]_i_1 
       (.I0(\current_state_reg[174] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[145]),
        .O(D[145]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[170]_i_1 
       (.I0(\current_state_reg[174] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[146]),
        .O(D[146]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[171]_i_1 
       (.I0(\current_state_reg[174] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[147]),
        .O(D[147]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[172]_i_1 
       (.I0(\current_state_reg[174] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[148]),
        .O(D[148]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[173]_i_1 
       (.I0(\current_state_reg[174] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[149]),
        .O(D[149]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[174]_i_1 
       (.I0(\current_state_reg[174] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[150]),
        .O(D[150]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[175]_i_1 
       (.I0(\current_state_reg[351] [8]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [8]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[151]),
        .O(D[151]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[176]_i_1 
       (.I0(\current_state_reg[182] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[152]),
        .O(D[152]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[177]_i_1 
       (.I0(\current_state_reg[182] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[153]),
        .O(D[153]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[178]_i_1 
       (.I0(\current_state_reg[182] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[154]),
        .O(D[154]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[179]_i_1 
       (.I0(\current_state_reg[182] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[155]),
        .O(D[155]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[180]_i_1 
       (.I0(\current_state_reg[182] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[156]),
        .O(D[156]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[181]_i_1 
       (.I0(\current_state_reg[182] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[157]),
        .O(D[157]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[182]_i_1 
       (.I0(\current_state_reg[182] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[158]),
        .O(D[158]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[183]_i_1 
       (.I0(\current_state_reg[351] [9]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [9]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[159]),
        .O(D[159]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[184]_i_1 
       (.I0(\current_state_reg[190] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[160]),
        .O(D[160]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[185]_i_1 
       (.I0(\current_state_reg[190] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[161]),
        .O(D[161]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[186]_i_1 
       (.I0(\current_state_reg[190] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[162]),
        .O(D[162]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[187]_i_1 
       (.I0(\current_state_reg[190] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[163]),
        .O(D[163]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[188]_i_1 
       (.I0(\current_state_reg[190] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[164]),
        .O(D[164]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[189]_i_1 
       (.I0(\current_state_reg[190] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[165]),
        .O(D[165]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[190]_i_1 
       (.I0(\current_state_reg[190] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[166]),
        .O(D[166]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[191]_i_1 
       (.I0(\current_state_reg[351] [10]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [10]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[167]),
        .O(D[167]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[192]_i_1 
       (.I0(\current_state_reg[198] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[168]),
        .O(D[168]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[193]_i_1 
       (.I0(\current_state_reg[198] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[169]),
        .O(D[169]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[194]_i_1 
       (.I0(\current_state_reg[198] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[170]),
        .O(D[170]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[195]_i_1 
       (.I0(\current_state_reg[198] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[171]),
        .O(D[171]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[196]_i_1 
       (.I0(\current_state_reg[198] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[172]),
        .O(D[172]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[197]_i_1 
       (.I0(\current_state_reg[198] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[173]),
        .O(D[173]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[198]_i_1 
       (.I0(\current_state_reg[198] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[174]),
        .O(D[174]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[199]_i_1 
       (.I0(\current_state_reg[351] [11]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [11]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[175]),
        .O(D[175]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[200]_i_1 
       (.I0(\current_state_reg[206] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[176]),
        .O(D[176]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[201]_i_1 
       (.I0(\current_state_reg[206] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[177]),
        .O(D[177]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[202]_i_1 
       (.I0(\current_state_reg[206] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[178]),
        .O(D[178]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[203]_i_1 
       (.I0(\current_state_reg[206] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[179]),
        .O(D[179]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[204]_i_1 
       (.I0(\current_state_reg[206] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[180]),
        .O(D[180]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[205]_i_1 
       (.I0(\current_state_reg[206] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[181]),
        .O(D[181]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[206]_i_1 
       (.I0(\current_state_reg[206] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[182]),
        .O(D[182]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[207]_i_1 
       (.I0(\current_state_reg[351] [12]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [12]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[183]),
        .O(D[183]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[208]_i_1 
       (.I0(\current_state_reg[214] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[184]),
        .O(D[184]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[209]_i_1 
       (.I0(\current_state_reg[214] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[185]),
        .O(D[185]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[210]_i_1 
       (.I0(\current_state_reg[214] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[186]),
        .O(D[186]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[211]_i_1 
       (.I0(\current_state_reg[214] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[187]),
        .O(D[187]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[212]_i_1 
       (.I0(\current_state_reg[214] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[188]),
        .O(D[188]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[213]_i_1 
       (.I0(\current_state_reg[214] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[189]),
        .O(D[189]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[214]_i_1 
       (.I0(\current_state_reg[214] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[190]),
        .O(D[190]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[215]_i_1 
       (.I0(\current_state_reg[351] [13]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [13]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[191]),
        .O(D[191]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[216]_i_1 
       (.I0(\current_state_reg[222] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[192]),
        .O(D[192]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[217]_i_1 
       (.I0(\current_state_reg[222] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[193]),
        .O(D[193]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[218]_i_1 
       (.I0(\current_state_reg[222] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[194]),
        .O(D[194]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[219]_i_1 
       (.I0(\current_state_reg[222] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[195]),
        .O(D[195]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[220]_i_1 
       (.I0(\current_state_reg[222] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[196]),
        .O(D[196]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[221]_i_1 
       (.I0(\current_state_reg[222] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[197]),
        .O(D[197]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[222]_i_1 
       (.I0(\current_state_reg[222] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[198]),
        .O(D[198]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[223]_i_1 
       (.I0(\current_state_reg[351] [14]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [14]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[199]),
        .O(D[199]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[224]_i_1 
       (.I0(\current_state_reg[230] [0]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[200]),
        .O(D[200]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[225]_i_1 
       (.I0(\current_state_reg[230] [1]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[201]),
        .O(D[201]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[226]_i_1 
       (.I0(\current_state_reg[230] [2]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[202]),
        .O(D[202]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[227]_i_1 
       (.I0(\current_state_reg[230] [3]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[203]),
        .O(D[203]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[228]_i_1 
       (.I0(\current_state_reg[230] [4]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[204]),
        .O(D[204]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[229]_i_1 
       (.I0(\current_state_reg[230] [5]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[205]),
        .O(D[205]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[230]_i_1 
       (.I0(\current_state_reg[230] [6]),
        .I1(\current_state[231]_i_3_n_0 ),
        .I2(Q[206]),
        .O(D[206]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[231]_i_1 
       (.I0(\current_state_reg[351] [15]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [15]),
        .I3(\current_state[231]_i_3_n_0 ),
        .I4(Q[207]),
        .O(D[207]));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \current_state[231]_i_3 
       (.I0(\current_state[39]_i_2_n_0 ),
        .I1(\current_state_reg[38] [0]),
        .I2(\current_state_reg[38] [1]),
        .I3(\current_state_reg[38] [2]),
        .I4(\current_state_reg[38] [3]),
        .I5(\current_state_reg[38] [4]),
        .O(\current_state[231]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[232]_i_1 
       (.I0(\current_state_reg[238] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[208]),
        .O(D[208]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[233]_i_1 
       (.I0(\current_state_reg[238] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[209]),
        .O(D[209]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[234]_i_1 
       (.I0(\current_state_reg[238] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[210]),
        .O(D[210]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[235]_i_1 
       (.I0(\current_state_reg[238] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[211]),
        .O(D[211]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[236]_i_1 
       (.I0(\current_state_reg[238] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[212]),
        .O(D[212]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[237]_i_1 
       (.I0(\current_state_reg[238] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[213]),
        .O(D[213]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[238]_i_1 
       (.I0(\current_state_reg[238] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[214]),
        .O(D[214]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[239]_i_1 
       (.I0(\current_state_reg[351] [16]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [16]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[215]),
        .O(D[215]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[240]_i_1 
       (.I0(\current_state_reg[246] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[216]),
        .O(D[216]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[241]_i_1 
       (.I0(\current_state_reg[246] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[217]),
        .O(D[217]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[242]_i_1 
       (.I0(\current_state_reg[246] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[218]),
        .O(D[218]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[243]_i_1 
       (.I0(\current_state_reg[246] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[219]),
        .O(D[219]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[244]_i_1 
       (.I0(\current_state_reg[246] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[220]),
        .O(D[220]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[245]_i_1 
       (.I0(\current_state_reg[246] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[221]),
        .O(D[221]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[246]_i_1 
       (.I0(\current_state_reg[246] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[222]),
        .O(D[222]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[247]_i_1 
       (.I0(\current_state_reg[351] [17]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [17]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[223]),
        .O(D[223]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[248]_i_1 
       (.I0(\current_state_reg[254] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[224]),
        .O(D[224]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[249]_i_1 
       (.I0(\current_state_reg[254] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[225]),
        .O(D[225]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[24]_i_1 
       (.I0(current_magazine_number[0]),
        .I1(\current_state_reg[38] [0]),
        .I2(current_magazine_number[2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[250]_i_1 
       (.I0(\current_state_reg[254] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[226]),
        .O(D[226]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[251]_i_1 
       (.I0(\current_state_reg[254] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[227]),
        .O(D[227]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[252]_i_1 
       (.I0(\current_state_reg[254] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[228]),
        .O(D[228]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[253]_i_1 
       (.I0(\current_state_reg[254] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[229]),
        .O(D[229]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[254]_i_1 
       (.I0(\current_state_reg[254] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[230]),
        .O(D[230]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[255]_i_1 
       (.I0(\current_state_reg[351] [18]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [18]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[231]),
        .O(D[231]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[256]_i_1 
       (.I0(\current_state_reg[262] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[232]),
        .O(D[232]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[257]_i_1 
       (.I0(\current_state_reg[262] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[233]),
        .O(D[233]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[258]_i_1 
       (.I0(\current_state_reg[262] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[234]),
        .O(D[234]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[259]_i_1 
       (.I0(\current_state_reg[262] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[235]),
        .O(D[235]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[25]_i_1 
       (.I0(current_magazine_number[0]),
        .I1(\current_line_reg[0]_0 ),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[260]_i_1 
       (.I0(\current_state_reg[262] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[236]),
        .O(D[236]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[261]_i_1 
       (.I0(\current_state_reg[262] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[237]),
        .O(D[237]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[262]_i_1 
       (.I0(\current_state_reg[262] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[238]),
        .O(D[238]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[263]_i_1 
       (.I0(\current_state_reg[351] [19]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [19]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[239]),
        .O(D[239]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[264]_i_1 
       (.I0(\current_state_reg[270] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[240]),
        .O(D[240]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[265]_i_1 
       (.I0(\current_state_reg[270] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[241]),
        .O(D[241]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[266]_i_1 
       (.I0(\current_state_reg[270] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[242]),
        .O(D[242]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[267]_i_1 
       (.I0(\current_state_reg[270] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[243]),
        .O(D[243]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[268]_i_1 
       (.I0(\current_state_reg[270] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[244]),
        .O(D[244]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[269]_i_1 
       (.I0(\current_state_reg[270] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[245]),
        .O(D[245]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[26]_i_1 
       (.I0(\current_state_reg[38] [0]),
        .I1(current_magazine_number[0]),
        .I2(current_magazine_number[1]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[270]_i_1 
       (.I0(\current_state_reg[270] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[246]),
        .O(D[246]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[271]_i_1 
       (.I0(\current_state_reg[351] [20]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [20]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[247]),
        .O(D[247]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[272]_i_1 
       (.I0(\current_state_reg[278] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[248]),
        .O(D[248]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[273]_i_1 
       (.I0(\current_state_reg[278] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[249]),
        .O(D[249]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[274]_i_1 
       (.I0(\current_state_reg[278] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[250]),
        .O(D[250]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[275]_i_1 
       (.I0(\current_state_reg[278] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[251]),
        .O(D[251]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[276]_i_1 
       (.I0(\current_state_reg[278] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[252]),
        .O(D[252]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[277]_i_1 
       (.I0(\current_state_reg[278] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[253]),
        .O(D[253]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[278]_i_1 
       (.I0(\current_state_reg[278] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[254]),
        .O(D[254]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[279]_i_1 
       (.I0(\current_state_reg[351] [21]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [21]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[255]),
        .O(D[255]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[27]_i_1 
       (.I0(current_magazine_number[1]),
        .I1(\current_line_reg[0]_0 ),
        .I2(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[280]_i_1 
       (.I0(\current_state_reg[286] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[256]),
        .O(D[256]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[281]_i_1 
       (.I0(\current_state_reg[286] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[257]),
        .O(D[257]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[282]_i_1 
       (.I0(\current_state_reg[286] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[258]),
        .O(D[258]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[283]_i_1 
       (.I0(\current_state_reg[286] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[259]),
        .O(D[259]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[284]_i_1 
       (.I0(\current_state_reg[286] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[260]),
        .O(D[260]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[285]_i_1 
       (.I0(\current_state_reg[286] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[261]),
        .O(D[261]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[286]_i_1 
       (.I0(\current_state_reg[286] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[262]),
        .O(D[262]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[287]_i_1 
       (.I0(\current_state_reg[351] [22]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [22]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[263]),
        .O(D[263]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[288]_i_1 
       (.I0(\current_state_reg[294] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[264]),
        .O(D[264]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[289]_i_1 
       (.I0(\current_state_reg[294] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[265]),
        .O(D[265]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[28]_i_1 
       (.I0(current_magazine_number[2]),
        .I1(current_magazine_number[0]),
        .I2(current_magazine_number[1]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[290]_i_1 
       (.I0(\current_state_reg[294] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[266]),
        .O(D[266]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[291]_i_1 
       (.I0(\current_state_reg[294] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[267]),
        .O(D[267]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[292]_i_1 
       (.I0(\current_state_reg[294] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[268]),
        .O(D[268]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[293]_i_1 
       (.I0(\current_state_reg[294] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[269]),
        .O(D[269]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[294]_i_1 
       (.I0(\current_state_reg[294] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[270]),
        .O(D[270]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[295]_i_1 
       (.I0(\current_state_reg[351] [23]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [23]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[271]),
        .O(D[271]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[296]_i_1 
       (.I0(\current_state_reg[302] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[272]),
        .O(D[272]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[297]_i_1 
       (.I0(\current_state_reg[302] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[273]),
        .O(D[273]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[298]_i_1 
       (.I0(\current_state_reg[302] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[274]),
        .O(D[274]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[299]_i_1 
       (.I0(\current_state_reg[302] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[275]),
        .O(D[275]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[29]_i_1 
       (.I0(current_magazine_number[2]),
        .I1(\current_line_reg[0]_0 ),
        .I2(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[300]_i_1 
       (.I0(\current_state_reg[302] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[276]),
        .O(D[276]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[301]_i_1 
       (.I0(\current_state_reg[302] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[277]),
        .O(D[277]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[302]_i_1 
       (.I0(\current_state_reg[302] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[278]),
        .O(D[278]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[303]_i_1 
       (.I0(\current_state_reg[351] [24]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [24]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[279]),
        .O(D[279]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[304]_i_1 
       (.I0(\current_state_reg[310] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[280]),
        .O(D[280]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[305]_i_1 
       (.I0(\current_state_reg[310] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[281]),
        .O(D[281]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[306]_i_1 
       (.I0(\current_state_reg[310] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[282]),
        .O(D[282]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[307]_i_1 
       (.I0(\current_state_reg[310] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[283]),
        .O(D[283]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[308]_i_1 
       (.I0(\current_state_reg[310] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[284]),
        .O(D[284]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[309]_i_1 
       (.I0(\current_state_reg[310] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[285]),
        .O(D[285]));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \current_state[30]_i_1 
       (.I0(current_magazine_number[1]),
        .I1(\current_state_reg[38] [0]),
        .I2(current_magazine_number[2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[310]_i_1 
       (.I0(\current_state_reg[310] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[286]),
        .O(D[286]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[311]_i_1 
       (.I0(\current_state_reg[351] [25]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [25]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[287]),
        .O(D[287]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[312]_i_1 
       (.I0(\current_state_reg[318] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[288]),
        .O(D[288]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[313]_i_1 
       (.I0(\current_state_reg[318] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[289]),
        .O(D[289]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[314]_i_1 
       (.I0(\current_state_reg[318] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[290]),
        .O(D[290]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[315]_i_1 
       (.I0(\current_state_reg[318] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[291]),
        .O(D[291]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[316]_i_1 
       (.I0(\current_state_reg[318] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[292]),
        .O(D[292]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[317]_i_1 
       (.I0(\current_state_reg[318] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[293]),
        .O(D[293]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[318]_i_1 
       (.I0(\current_state_reg[318] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[294]),
        .O(D[294]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[319]_i_1 
       (.I0(\current_state_reg[351] [26]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [26]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[295]),
        .O(D[295]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[31]_i_1 
       (.I0(\current_state_reg[38] [0]),
        .I1(\current_line_reg[0]_0 ),
        .I2(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[320]_i_1 
       (.I0(\current_state_reg[326] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[296]),
        .O(D[296]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[321]_i_1 
       (.I0(\current_state_reg[326] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[297]),
        .O(D[297]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[322]_i_1 
       (.I0(\current_state_reg[326] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[298]),
        .O(D[298]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[323]_i_1 
       (.I0(\current_state_reg[326] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[299]),
        .O(D[299]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[324]_i_1 
       (.I0(\current_state_reg[326] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[300]),
        .O(D[300]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[325]_i_1 
       (.I0(\current_state_reg[326] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[301]),
        .O(D[301]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[326]_i_1 
       (.I0(\current_state_reg[326] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[302]),
        .O(D[302]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[327]_i_1 
       (.I0(\current_state_reg[351] [27]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [27]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[303]),
        .O(D[303]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[328]_i_1 
       (.I0(\current_state_reg[334] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[304]),
        .O(D[304]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[329]_i_1 
       (.I0(\current_state_reg[334] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[305]),
        .O(D[305]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[32]_i_1 
       (.I0(\current_state_reg[38] [1]),
        .I1(\current_state_reg[38] [4]),
        .I2(\current_state_reg[38] [3]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[330]_i_1 
       (.I0(\current_state_reg[334] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[306]),
        .O(D[306]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[331]_i_1 
       (.I0(\current_state_reg[334] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[307]),
        .O(D[307]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[332]_i_1 
       (.I0(\current_state_reg[334] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[308]),
        .O(D[308]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[333]_i_1 
       (.I0(\current_state_reg[334] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[309]),
        .O(D[309]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[334]_i_1 
       (.I0(\current_state_reg[334] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[310]),
        .O(D[310]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[335]_i_1 
       (.I0(\current_state_reg[351] [28]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [28]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[311]),
        .O(D[311]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[336]_i_1 
       (.I0(\current_state_reg[342] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[312]),
        .O(D[312]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[337]_i_1 
       (.I0(\current_state_reg[342] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[313]),
        .O(D[313]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[338]_i_1 
       (.I0(\current_state_reg[342] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[314]),
        .O(D[314]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[339]_i_1 
       (.I0(\current_state_reg[342] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[315]),
        .O(D[315]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[33]_i_1 
       (.I0(\current_state_reg[38] [1]),
        .I1(\current_line_reg[0]_0 ),
        .I2(Q[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[340]_i_1 
       (.I0(\current_state_reg[342] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[316]),
        .O(D[316]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[341]_i_1 
       (.I0(\current_state_reg[342] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[317]),
        .O(D[317]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[342]_i_1 
       (.I0(\current_state_reg[342] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[318]),
        .O(D[318]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[343]_i_1 
       (.I0(\current_state_reg[351] [29]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [29]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[319]),
        .O(D[319]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[344]_i_1 
       (.I0(\current_state_reg[350] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[320]),
        .O(D[320]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[345]_i_1 
       (.I0(\current_state_reg[350] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[321]),
        .O(D[321]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[346]_i_1 
       (.I0(\current_state_reg[350] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[322]),
        .O(D[322]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[347]_i_1 
       (.I0(\current_state_reg[350] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[323]),
        .O(D[323]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[348]_i_1 
       (.I0(\current_state_reg[350] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[324]),
        .O(D[324]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[349]_i_1 
       (.I0(\current_state_reg[350] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[325]),
        .O(D[325]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[34]_i_1 
       (.I0(\current_state_reg[38] [4]),
        .I1(\current_state_reg[38] [1]),
        .I2(\current_state_reg[38] [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[350]_i_1 
       (.I0(\current_state_reg[350] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[326]),
        .O(D[326]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[351]_i_1 
       (.I0(\current_state_reg[351] [30]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[351] [30]),
        .I3(\current_line_reg[0]_1 ),
        .I4(Q[327]),
        .O(D[327]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[352]_i_1 
       (.I0(\current_state_reg[358] [0]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[328]),
        .O(D[328]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[353]_i_1 
       (.I0(\current_state_reg[358] [1]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[329]),
        .O(D[329]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[354]_i_1 
       (.I0(\current_state_reg[358] [2]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[330]),
        .O(D[330]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[355]_i_1 
       (.I0(\current_state_reg[358] [3]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[331]),
        .O(D[331]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[356]_i_1 
       (.I0(\current_state_reg[358] [4]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[332]),
        .O(D[332]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[357]_i_1 
       (.I0(\current_state_reg[358] [5]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[333]),
        .O(D[333]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[358]_i_1 
       (.I0(\current_state_reg[358] [6]),
        .I1(\current_line_reg[0]_1 ),
        .I2(Q[334]),
        .O(D[334]));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \current_state[359]_i_3 
       (.I0(\current_state[39]_i_2_n_0 ),
        .I1(\current_state_reg[38] [0]),
        .I2(\current_state_reg[38] [1]),
        .I3(\current_state_reg[38] [2]),
        .I4(\current_state_reg[38] [3]),
        .I5(\current_state_reg[38] [4]),
        .O(\current_line_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[35]_i_1 
       (.I0(\current_state_reg[38] [2]),
        .I1(\current_line_reg[0]_0 ),
        .I2(Q[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \current_state[36]_i_1 
       (.I0(\current_state_reg[38] [3]),
        .I1(\current_state_reg[38] [1]),
        .I2(\current_state_reg[38] [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \current_state[37]_i_1 
       (.I0(\current_line_reg[0]_0 ),
        .I1(Q[13]),
        .I2(\current_state[39]_i_2_n_0 ),
        .I3(\current_state_reg[38] [3]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \current_state[38]_i_1 
       (.I0(\current_state_reg[38] [2]),
        .I1(\current_state_reg[38] [4]),
        .I2(\current_state_reg[38] [3]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \current_state[39]_i_1 
       (.I0(\current_line_reg[0]_0 ),
        .I1(Q[15]),
        .I2(\current_state[39]_i_2_n_0 ),
        .I3(\current_state_reg[38] [4]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \current_state[39]_i_2 
       (.I0(\current_state[39]_i_3_n_0 ),
        .I1(\current_state[39]_i_4_n_0 ),
        .I2(\current_state[39]_i_5_n_0 ),
        .I3(\current_state[39]_i_6_n_0 ),
        .I4(\current_state[39]_i_7_n_0 ),
        .I5(\current_state[39]_i_8_n_0 ),
        .O(\current_state[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \current_state[39]_i_3 
       (.I0(current_line_reg[9]),
        .I1(current_line_reg[7]),
        .I2(current_column_reg[6]),
        .I3(current_column_reg[3]),
        .I4(current_column_reg[4]),
        .O(\current_state[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \current_state[39]_i_4 
       (.I0(current_column_reg[5]),
        .I1(current_column_reg[7]),
        .I2(current_column_reg[8]),
        .I3(current_column_reg[2]),
        .I4(current_column_reg[1]),
        .I5(current_column_reg[0]),
        .O(\current_state[39]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE0FC)) 
    \current_state[39]_i_5 
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[6]),
        .I3(current_line_reg[8]),
        .O(\current_state[39]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0A5A5A5)) 
    \current_state[39]_i_6 
       (.I0(current_line_reg[3]),
        .I1(current_line_reg[0]),
        .I2(current_line_reg[4]),
        .I3(current_line_reg[2]),
        .I4(current_line_reg[1]),
        .I5(current_line_reg[8]),
        .O(\current_state[39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[39]_i_7 
       (.I0(current_line_reg[8]),
        .I1(current_line_reg[6]),
        .O(\current_state[39]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[39]_i_8 
       (.I0(current_line_reg[4]),
        .I1(current_line_reg[5]),
        .I2(current_line_reg[3]),
        .I3(current_line_reg[2]),
        .I4(current_line_reg[1]),
        .O(\current_state[39]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[40]_i_1 
       (.I0(teletext_page_header_data[0]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[46] [0]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[41]_i_1 
       (.I0(\current_state_reg[55] [0]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[46] [1]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[42]_i_1 
       (.I0(teletext_page_header_data[1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[46] [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[43]_i_1 
       (.I0(\current_state_reg[55] [1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[46] [3]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[44]_i_1 
       (.I0(teletext_page_header_data[2]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[46] [4]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[45]_i_1 
       (.I0(\current_state_reg[55] [2]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[46] [5]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[46]_i_1 
       (.I0(teletext_page_header_data[3]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[46] [6]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[47]_i_1 
       (.I0(\current_state_reg[55] [3]),
        .I1(\current_state_reg[40] ),
        .I2(PACKET_DATA[0]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[48]_i_1 
       (.I0(teletext_page_header_data[4]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[54] [0]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[49]_i_1 
       (.I0(\current_state_reg[55] [4]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[54] [1]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[50]_i_1 
       (.I0(teletext_page_header_data[5]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[54] [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[51]_i_1 
       (.I0(\current_state_reg[55] [5]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[54] [3]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[52]_i_1 
       (.I0(teletext_page_header_data[6]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[54] [4]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[53]_i_1 
       (.I0(\current_state_reg[55] [6]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[54] [5]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[54]_i_1 
       (.I0(teletext_page_header_data[7]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[54] [6]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[55]_i_1 
       (.I0(\current_state_reg[55] [7]),
        .I1(\current_state_reg[40] ),
        .I2(PACKET_DATA[1]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[31]),
        .O(D[31]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \current_state[56]_i_1 
       (.I0(\current_state_reg[62] [0]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[32]),
        .O(D[32]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[57]_i_1 
       (.I0(\current_state_reg[62] [1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[33]),
        .O(D[33]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \current_state[58]_i_1 
       (.I0(\current_state_reg[62] [2]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[34]),
        .O(D[34]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[59]_i_1 
       (.I0(\current_state_reg[62] [3]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[35]),
        .O(D[35]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \current_state[60]_i_1 
       (.I0(\current_state_reg[62] [4]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[36]),
        .O(D[36]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[61]_i_1 
       (.I0(\current_state_reg[62] [5]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[37]),
        .O(D[37]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[62]_i_1 
       (.I0(\current_state_reg[62] [6]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[38]),
        .O(D[38]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[63]_i_1 
       (.I0(PACKET_DATA[2]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[39]),
        .O(D[39]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \current_state[64]_i_1 
       (.I0(\current_state_reg[64] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[70] [0]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[40]),
        .O(D[40]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[65]_i_1 
       (.I0(\current_state_reg[70] [1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[41]),
        .O(D[41]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \current_state[66]_i_1 
       (.I0(\current_state_reg[64] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[70] [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[42]),
        .O(D[42]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[67]_i_1 
       (.I0(\current_state_reg[70] [3]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[43]),
        .O(D[43]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \current_state[68]_i_1 
       (.I0(\current_state_reg[70] [4]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[44]),
        .O(D[44]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[69]_i_1 
       (.I0(\current_state_reg[70] [5]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[45]),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[70]_i_1 
       (.I0(\current_state_reg[64] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[70] [6]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[46]),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[71]_i_1 
       (.I0(\current_state_reg[64] ),
        .I1(\current_state_reg[40] ),
        .I2(PACKET_DATA[3]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[47]),
        .O(D[47]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \current_state[72]_i_1 
       (.I0(\current_state_reg[78] [0]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[48]),
        .O(D[48]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[73]_i_1 
       (.I0(\current_state_reg[78] [1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[49]),
        .O(D[49]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \current_state[74]_i_1 
       (.I0(\current_state_reg[78] [2]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[50]),
        .O(D[50]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[75]_i_1 
       (.I0(\current_state_reg[78] [3]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[51]),
        .O(D[51]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \current_state[76]_i_1 
       (.I0(\current_state_reg[78] [4]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[52]),
        .O(D[52]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[77]_i_1 
       (.I0(\current_state_reg[78] [5]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[53]),
        .O(D[53]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[78]_i_1 
       (.I0(\current_state_reg[78] [6]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[54]),
        .O(D[54]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[79]_i_1 
       (.I0(PACKET_DATA[4]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[55]),
        .O(D[55]));
  LUT6 #(
    .INIT(64'h9F90FFFF9F900000)) 
    \current_state[80]_i_1 
       (.I0(\current_state_reg[86] ),
        .I1(\current_state_reg[86]_0 ),
        .I2(\current_state_reg[40] ),
        .I3(\current_state_reg[86]_1 [0]),
        .I4(\current_line_reg[0]_0 ),
        .I5(Q[56]),
        .O(D[56]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[81]_i_1 
       (.I0(\current_state_reg[86]_1 [1]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[57]),
        .O(D[57]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \current_state[82]_i_1 
       (.I0(\current_state_reg[86]_0 ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[86]_1 [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[58]),
        .O(D[58]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_state[83]_i_1 
       (.I0(\current_state_reg[86]_1 [3]),
        .I1(\current_state_reg[40] ),
        .I2(\current_line_reg[0]_0 ),
        .I3(Q[59]),
        .O(D[59]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \current_state[84]_i_1 
       (.I0(\current_state_reg[86] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[86]_1 [4]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[60]),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[85]_i_1 
       (.I0(\current_state_reg[86] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[86]_1 [5]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[61]),
        .O(D[61]));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    \current_state[86]_i_1 
       (.I0(\current_state_reg[86]_0 ),
        .I1(\current_state_reg[86] ),
        .I2(\current_state_reg[40] ),
        .I3(\current_state_reg[86]_1 [6]),
        .I4(\current_line_reg[0]_0 ),
        .I5(Q[62]),
        .O(D[62]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[87]_i_1 
       (.I0(\current_state_reg[86]_0 ),
        .I1(\current_state_reg[40] ),
        .I2(PACKET_DATA[5]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[63]),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[88]_i_1 
       (.I0(teletext_page_header_data[8]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[94] [0]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[64]),
        .O(D[64]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[89]_i_1 
       (.I0(\CONTROL_BITS[SUPPRESS_HEADER] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[94] [1]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[65]),
        .O(D[65]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[90]_i_1 
       (.I0(teletext_page_header_data[9]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[94] [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[66]),
        .O(D[66]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[91]_i_1 
       (.I0(\CONTROL_BITS[UPDATE_INDICATOR] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[94] [3]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[67]),
        .O(D[67]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[92]_i_1 
       (.I0(teletext_page_header_data[10]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[94] [4]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[68]),
        .O(D[68]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[93]_i_1 
       (.I0(\CONTROL_BITS[INTERRUPTED_SEQUENCE] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[94] [5]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[69]),
        .O(D[69]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[94]_i_1 
       (.I0(teletext_page_header_data[11]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[94] [6]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[70]),
        .O(D[70]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[95]_i_1 
       (.I0(\CONTROL_BITS[INHIBIT_DISPLAY] ),
        .I1(\current_state_reg[40] ),
        .I2(PACKET_DATA[6]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[71]),
        .O(D[71]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[96]_i_1 
       (.I0(teletext_page_header_data[12]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[102] [0]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[72]),
        .O(D[72]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[97]_i_1 
       (.I0(\CONTROL_BITS[MAGAZINE_SERIAL] ),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[102] [1]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[73]),
        .O(D[73]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[98]_i_1 
       (.I0(teletext_page_header_data[13]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[102] [2]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[74]),
        .O(D[74]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \current_state[99]_i_1 
       (.I0(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [0]),
        .I1(\current_state_reg[40] ),
        .I2(\current_state_reg[102] [3]),
        .I3(\current_line_reg[0]_0 ),
        .I4(Q[75]),
        .O(D[75]));
endmodule

(* ORIG_REF_NAME = "teletext_controller" *) 
module system_teletext_controller_0_0_teletext_controller
   (DATA_OUT,
    SYNC_OUT,
    current_axi_awready_reg_0,
    current_axi_dwready_reg_0,
    S_AXI_BVALID,
    S_AXI_BRESP,
    S_AXI_ARESETN,
    TELETEXT_CLK,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY);
  output DATA_OUT;
  output SYNC_OUT;
  output current_axi_awready_reg_0;
  output current_axi_dwready_reg_0;
  output S_AXI_BVALID;
  output [0:0]S_AXI_BRESP;
  input S_AXI_ARESETN;
  input TELETEXT_CLK;
  input S_AXI_ACLK;
  input [3:0]S_AXI_AWADDR;
  input [12:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;

  wire DATA_OUT;
  wire [63:7]PACKET_DATA;
  wire SYNC_OUT;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [0:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [12:0]S_AXI_WDATA;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire TELETEXT_CLK;
  wire current_axi_awready_i_1_n_0;
  wire current_axi_awready_reg_0;
  wire current_axi_bvalid_i_1_n_0;
  wire current_axi_dwready_i_1_n_0;
  wire current_axi_dwready_reg_0;
  wire \current_axi_write_response[1]_i_1_n_0 ;
  wire \current_axi_write_response[1]_i_2_n_0 ;
  wire [2:0]current_magazine_number;
  wire \current_magazine_number[0]_i_1_n_0 ;
  wire \current_magazine_number[1]_i_1_n_0 ;
  wire \current_magazine_number[2]_i_1_n_0 ;
  wire \current_page_control_bits[ERASE_PAGE]_i_1_n_0 ;
  wire \current_page_control_bits[ERASE_PAGE]_i_2_n_0 ;
  wire \current_page_control_bits[INHIBIT_DISPLAY]_i_1_n_0 ;
  wire \current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1_n_0 ;
  wire \current_page_control_bits[MAGAZINE_SERIAL]_i_1_n_0 ;
  wire \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1_n_0 ;
  wire \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1_n_0 ;
  wire \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1_n_0 ;
  wire \current_page_control_bits[NEWSFLASH]_i_1_n_0 ;
  wire \current_page_control_bits[SUBTITLE]_i_1_n_0 ;
  wire \current_page_control_bits[SUPPRESS_HEADER]_i_1_n_0 ;
  wire \current_page_control_bits[UPDATE_INDICATOR]_i_1_n_0 ;
  wire \current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0 ;
  wire \current_page_control_bits_reg[ERASE_PAGE_n_0_] ;
  wire \current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_] ;
  wire \current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_] ;
  wire \current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_] ;
  wire \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0] ;
  wire \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1] ;
  wire \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2] ;
  wire \current_page_control_bits_reg[NEWSFLASH_n_0_] ;
  wire \current_page_control_bits_reg[SUBTITLE_n_0_] ;
  wire \current_page_control_bits_reg[SUPPRESS_HEADER_n_0_] ;
  wire \current_page_control_bits_reg[UPDATE_INDICATOR_n_0_] ;
  wire [7:0]current_page_number;
  wire \current_page_number[7]_i_2_n_0 ;
  wire [359:359]\data_out_shift/next_state ;
  wire \data_out_shift/p_0_in ;
  wire [4:0]line_index;
  wire next_axi_write_response;
  wire next_magazine_number;
  wire \next_page_control_bits[ERASE_PAGE]118_out ;
  wire \next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET] ;
  wire next_page_number;
  wire [3:0]p_0_in_40;
  wire teletext_gen_n_6;
  wire [6:0]\teletext_line[0]_39 ;
  wire [6:0]\teletext_line[10]_29 ;
  wire [6:0]\teletext_line[11]_28 ;
  wire [6:0]\teletext_line[12]_27 ;
  wire [6:0]\teletext_line[13]_26 ;
  wire [6:0]\teletext_line[14]_25 ;
  wire [6:0]\teletext_line[15]_24 ;
  wire [6:0]\teletext_line[16]_23 ;
  wire [6:0]\teletext_line[17]_22 ;
  wire [6:0]\teletext_line[18]_21 ;
  wire [6:0]\teletext_line[19]_20 ;
  wire [6:0]\teletext_line[1]_38 ;
  wire [6:0]\teletext_line[20]_19 ;
  wire [6:0]\teletext_line[21]_18 ;
  wire [6:0]\teletext_line[22]_17 ;
  wire [6:0]\teletext_line[23]_16 ;
  wire [6:0]\teletext_line[24]_15 ;
  wire [6:0]\teletext_line[25]_14 ;
  wire [6:0]\teletext_line[26]_13 ;
  wire [6:0]\teletext_line[27]_12 ;
  wire [6:0]\teletext_line[28]_11 ;
  wire [6:0]\teletext_line[29]_10 ;
  wire [6:0]\teletext_line[2]_37 ;
  wire [6:0]\teletext_line[30]_9 ;
  wire [6:0]\teletext_line[31]_8 ;
  wire [6:0]\teletext_line[32]_7 ;
  wire [6:0]\teletext_line[33]_6 ;
  wire [6:0]\teletext_line[34]_5 ;
  wire [6:0]\teletext_line[35]_4 ;
  wire [6:0]\teletext_line[36]_3 ;
  wire [6:0]\teletext_line[37]_2 ;
  wire [6:0]\teletext_line[38]_1 ;
  wire [6:0]\teletext_line[39]_0 ;
  wire [6:0]\teletext_line[3]_36 ;
  wire [6:0]\teletext_line[4]_35 ;
  wire [6:0]\teletext_line[5]_34 ;
  wire [6:0]\teletext_line[6]_33 ;
  wire [6:0]\teletext_line[7]_32 ;
  wire [6:0]\teletext_line[8]_31 ;
  wire [6:0]\teletext_line[9]_30 ;
  wire [311:71]teletext_page_header_data;

  LUT4 #(
    .INIT(16'h08F8)) 
    current_axi_awready_i_1
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_BREADY),
        .I2(current_axi_awready_reg_0),
        .I3(S_AXI_AWVALID),
        .O(current_axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    current_axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(current_axi_awready_i_1_n_0),
        .Q(current_axi_awready_reg_0),
        .S(\data_out_shift/p_0_in ));
  LUT4 #(
    .INIT(16'hF222)) 
    current_axi_bvalid_i_1
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_BREADY),
        .I2(current_axi_dwready_reg_0),
        .I3(S_AXI_WVALID),
        .O(current_axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(current_axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(\data_out_shift/p_0_in ));
  LUT4 #(
    .INIT(16'hF222)) 
    current_axi_dwready_i_1
       (.I0(current_axi_dwready_reg_0),
        .I1(S_AXI_WVALID),
        .I2(current_axi_awready_reg_0),
        .I3(S_AXI_AWVALID),
        .O(current_axi_dwready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_axi_dwready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(current_axi_dwready_i_1_n_0),
        .Q(current_axi_dwready_reg_0),
        .R(\data_out_shift/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_axi_write_address[5]_i_1 
       (.I0(current_axi_awready_reg_0),
        .I1(S_AXI_AWVALID),
        .O(\next_page_control_bits[ERASE_PAGE]118_out ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_write_address_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\next_page_control_bits[ERASE_PAGE]118_out ),
        .D(S_AXI_AWADDR[0]),
        .Q(p_0_in_40[0]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_write_address_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\next_page_control_bits[ERASE_PAGE]118_out ),
        .D(S_AXI_AWADDR[1]),
        .Q(p_0_in_40[1]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_write_address_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\next_page_control_bits[ERASE_PAGE]118_out ),
        .D(S_AXI_AWADDR[2]),
        .Q(p_0_in_40[2]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_write_address_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\next_page_control_bits[ERASE_PAGE]118_out ),
        .D(S_AXI_AWADDR[3]),
        .Q(p_0_in_40[3]),
        .R(\data_out_shift/p_0_in ));
  LUT6 #(
    .INIT(64'hFF8AFFFFFF8A0000)) 
    \current_axi_write_response[1]_i_1 
       (.I0(p_0_in_40[0]),
        .I1(p_0_in_40[1]),
        .I2(p_0_in_40[2]),
        .I3(\current_axi_write_response[1]_i_2_n_0 ),
        .I4(next_axi_write_response),
        .I5(S_AXI_BRESP),
        .O(\current_axi_write_response[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFC3C3C3C0)) 
    \current_axi_write_response[1]_i_2 
       (.I0(S_AXI_WSTRB[1]),
        .I1(p_0_in_40[3]),
        .I2(p_0_in_40[2]),
        .I3(S_AXI_WSTRB[3]),
        .I4(S_AXI_WSTRB[2]),
        .I5(p_0_in_40[1]),
        .O(\current_axi_write_response[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \current_axi_write_response[1]_i_3 
       (.I0(current_axi_dwready_reg_0),
        .I1(S_AXI_WVALID),
        .I2(current_axi_awready_reg_0),
        .I3(S_AXI_AWVALID),
        .O(next_axi_write_response));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_write_response_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_axi_write_response[1]_i_1_n_0 ),
        .Q(S_AXI_BRESP),
        .R(\data_out_shift/p_0_in ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_magazine_number[0]_i_1 
       (.I0(S_AXI_WDATA[8]),
        .I1(next_magazine_number),
        .I2(current_magazine_number[0]),
        .O(\current_magazine_number[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_magazine_number[1]_i_1 
       (.I0(S_AXI_WDATA[9]),
        .I1(next_magazine_number),
        .I2(current_magazine_number[1]),
        .O(\current_magazine_number[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_magazine_number[2]_i_1 
       (.I0(S_AXI_WDATA[10]),
        .I1(next_magazine_number),
        .I2(current_magazine_number[2]),
        .O(\current_magazine_number[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \current_magazine_number[2]_i_2 
       (.I0(S_AXI_WSTRB[1]),
        .I1(p_0_in_40[2]),
        .I2(p_0_in_40[0]),
        .I3(p_0_in_40[1]),
        .I4(\current_page_number[7]_i_2_n_0 ),
        .O(next_magazine_number));
  FDSE #(
    .INIT(1'b1)) 
    \current_magazine_number_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_magazine_number[0]_i_1_n_0 ),
        .Q(current_magazine_number[0]),
        .S(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_magazine_number_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_magazine_number[1]_i_1_n_0 ),
        .Q(current_magazine_number[1]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_magazine_number_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_magazine_number[2]_i_1_n_0 ),
        .Q(current_magazine_number[2]),
        .R(\data_out_shift/p_0_in ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[ERASE_PAGE]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(\current_page_control_bits[ERASE_PAGE]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[0]),
        .I3(\current_page_control_bits_reg[ERASE_PAGE_n_0_] ),
        .O(\current_page_control_bits[ERASE_PAGE]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \current_page_control_bits[ERASE_PAGE]_i_2 
       (.I0(p_0_in_40[1]),
        .I1(p_0_in_40[2]),
        .I2(\current_page_number[7]_i_2_n_0 ),
        .I3(p_0_in_40[0]),
        .O(\current_page_control_bits[ERASE_PAGE]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[INHIBIT_DISPLAY]_i_1 
       (.I0(S_AXI_WDATA[11]),
        .I1(\current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[2]),
        .I3(\current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_] ),
        .O(\current_page_control_bits[INHIBIT_DISPLAY]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1 
       (.I0(S_AXI_WDATA[8]),
        .I1(\current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[1]),
        .I3(\current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_] ),
        .O(\current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[MAGAZINE_SERIAL]_i_1 
       (.I0(S_AXI_WDATA[12]),
        .I1(\current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[3]),
        .I3(\current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_] ),
        .O(\current_page_control_bits[MAGAZINE_SERIAL]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(\next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET] ),
        .I2(\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0] ),
        .O(\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(\next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET] ),
        .I2(\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1] ),
        .O(\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(\next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET] ),
        .I2(\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2] ),
        .O(\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_2 
       (.I0(p_0_in_40[2]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in_40[1]),
        .I3(p_0_in_40[0]),
        .I4(\current_page_number[7]_i_2_n_0 ),
        .O(\next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET] ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[NEWSFLASH]_i_1 
       (.I0(S_AXI_WDATA[8]),
        .I1(\current_page_control_bits[ERASE_PAGE]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[1]),
        .I3(\current_page_control_bits_reg[NEWSFLASH_n_0_] ),
        .O(\current_page_control_bits[NEWSFLASH]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[SUBTITLE]_i_1 
       (.I0(S_AXI_WDATA[11]),
        .I1(\current_page_control_bits[ERASE_PAGE]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[2]),
        .I3(\current_page_control_bits_reg[SUBTITLE_n_0_] ),
        .O(\current_page_control_bits[SUBTITLE]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[SUPPRESS_HEADER]_i_1 
       (.I0(S_AXI_WDATA[12]),
        .I1(\current_page_control_bits[ERASE_PAGE]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[3]),
        .I3(\current_page_control_bits_reg[SUPPRESS_HEADER_n_0_] ),
        .O(\current_page_control_bits[SUPPRESS_HEADER]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_page_control_bits[UPDATE_INDICATOR]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(\current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[0]),
        .I3(\current_page_control_bits_reg[UPDATE_INDICATOR_n_0_] ),
        .O(\current_page_control_bits[UPDATE_INDICATOR]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \current_page_control_bits[UPDATE_INDICATOR]_i_2 
       (.I0(p_0_in_40[1]),
        .I1(p_0_in_40[2]),
        .I2(\current_page_number[7]_i_2_n_0 ),
        .I3(p_0_in_40[0]),
        .O(\current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[ERASE_PAGE] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[ERASE_PAGE]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[ERASE_PAGE_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[INHIBIT_DISPLAY] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[INHIBIT_DISPLAY]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[INTERRUPTED_SEQUENCE] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[MAGAZINE_SERIAL] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[MAGAZINE_SERIAL]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[NEWSFLASH] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[NEWSFLASH]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[NEWSFLASH_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[SUBTITLE] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[SUBTITLE]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[SUBTITLE_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[SUPPRESS_HEADER] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[SUPPRESS_HEADER]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[SUPPRESS_HEADER_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_control_bits_reg[UPDATE_INDICATOR] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\current_page_control_bits[UPDATE_INDICATOR]_i_1_n_0 ),
        .Q(\current_page_control_bits_reg[UPDATE_INDICATOR_n_0_] ),
        .R(\data_out_shift/p_0_in ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \current_page_number[7]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(p_0_in_40[2]),
        .I2(p_0_in_40[0]),
        .I3(p_0_in_40[1]),
        .I4(\current_page_number[7]_i_2_n_0 ),
        .O(next_page_number));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h00007000)) 
    \current_page_number[7]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(current_axi_awready_reg_0),
        .I2(S_AXI_WVALID),
        .I3(current_axi_dwready_reg_0),
        .I4(p_0_in_40[3]),
        .O(\current_page_number[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[0]),
        .Q(current_page_number[0]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[1]),
        .Q(current_page_number[1]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[2]),
        .Q(current_page_number[2]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[3]),
        .Q(current_page_number[3]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[4]),
        .Q(current_page_number[4]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[5]),
        .Q(current_page_number[5]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[6]),
        .Q(current_page_number[6]),
        .R(\data_out_shift/p_0_in ));
  FDRE #(
    .INIT(1'b0)) 
    \current_page_number_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(next_page_number),
        .D(S_AXI_WDATA[7]),
        .Q(current_page_number[7]),
        .R(\data_out_shift/p_0_in ));
  system_teletext_controller_0_0_framebuffer framebuf
       (.D(\data_out_shift/next_state ),
        .PACKET_DATA({PACKET_DATA[63],PACKET_DATA[55],PACKET_DATA[47],PACKET_DATA[39],PACKET_DATA[31],PACKET_DATA[23],PACKET_DATA[15],PACKET_DATA[7]}),
        .Q(\teletext_line[39]_0 ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .TELETEXT_CLK(TELETEXT_CLK),
        .\current_line_out_reg[0][6]_0 (\teletext_line[0]_39 ),
        .\current_line_out_reg[10][6]_0 (\teletext_line[10]_29 ),
        .\current_line_out_reg[11][6]_0 (\teletext_line[11]_28 ),
        .\current_line_out_reg[12][6]_0 (\teletext_line[12]_27 ),
        .\current_line_out_reg[13][6]_0 (\teletext_line[13]_26 ),
        .\current_line_out_reg[14][6]_0 (\teletext_line[14]_25 ),
        .\current_line_out_reg[15][6]_0 (\teletext_line[15]_24 ),
        .\current_line_out_reg[16][6]_0 (\teletext_line[16]_23 ),
        .\current_line_out_reg[17][6]_0 (\teletext_line[17]_22 ),
        .\current_line_out_reg[18][6]_0 (\teletext_line[18]_21 ),
        .\current_line_out_reg[19][6]_0 (\teletext_line[19]_20 ),
        .\current_line_out_reg[1][6]_0 (\teletext_line[1]_38 ),
        .\current_line_out_reg[20][6]_0 (\teletext_line[20]_19 ),
        .\current_line_out_reg[21][6]_0 (\teletext_line[21]_18 ),
        .\current_line_out_reg[22][6]_0 (\teletext_line[22]_17 ),
        .\current_line_out_reg[23][6]_0 (\teletext_line[23]_16 ),
        .\current_line_out_reg[24][6]_0 (\teletext_line[24]_15 ),
        .\current_line_out_reg[25][6]_0 (\teletext_line[25]_14 ),
        .\current_line_out_reg[26][6]_0 (\teletext_line[26]_13 ),
        .\current_line_out_reg[27][6]_0 (\teletext_line[27]_12 ),
        .\current_line_out_reg[28][6]_0 (\teletext_line[28]_11 ),
        .\current_line_out_reg[29][6]_0 (\teletext_line[29]_10 ),
        .\current_line_out_reg[2][6]_0 (\teletext_line[2]_37 ),
        .\current_line_out_reg[30][6]_0 (\teletext_line[30]_9 ),
        .\current_line_out_reg[31][6]_0 (\teletext_line[31]_8 ),
        .\current_line_out_reg[32][6]_0 (\teletext_line[32]_7 ),
        .\current_line_out_reg[33][6]_0 (\teletext_line[33]_6 ),
        .\current_line_out_reg[34][6]_0 (\teletext_line[34]_5 ),
        .\current_line_out_reg[35][6]_0 (\teletext_line[35]_4 ),
        .\current_line_out_reg[36][6]_0 (\teletext_line[36]_3 ),
        .\current_line_out_reg[37][6]_0 (\teletext_line[37]_2 ),
        .\current_line_out_reg[38][6]_0 (\teletext_line[38]_1 ),
        .\current_line_out_reg[3][6]_0 (\teletext_line[3]_36 ),
        .\current_line_out_reg[4][6]_0 (\teletext_line[4]_35 ),
        .\current_line_out_reg[5][6]_0 (\teletext_line[5]_34 ),
        .\current_line_out_reg[6][6]_0 (\teletext_line[6]_33 ),
        .\current_line_out_reg[7][6]_0 (\teletext_line[7]_32 ),
        .\current_line_out_reg[8][6]_0 (\teletext_line[8]_31 ),
        .\current_line_out_reg[9][6]_0 (\teletext_line[9]_30 ),
        .\current_out_index_reg[4]_0 (line_index),
        .\current_state_reg[359] (teletext_gen_n_6),
        .p_0_in(\data_out_shift/p_0_in ),
        .teletext_page_header_data({teletext_page_header_data[311],teletext_page_header_data[303],teletext_page_header_data[295],teletext_page_header_data[287],teletext_page_header_data[279],teletext_page_header_data[271],teletext_page_header_data[263],teletext_page_header_data[255],teletext_page_header_data[247],teletext_page_header_data[239],teletext_page_header_data[231],teletext_page_header_data[223],teletext_page_header_data[215],teletext_page_header_data[207],teletext_page_header_data[199],teletext_page_header_data[191],teletext_page_header_data[183],teletext_page_header_data[175],teletext_page_header_data[167],teletext_page_header_data[159],teletext_page_header_data[151],teletext_page_header_data[143],teletext_page_header_data[135],teletext_page_header_data[127],teletext_page_header_data[119],teletext_page_header_data[111],teletext_page_header_data[103],teletext_page_header_data[95],teletext_page_header_data[87],teletext_page_header_data[79],teletext_page_header_data[71]}));
  system_teletext_controller_0_0_teletext_generator teletext_gen
       (.\CONTROL_BITS[INHIBIT_DISPLAY] (\current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_] ),
        .\CONTROL_BITS[INTERRUPTED_SEQUENCE] (\current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_] ),
        .\CONTROL_BITS[MAGAZINE_SERIAL] (\current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_] ),
        .\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ({\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2] ,\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1] ,\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0] }),
        .\CONTROL_BITS[SUPPRESS_HEADER] (\current_page_control_bits_reg[SUPPRESS_HEADER_n_0_] ),
        .\CONTROL_BITS[UPDATE_INDICATOR] (\current_page_control_bits_reg[UPDATE_INDICATOR_n_0_] ),
        .D(\data_out_shift/next_state ),
        .DATA_OUT(DATA_OUT),
        .PACKET_DATA({PACKET_DATA[63],PACKET_DATA[55],PACKET_DATA[47],PACKET_DATA[39],PACKET_DATA[31],PACKET_DATA[23],PACKET_DATA[15],PACKET_DATA[7]}),
        .Q(line_index),
        .SYNC_OUT(SYNC_OUT),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .TELETEXT_CLK(TELETEXT_CLK),
        .\current_line_reg[0]_0 (teletext_gen_n_6),
        .current_magazine_number(current_magazine_number),
        .\current_state_reg[102] (\teletext_line[7]_32 ),
        .\current_state_reg[110] (\teletext_line[8]_31 ),
        .\current_state_reg[118] (\teletext_line[9]_30 ),
        .\current_state_reg[126] (\teletext_line[10]_29 ),
        .\current_state_reg[134] (\teletext_line[11]_28 ),
        .\current_state_reg[142] (\teletext_line[12]_27 ),
        .\current_state_reg[150] (\teletext_line[13]_26 ),
        .\current_state_reg[158] (\teletext_line[14]_25 ),
        .\current_state_reg[166] (\teletext_line[15]_24 ),
        .\current_state_reg[174] (\teletext_line[16]_23 ),
        .\current_state_reg[182] (\teletext_line[17]_22 ),
        .\current_state_reg[190] (\teletext_line[18]_21 ),
        .\current_state_reg[198] (\teletext_line[19]_20 ),
        .\current_state_reg[206] (\teletext_line[20]_19 ),
        .\current_state_reg[214] (\teletext_line[21]_18 ),
        .\current_state_reg[222] (\teletext_line[22]_17 ),
        .\current_state_reg[230] (\teletext_line[23]_16 ),
        .\current_state_reg[238] (\teletext_line[24]_15 ),
        .\current_state_reg[246] (\teletext_line[25]_14 ),
        .\current_state_reg[254] (\teletext_line[26]_13 ),
        .\current_state_reg[262] (\teletext_line[27]_12 ),
        .\current_state_reg[270] (\teletext_line[28]_11 ),
        .\current_state_reg[278] (\teletext_line[29]_10 ),
        .\current_state_reg[286] (\teletext_line[30]_9 ),
        .\current_state_reg[294] (\teletext_line[31]_8 ),
        .\current_state_reg[302] (\teletext_line[32]_7 ),
        .\current_state_reg[310] (\teletext_line[33]_6 ),
        .\current_state_reg[318] (\teletext_line[34]_5 ),
        .\current_state_reg[326] (\teletext_line[35]_4 ),
        .\current_state_reg[334] (\teletext_line[36]_3 ),
        .\current_state_reg[342] (\teletext_line[37]_2 ),
        .\current_state_reg[350] (\teletext_line[38]_1 ),
        .\current_state_reg[351] ({teletext_page_header_data[311],teletext_page_header_data[303],teletext_page_header_data[295],teletext_page_header_data[287],teletext_page_header_data[279],teletext_page_header_data[271],teletext_page_header_data[263],teletext_page_header_data[255],teletext_page_header_data[247],teletext_page_header_data[239],teletext_page_header_data[231],teletext_page_header_data[223],teletext_page_header_data[215],teletext_page_header_data[207],teletext_page_header_data[199],teletext_page_header_data[191],teletext_page_header_data[183],teletext_page_header_data[175],teletext_page_header_data[167],teletext_page_header_data[159],teletext_page_header_data[151],teletext_page_header_data[143],teletext_page_header_data[135],teletext_page_header_data[127],teletext_page_header_data[119],teletext_page_header_data[111],teletext_page_header_data[103],teletext_page_header_data[95],teletext_page_header_data[87],teletext_page_header_data[79],teletext_page_header_data[71]}),
        .\current_state_reg[358] (\teletext_line[39]_0 ),
        .\current_state_reg[46] (\teletext_line[0]_39 ),
        .\current_state_reg[54] (\teletext_line[1]_38 ),
        .\current_state_reg[55] (current_page_number),
        .\current_state_reg[62] (\teletext_line[2]_37 ),
        .\current_state_reg[64] (\current_page_control_bits_reg[ERASE_PAGE_n_0_] ),
        .\current_state_reg[70] (\teletext_line[3]_36 ),
        .\current_state_reg[78] (\teletext_line[4]_35 ),
        .\current_state_reg[86] (\current_page_control_bits_reg[NEWSFLASH_n_0_] ),
        .\current_state_reg[86]_0 (\current_page_control_bits_reg[SUBTITLE_n_0_] ),
        .\current_state_reg[86]_1 (\teletext_line[5]_34 ),
        .\current_state_reg[94] (\teletext_line[6]_33 ),
        .p_0_in(\data_out_shift/p_0_in ));
endmodule

(* ORIG_REF_NAME = "teletext_generator" *) 
module system_teletext_controller_0_0_teletext_generator
   (p_0_in,
    Q,
    \current_line_reg[0]_0 ,
    SYNC_OUT,
    DATA_OUT,
    S_AXI_ARESETN,
    D,
    \current_state_reg[86] ,
    \current_state_reg[86]_0 ,
    \current_state_reg[86]_1 ,
    \current_state_reg[64] ,
    \current_state_reg[70] ,
    current_magazine_number,
    \current_state_reg[351] ,
    \current_state_reg[46] ,
    \current_state_reg[55] ,
    PACKET_DATA,
    \current_state_reg[54] ,
    \current_state_reg[62] ,
    \current_state_reg[78] ,
    \current_state_reg[94] ,
    \CONTROL_BITS[SUPPRESS_HEADER] ,
    \CONTROL_BITS[UPDATE_INDICATOR] ,
    \CONTROL_BITS[INTERRUPTED_SEQUENCE] ,
    \CONTROL_BITS[INHIBIT_DISPLAY] ,
    \current_state_reg[102] ,
    \CONTROL_BITS[MAGAZINE_SERIAL] ,
    \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ,
    \current_state_reg[110] ,
    \current_state_reg[118] ,
    \current_state_reg[126] ,
    \current_state_reg[134] ,
    \current_state_reg[142] ,
    \current_state_reg[150] ,
    \current_state_reg[158] ,
    \current_state_reg[166] ,
    \current_state_reg[174] ,
    \current_state_reg[182] ,
    \current_state_reg[190] ,
    \current_state_reg[198] ,
    \current_state_reg[206] ,
    \current_state_reg[214] ,
    \current_state_reg[222] ,
    \current_state_reg[230] ,
    \current_state_reg[238] ,
    \current_state_reg[246] ,
    \current_state_reg[254] ,
    \current_state_reg[262] ,
    \current_state_reg[270] ,
    \current_state_reg[278] ,
    \current_state_reg[286] ,
    \current_state_reg[294] ,
    \current_state_reg[302] ,
    \current_state_reg[310] ,
    \current_state_reg[318] ,
    \current_state_reg[326] ,
    \current_state_reg[334] ,
    \current_state_reg[342] ,
    \current_state_reg[350] ,
    \current_state_reg[358] ,
    TELETEXT_CLK);
  output p_0_in;
  output [4:0]Q;
  output \current_line_reg[0]_0 ;
  output SYNC_OUT;
  output DATA_OUT;
  input S_AXI_ARESETN;
  input [0:0]D;
  input \current_state_reg[86] ;
  input \current_state_reg[86]_0 ;
  input [6:0]\current_state_reg[86]_1 ;
  input \current_state_reg[64] ;
  input [6:0]\current_state_reg[70] ;
  input [2:0]current_magazine_number;
  input [30:0]\current_state_reg[351] ;
  input [6:0]\current_state_reg[46] ;
  input [7:0]\current_state_reg[55] ;
  input [7:0]PACKET_DATA;
  input [6:0]\current_state_reg[54] ;
  input [6:0]\current_state_reg[62] ;
  input [6:0]\current_state_reg[78] ;
  input [6:0]\current_state_reg[94] ;
  input \CONTROL_BITS[SUPPRESS_HEADER] ;
  input \CONTROL_BITS[UPDATE_INDICATOR] ;
  input \CONTROL_BITS[INTERRUPTED_SEQUENCE] ;
  input \CONTROL_BITS[INHIBIT_DISPLAY] ;
  input [6:0]\current_state_reg[102] ;
  input \CONTROL_BITS[MAGAZINE_SERIAL] ;
  input [2:0]\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ;
  input [6:0]\current_state_reg[110] ;
  input [6:0]\current_state_reg[118] ;
  input [6:0]\current_state_reg[126] ;
  input [6:0]\current_state_reg[134] ;
  input [6:0]\current_state_reg[142] ;
  input [6:0]\current_state_reg[150] ;
  input [6:0]\current_state_reg[158] ;
  input [6:0]\current_state_reg[166] ;
  input [6:0]\current_state_reg[174] ;
  input [6:0]\current_state_reg[182] ;
  input [6:0]\current_state_reg[190] ;
  input [6:0]\current_state_reg[198] ;
  input [6:0]\current_state_reg[206] ;
  input [6:0]\current_state_reg[214] ;
  input [6:0]\current_state_reg[222] ;
  input [6:0]\current_state_reg[230] ;
  input [6:0]\current_state_reg[238] ;
  input [6:0]\current_state_reg[246] ;
  input [6:0]\current_state_reg[254] ;
  input [6:0]\current_state_reg[262] ;
  input [6:0]\current_state_reg[270] ;
  input [6:0]\current_state_reg[278] ;
  input [6:0]\current_state_reg[286] ;
  input [6:0]\current_state_reg[294] ;
  input [6:0]\current_state_reg[302] ;
  input [6:0]\current_state_reg[310] ;
  input [6:0]\current_state_reg[318] ;
  input [6:0]\current_state_reg[326] ;
  input [6:0]\current_state_reg[334] ;
  input [6:0]\current_state_reg[342] ;
  input [6:0]\current_state_reg[350] ;
  input [6:0]\current_state_reg[358] ;
  input TELETEXT_CLK;

  wire \CONTROL_BITS[INHIBIT_DISPLAY] ;
  wire \CONTROL_BITS[INTERRUPTED_SEQUENCE] ;
  wire \CONTROL_BITS[MAGAZINE_SERIAL] ;
  wire [2:0]\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ;
  wire \CONTROL_BITS[SUPPRESS_HEADER] ;
  wire \CONTROL_BITS[UPDATE_INDICATOR] ;
  wire [0:0]D;
  wire DATA_OUT;
  wire [7:0]PACKET_DATA;
  wire [4:0]Q;
  wire SYNC_OUT;
  wire S_AXI_ARESETN;
  wire TELETEXT_CLK;
  wire \current_line_reg[0]_0 ;
  wire [2:0]current_magazine_number;
  wire [359:25]current_state;
  wire [6:0]\current_state_reg[102] ;
  wire [6:0]\current_state_reg[110] ;
  wire [6:0]\current_state_reg[118] ;
  wire [6:0]\current_state_reg[126] ;
  wire [6:0]\current_state_reg[134] ;
  wire [6:0]\current_state_reg[142] ;
  wire [6:0]\current_state_reg[150] ;
  wire [6:0]\current_state_reg[158] ;
  wire [6:0]\current_state_reg[166] ;
  wire [6:0]\current_state_reg[174] ;
  wire [6:0]\current_state_reg[182] ;
  wire [6:0]\current_state_reg[190] ;
  wire [6:0]\current_state_reg[198] ;
  wire [6:0]\current_state_reg[206] ;
  wire [6:0]\current_state_reg[214] ;
  wire [6:0]\current_state_reg[222] ;
  wire [6:0]\current_state_reg[230] ;
  wire [6:0]\current_state_reg[238] ;
  wire [6:0]\current_state_reg[246] ;
  wire [6:0]\current_state_reg[254] ;
  wire [6:0]\current_state_reg[262] ;
  wire [6:0]\current_state_reg[270] ;
  wire [6:0]\current_state_reg[278] ;
  wire [6:0]\current_state_reg[286] ;
  wire [6:0]\current_state_reg[294] ;
  wire [6:0]\current_state_reg[302] ;
  wire [6:0]\current_state_reg[310] ;
  wire [6:0]\current_state_reg[318] ;
  wire [6:0]\current_state_reg[326] ;
  wire [6:0]\current_state_reg[334] ;
  wire [6:0]\current_state_reg[342] ;
  wire [6:0]\current_state_reg[350] ;
  wire [30:0]\current_state_reg[351] ;
  wire [6:0]\current_state_reg[358] ;
  wire [6:0]\current_state_reg[46] ;
  wire [6:0]\current_state_reg[54] ;
  wire [7:0]\current_state_reg[55] ;
  wire [6:0]\current_state_reg[62] ;
  wire \current_state_reg[64] ;
  wire [6:0]\current_state_reg[70] ;
  wire [6:0]\current_state_reg[78] ;
  wire \current_state_reg[86] ;
  wire \current_state_reg[86]_0 ;
  wire [6:0]\current_state_reg[86]_1 ;
  wire [6:0]\current_state_reg[94] ;
  wire data_out_shift_n_337;
  wire [4:0]next_line;
  wire [358:24]next_state;
  wire p_0_in;
  wire packet_trigger;
  wire sync_gen_n_0;
  wire sync_gen_n_336;
  wire [62:0]teletext_page_header_data;

  LUT1 #(
    .INIT(2'h1)) 
    \current_line[0]_i_1 
       (.I0(Q[0]),
        .O(next_line[0]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_line[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(next_line[1]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \current_line[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(next_line[2]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \current_line[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(next_line[3]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \current_line[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(next_line[4]));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[0] 
       (.C(TELETEXT_CLK),
        .CE(packet_trigger),
        .D(next_line[0]),
        .Q(Q[0]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[1] 
       (.C(TELETEXT_CLK),
        .CE(packet_trigger),
        .D(next_line[1]),
        .Q(Q[1]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[2] 
       (.C(TELETEXT_CLK),
        .CE(packet_trigger),
        .D(next_line[2]),
        .Q(Q[2]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[3] 
       (.C(TELETEXT_CLK),
        .CE(packet_trigger),
        .D(next_line[3]),
        .Q(Q[3]),
        .R(sync_gen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[4] 
       (.C(TELETEXT_CLK),
        .CE(packet_trigger),
        .D(next_line[4]),
        .Q(Q[4]),
        .R(sync_gen_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    \current_state[40]_i_2 
       (.I0(\current_state_reg[55] [0]),
        .I1(\current_state_reg[55] [2]),
        .I2(\current_state_reg[55] [3]),
        .O(teletext_page_header_data[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \current_state[48]_i_2 
       (.I0(\current_state_reg[55] [4]),
        .I1(\current_state_reg[55] [6]),
        .I2(\current_state_reg[55] [7]),
        .O(teletext_page_header_data[8]));
  LUT3 #(
    .INIT(8'h69)) 
    \current_state[88]_i_2 
       (.I0(\CONTROL_BITS[SUPPRESS_HEADER] ),
        .I1(\CONTROL_BITS[INTERRUPTED_SEQUENCE] ),
        .I2(\CONTROL_BITS[INHIBIT_DISPLAY] ),
        .O(teletext_page_header_data[48]));
  LUT3 #(
    .INIT(8'h69)) 
    \current_state[96]_i_2 
       (.I0(\CONTROL_BITS[MAGAZINE_SERIAL] ),
        .I1(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [1]),
        .I2(\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] [2]),
        .O(teletext_page_header_data[56]));
  system_teletext_controller_0_0_shift_register data_out_shift
       (.\CONTROL_BITS[INHIBIT_DISPLAY] (\CONTROL_BITS[INHIBIT_DISPLAY] ),
        .\CONTROL_BITS[INTERRUPTED_SEQUENCE] (\CONTROL_BITS[INTERRUPTED_SEQUENCE] ),
        .\CONTROL_BITS[MAGAZINE_SERIAL] (\CONTROL_BITS[MAGAZINE_SERIAL] ),
        .\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] (\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ),
        .\CONTROL_BITS[SUPPRESS_HEADER] (\CONTROL_BITS[SUPPRESS_HEADER] ),
        .\CONTROL_BITS[UPDATE_INDICATOR] (\CONTROL_BITS[UPDATE_INDICATOR] ),
        .D({D,next_state}),
        .Q({current_state,DATA_OUT}),
        .SR(p_0_in),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .TELETEXT_CLK(TELETEXT_CLK),
        .\current_line_reg[2] (data_out_shift_n_337),
        .\current_state_reg[23]_0 (sync_gen_n_336),
        .\current_state_reg[40]_0 (Q),
        .\current_state_reg[54]_0 (\current_state_reg[55] ),
        .teletext_page_header_data({teletext_page_header_data[62],teletext_page_header_data[60],teletext_page_header_data[58],teletext_page_header_data[54],teletext_page_header_data[52],teletext_page_header_data[50],teletext_page_header_data[14],teletext_page_header_data[12],teletext_page_header_data[10],teletext_page_header_data[6],teletext_page_header_data[4],teletext_page_header_data[2]}));
  system_teletext_controller_0_0_sync_generator sync_gen
       (.\CONTROL_BITS[INHIBIT_DISPLAY] (\CONTROL_BITS[INHIBIT_DISPLAY] ),
        .\CONTROL_BITS[INTERRUPTED_SEQUENCE] (\CONTROL_BITS[INTERRUPTED_SEQUENCE] ),
        .\CONTROL_BITS[MAGAZINE_SERIAL] (\CONTROL_BITS[MAGAZINE_SERIAL] ),
        .\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] (\CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET] ),
        .\CONTROL_BITS[SUPPRESS_HEADER] (\CONTROL_BITS[SUPPRESS_HEADER] ),
        .\CONTROL_BITS[UPDATE_INDICATOR] (\CONTROL_BITS[UPDATE_INDICATOR] ),
        .D(next_state),
        .E(packet_trigger),
        .PACKET_DATA(PACKET_DATA),
        .Q(current_state),
        .SS(sync_gen_n_0),
        .SYNC_OUT(SYNC_OUT),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .TELETEXT_CLK(TELETEXT_CLK),
        .\current_line_reg[0]_0 (sync_gen_n_336),
        .\current_line_reg[0]_1 (\current_line_reg[0]_0 ),
        .current_magazine_number(current_magazine_number),
        .\current_state_reg[102] (\current_state_reg[102] ),
        .\current_state_reg[110] (\current_state_reg[110] ),
        .\current_state_reg[118] (\current_state_reg[118] ),
        .\current_state_reg[126] (\current_state_reg[126] ),
        .\current_state_reg[134] (\current_state_reg[134] ),
        .\current_state_reg[142] (\current_state_reg[142] ),
        .\current_state_reg[150] (\current_state_reg[150] ),
        .\current_state_reg[158] (\current_state_reg[158] ),
        .\current_state_reg[166] (\current_state_reg[166] ),
        .\current_state_reg[174] (\current_state_reg[174] ),
        .\current_state_reg[182] (\current_state_reg[182] ),
        .\current_state_reg[190] (\current_state_reg[190] ),
        .\current_state_reg[198] (\current_state_reg[198] ),
        .\current_state_reg[206] (\current_state_reg[206] ),
        .\current_state_reg[214] (\current_state_reg[214] ),
        .\current_state_reg[222] (\current_state_reg[222] ),
        .\current_state_reg[230] (\current_state_reg[230] ),
        .\current_state_reg[238] (\current_state_reg[238] ),
        .\current_state_reg[246] (\current_state_reg[246] ),
        .\current_state_reg[254] (\current_state_reg[254] ),
        .\current_state_reg[262] (\current_state_reg[262] ),
        .\current_state_reg[270] (\current_state_reg[270] ),
        .\current_state_reg[278] (\current_state_reg[278] ),
        .\current_state_reg[286] (\current_state_reg[286] ),
        .\current_state_reg[294] (\current_state_reg[294] ),
        .\current_state_reg[302] (\current_state_reg[302] ),
        .\current_state_reg[310] (\current_state_reg[310] ),
        .\current_state_reg[318] (\current_state_reg[318] ),
        .\current_state_reg[326] (\current_state_reg[326] ),
        .\current_state_reg[334] (\current_state_reg[334] ),
        .\current_state_reg[342] (\current_state_reg[342] ),
        .\current_state_reg[350] (\current_state_reg[350] ),
        .\current_state_reg[351] (\current_state_reg[351] ),
        .\current_state_reg[358] (\current_state_reg[358] ),
        .\current_state_reg[38] (Q),
        .\current_state_reg[40] (data_out_shift_n_337),
        .\current_state_reg[46] (\current_state_reg[46] ),
        .\current_state_reg[54] (\current_state_reg[54] ),
        .\current_state_reg[55] (\current_state_reg[55] ),
        .\current_state_reg[62] (\current_state_reg[62] ),
        .\current_state_reg[64] (\current_state_reg[64] ),
        .\current_state_reg[70] (\current_state_reg[70] ),
        .\current_state_reg[78] (\current_state_reg[78] ),
        .\current_state_reg[86] (\current_state_reg[86] ),
        .\current_state_reg[86]_0 (\current_state_reg[86]_0 ),
        .\current_state_reg[86]_1 (\current_state_reg[86]_1 ),
        .\current_state_reg[94] (\current_state_reg[94] ),
        .teletext_page_header_data({teletext_page_header_data[62],teletext_page_header_data[60],teletext_page_header_data[58],teletext_page_header_data[56],teletext_page_header_data[54],teletext_page_header_data[52],teletext_page_header_data[50],teletext_page_header_data[48],teletext_page_header_data[14],teletext_page_header_data[12],teletext_page_header_data[10],teletext_page_header_data[8],teletext_page_header_data[6],teletext_page_header_data[4],teletext_page_header_data[2],teletext_page_header_data[0]}));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module system_teletext_controller_0_0_unimacro_BRAM_SDP_MACRO
   (D,
    TELETEXT_CLK,
    S_AXI_ACLK,
    p_0_in,
    ADDRARDADDR);
  output [6:0]D;
  input TELETEXT_CLK;
  input S_AXI_ACLK;
  input p_0_in;
  input [10:0]ADDRARDADDR;

  wire [10:0]ADDRARDADDR;
  wire [6:0]D;
  wire S_AXI_ACLK;
  wire TELETEXT_CLK;
  wire p_0_in;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_100 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_101 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_102 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_103 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_104 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_105 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_113 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_99 ;
  wire [15:7]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(9)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(TELETEXT_CLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\sdp_bl.ramb18_dp_bl.ram18_bl_n_99 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_100 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_101 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_102 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_103 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_104 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_105 }),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOADO_UNCONNECTED [15:7],D}),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(p_0_in),
        .RSTRAMB(p_0_in),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({\sdp_bl.ramb18_dp_bl.ram18_bl_n_113 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_113 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_113 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_113 }));
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
