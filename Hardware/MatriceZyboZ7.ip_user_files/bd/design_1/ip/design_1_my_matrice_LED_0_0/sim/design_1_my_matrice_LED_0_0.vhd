-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: inpg.fr:user:my_matrice_LED:1.0
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_my_matrice_LED_0_0 IS
  PORT (
    my_matrice_led_cmd_out : OUT STD_LOGIC;
    my_matrice_led_aclk : IN STD_LOGIC;
    my_matrice_led_aresetn : IN STD_LOGIC;
    my_matrice_led_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    my_matrice_led_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    my_matrice_led_awvalid : IN STD_LOGIC;
    my_matrice_led_awready : OUT STD_LOGIC;
    my_matrice_led_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    my_matrice_led_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    my_matrice_led_wvalid : IN STD_LOGIC;
    my_matrice_led_wready : OUT STD_LOGIC;
    my_matrice_led_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    my_matrice_led_bvalid : OUT STD_LOGIC;
    my_matrice_led_bready : IN STD_LOGIC;
    my_matrice_led_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    my_matrice_led_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    my_matrice_led_arvalid : IN STD_LOGIC;
    my_matrice_led_arready : OUT STD_LOGIC;
    my_matrice_led_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    my_matrice_led_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    my_matrice_led_rvalid : OUT STD_LOGIC;
    my_matrice_led_rready : IN STD_LOGIC
  );
END design_1_my_matrice_LED_0_0;

ARCHITECTURE design_1_my_matrice_LED_0_0_arch OF design_1_my_matrice_LED_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_my_matrice_LED_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT my_matrice_LED_v1_0 IS
    GENERIC (
      C_my_matrice_LED_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_my_matrice_LED_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      my_matrice_led_cmd_out : OUT STD_LOGIC;
      my_matrice_led_aclk : IN STD_LOGIC;
      my_matrice_led_aresetn : IN STD_LOGIC;
      my_matrice_led_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      my_matrice_led_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      my_matrice_led_awvalid : IN STD_LOGIC;
      my_matrice_led_awready : OUT STD_LOGIC;
      my_matrice_led_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      my_matrice_led_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      my_matrice_led_wvalid : IN STD_LOGIC;
      my_matrice_led_wready : OUT STD_LOGIC;
      my_matrice_led_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      my_matrice_led_bvalid : OUT STD_LOGIC;
      my_matrice_led_bready : IN STD_LOGIC;
      my_matrice_led_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      my_matrice_led_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      my_matrice_led_arvalid : IN STD_LOGIC;
      my_matrice_led_arready : OUT STD_LOGIC;
      my_matrice_led_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      my_matrice_led_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      my_matrice_led_rvalid : OUT STD_LOGIC;
      my_matrice_led_rready : IN STD_LOGIC
    );
  END COMPONENT my_matrice_LED_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF my_matrice_led_awaddr: SIGNAL IS "XIL_INTERFACENAME my_matrice_LED, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 65, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_process" & 
"ing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 my_matrice_LED AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF my_matrice_led_aresetn: SIGNAL IS "XIL_INTERFACENAME my_matrice_LED_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 my_matrice_LED_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF my_matrice_led_aclk: SIGNAL IS "XIL_INTERFACENAME my_matrice_LED_CLK, ASSOCIATED_BUSIF my_matrice_LED, ASSOCIATED_RESET my_matrice_led_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF my_matrice_led_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 my_matrice_LED_CLK CLK";
BEGIN
  U0 : my_matrice_LED_v1_0
    GENERIC MAP (
      C_my_matrice_LED_DATA_WIDTH => 32,
      C_my_matrice_LED_ADDR_WIDTH => 9
    )
    PORT MAP (
      my_matrice_led_cmd_out => my_matrice_led_cmd_out,
      my_matrice_led_aclk => my_matrice_led_aclk,
      my_matrice_led_aresetn => my_matrice_led_aresetn,
      my_matrice_led_awaddr => my_matrice_led_awaddr,
      my_matrice_led_awprot => my_matrice_led_awprot,
      my_matrice_led_awvalid => my_matrice_led_awvalid,
      my_matrice_led_awready => my_matrice_led_awready,
      my_matrice_led_wdata => my_matrice_led_wdata,
      my_matrice_led_wstrb => my_matrice_led_wstrb,
      my_matrice_led_wvalid => my_matrice_led_wvalid,
      my_matrice_led_wready => my_matrice_led_wready,
      my_matrice_led_bresp => my_matrice_led_bresp,
      my_matrice_led_bvalid => my_matrice_led_bvalid,
      my_matrice_led_bready => my_matrice_led_bready,
      my_matrice_led_araddr => my_matrice_led_araddr,
      my_matrice_led_arprot => my_matrice_led_arprot,
      my_matrice_led_arvalid => my_matrice_led_arvalid,
      my_matrice_led_arready => my_matrice_led_arready,
      my_matrice_led_rdata => my_matrice_led_rdata,
      my_matrice_led_rresp => my_matrice_led_rresp,
      my_matrice_led_rvalid => my_matrice_led_rvalid,
      my_matrice_led_rready => my_matrice_led_rready
    );
END design_1_my_matrice_LED_0_0_arch;
