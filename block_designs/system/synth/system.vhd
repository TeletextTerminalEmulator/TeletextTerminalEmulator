--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Sun Oct 29 23:52:05 2023
--Host        : JOROLF-LAPTOP running 64-bit major release  (build 9200)
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_OXBU24 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_OXBU24;

architecture STRUCTURE of s00_couplers_imp_OXBU24 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_vip_0_axi_periph_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end system_axi_vip_0_axi_periph_1;

architecture STRUCTURE of system_axi_vip_0_axi_periph_1 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_vip_0_axi_periph_ACLK_net : STD_LOGIC;
  signal axi_vip_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_vip_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_vip_0_axi_periph_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_vip_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_vip_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_vip_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_vip_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_vip_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_vip_0_axi_periph_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_vip_0_axi_periph_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_vip_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_vip_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_vip_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_vip_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_vip_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_vip_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_vip_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_vip_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_vip_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rvalid <= axi_vip_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_vip_0_axi_periph_to_s00_couplers_WREADY;
  axi_vip_0_axi_periph_ACLK_net <= M00_ACLK;
  axi_vip_0_axi_periph_ARESETN_net <= M00_ARESETN;
  axi_vip_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_vip_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_vip_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_vip_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_vip_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_vip_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_vip_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_vip_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_vip_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_vip_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_vip_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_vip_0_axi_periph_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_vip_0_axi_periph_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_vip_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_vip_0_axi_periph_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_vip_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_vip_0_axi_periph_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_vip_0_axi_periph_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_OXBU24
     port map (
      M_ACLK => axi_vip_0_axi_periph_ACLK_net,
      M_ARESETN => axi_vip_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_axi_vip_0_axi_periph_ARREADY,
      M_AXI_arvalid => s00_couplers_to_axi_vip_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_axi_vip_0_axi_periph_AWREADY,
      M_AXI_awvalid => s00_couplers_to_axi_vip_0_axi_periph_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_vip_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_vip_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_axi_vip_0_axi_periph_RREADY,
      M_AXI_rvalid => s00_couplers_to_axi_vip_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_axi_vip_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_vip_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_vip_0_axi_periph_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_vip_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arvalid => axi_vip_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_vip_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awvalid => axi_vip_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_vip_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_vip_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => axi_vip_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rvalid => axi_vip_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => axi_vip_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_vip_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_vip_0_axi_periph_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
  port (
    CLK_IN : in STD_LOGIC;
    DATA_OUT : out STD_LOGIC;
    RESET : in STD_LOGIC;
    SYNC_OUT : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component system_clk_wiz_0_0;
  component system_axi_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_axi_vip_0_0;
  component system_rst_clk_wiz_0_100M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_rst_clk_wiz_0_100M_1;
  component system_teletext_controller_0_0 is
  port (
    TELETEXT_CLK : in STD_LOGIC;
    DATA_OUT : out STD_LOGIC;
    SYNC_OUT : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component system_teletext_controller_0_0;
  signal CLK_IN_1 : STD_LOGIC;
  signal RESET_1 : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal axi_vip_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal rst_clk_wiz_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal teletext_controller_0_DATA_OUT : STD_LOGIC;
  signal teletext_controller_0_SYNC_OUT : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_teletext_controller_0_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_IN : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_IN : signal is "XIL_INTERFACENAME CLK.CLK_IN, CLK_DOMAIN system_CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of DATA_OUT : signal is "xilinx.com:signal:data:1.0 DATA.DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of DATA_OUT : signal is "XIL_INTERFACENAME DATA.DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SYNC_OUT : signal is "xilinx.com:signal:data:1.0 DATA.SYNC_OUT DATA";
  attribute X_INTERFACE_PARAMETER of SYNC_OUT : signal is "XIL_INTERFACENAME DATA.SYNC_OUT, LAYERED_METADATA undef";
begin
  CLK_IN_1 <= CLK_IN;
  DATA_OUT <= teletext_controller_0_DATA_OUT;
  RESET_1 <= RESET;
  SYNC_OUT <= teletext_controller_0_SYNC_OUT;
axi_vip_0: component system_axi_vip_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      m_axi_araddr(31 downto 0) => axi_vip_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_0_M_AXI_ARREADY,
      m_axi_arvalid => axi_vip_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_0_M_AXI_AWREADY,
      m_axi_awvalid => axi_vip_0_M_AXI_AWVALID,
      m_axi_bready => axi_vip_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_vip_0_M_AXI_RDATA(31 downto 0),
      m_axi_rready => axi_vip_0_M_AXI_RREADY,
      m_axi_rvalid => axi_vip_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_vip_0_M_AXI_WDATA(31 downto 0),
      m_axi_wready => axi_vip_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_vip_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_vip_0_M_AXI_WVALID
    );
axi_vip_0_axi_periph: entity work.system_axi_vip_0_axi_periph_1
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_vip_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_vip_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_vip_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_vip_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_vip_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_vip_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_vip_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_vip_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => axi_vip_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_vip_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_vip_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_vip_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_vip_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rvalid => axi_vip_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_vip_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_vip_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_vip_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_vip_0_axi_periph_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_vip_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => axi_vip_0_M_AXI_ARREADY,
      S00_AXI_arvalid => axi_vip_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_vip_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => axi_vip_0_M_AXI_AWREADY,
      S00_AXI_awvalid => axi_vip_0_M_AXI_AWVALID,
      S00_AXI_bready => axi_vip_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_0_M_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_vip_0_M_AXI_RDATA(31 downto 0),
      S00_AXI_rready => axi_vip_0_M_AXI_RREADY,
      S00_AXI_rvalid => axi_vip_0_M_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_vip_0_M_AXI_WDATA(31 downto 0),
      S00_AXI_wready => axi_vip_0_M_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_vip_0_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_vip_0_M_AXI_WVALID
    );
clk_wiz_0: component system_clk_wiz_0_0
     port map (
      clk_in1 => CLK_IN_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => clk_wiz_0_locked,
      reset => RESET_1
    );
rst_clk_wiz_0_100M: component system_rst_clk_wiz_0_100M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => RESET_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
teletext_controller_0: component system_teletext_controller_0_0
     port map (
      DATA_OUT => teletext_controller_0_DATA_OUT,
      SYNC_OUT => teletext_controller_0_SYNC_OUT,
      S_AXI_ACLK => clk_wiz_0_clk_out1,
      S_AXI_ARADDR(5 downto 0) => axi_vip_0_axi_periph_M00_AXI_ARADDR(5 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => axi_vip_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => axi_vip_0_axi_periph_M00_AXI_ARREADY,
      S_AXI_ARVALID => axi_vip_0_axi_periph_M00_AXI_ARVALID,
      S_AXI_AWADDR(5 downto 0) => axi_vip_0_axi_periph_M00_AXI_AWADDR(5 downto 0),
      S_AXI_AWPROT(2 downto 0) => axi_vip_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => axi_vip_0_axi_periph_M00_AXI_AWREADY,
      S_AXI_AWVALID => axi_vip_0_axi_periph_M00_AXI_AWVALID,
      S_AXI_BREADY => axi_vip_0_axi_periph_M00_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => axi_vip_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_vip_0_axi_periph_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_vip_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_vip_0_axi_periph_M00_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_teletext_controller_0_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => axi_vip_0_axi_periph_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_vip_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => axi_vip_0_axi_periph_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_vip_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => axi_vip_0_axi_periph_M00_AXI_WVALID,
      TELETEXT_CLK => clk_wiz_0_clk_out2
    );
end STRUCTURE;
