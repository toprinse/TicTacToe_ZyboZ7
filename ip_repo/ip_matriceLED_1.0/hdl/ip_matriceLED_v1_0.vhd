library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ip_matriceLED_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI_LEDMATRICE
		C_S00_AXI_LEDMATRICE_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_LEDMATRICE_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI_LEDMATRICE
		s00_axi_ledmatrice_aclk	: in std_logic;
		s00_axi_ledmatrice_aresetn	: in std_logic;
		s00_axi_ledmatrice_awaddr	: in std_logic_vector(C_S00_AXI_LEDMATRICE_ADDR_WIDTH-1 downto 0);
		s00_axi_ledmatrice_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_ledmatrice_awvalid	: in std_logic;
		s00_axi_ledmatrice_awready	: out std_logic;
		s00_axi_ledmatrice_wdata	: in std_logic_vector(C_S00_AXI_LEDMATRICE_DATA_WIDTH-1 downto 0);
		s00_axi_ledmatrice_wstrb	: in std_logic_vector((C_S00_AXI_LEDMATRICE_DATA_WIDTH/8)-1 downto 0);
		s00_axi_ledmatrice_wvalid	: in std_logic;
		s00_axi_ledmatrice_wready	: out std_logic;
		s00_axi_ledmatrice_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_ledmatrice_bvalid	: out std_logic;
		s00_axi_ledmatrice_bready	: in std_logic;
		s00_axi_ledmatrice_araddr	: in std_logic_vector(C_S00_AXI_LEDMATRICE_ADDR_WIDTH-1 downto 0);
		s00_axi_ledmatrice_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_ledmatrice_arvalid	: in std_logic;
		s00_axi_ledmatrice_arready	: out std_logic;
		s00_axi_ledmatrice_rdata	: out std_logic_vector(C_S00_AXI_LEDMATRICE_DATA_WIDTH-1 downto 0);
		s00_axi_ledmatrice_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_ledmatrice_rvalid	: out std_logic;
		s00_axi_ledmatrice_rready	: in std_logic
	);
end ip_matriceLED_v1_0;

architecture arch_imp of ip_matriceLED_v1_0 is

	-- component declaration
	component ip_matriceLED_v1_0_S00_AXI_LEDMATRICE is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component ip_matriceLED_v1_0_S00_AXI_LEDMATRICE;

begin

-- Instantiation of Axi Bus Interface S00_AXI_LEDMATRICE
ip_matriceLED_v1_0_S00_AXI_LEDMATRICE_inst : ip_matriceLED_v1_0_S00_AXI_LEDMATRICE
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_LEDMATRICE_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_LEDMATRICE_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_ledmatrice_aclk,
		S_AXI_ARESETN	=> s00_axi_ledmatrice_aresetn,
		S_AXI_AWADDR	=> s00_axi_ledmatrice_awaddr,
		S_AXI_AWPROT	=> s00_axi_ledmatrice_awprot,
		S_AXI_AWVALID	=> s00_axi_ledmatrice_awvalid,
		S_AXI_AWREADY	=> s00_axi_ledmatrice_awready,
		S_AXI_WDATA	=> s00_axi_ledmatrice_wdata,
		S_AXI_WSTRB	=> s00_axi_ledmatrice_wstrb,
		S_AXI_WVALID	=> s00_axi_ledmatrice_wvalid,
		S_AXI_WREADY	=> s00_axi_ledmatrice_wready,
		S_AXI_BRESP	=> s00_axi_ledmatrice_bresp,
		S_AXI_BVALID	=> s00_axi_ledmatrice_bvalid,
		S_AXI_BREADY	=> s00_axi_ledmatrice_bready,
		S_AXI_ARADDR	=> s00_axi_ledmatrice_araddr,
		S_AXI_ARPROT	=> s00_axi_ledmatrice_arprot,
		S_AXI_ARVALID	=> s00_axi_ledmatrice_arvalid,
		S_AXI_ARREADY	=> s00_axi_ledmatrice_arready,
		S_AXI_RDATA	=> s00_axi_ledmatrice_rdata,
		S_AXI_RRESP	=> s00_axi_ledmatrice_rresp,
		S_AXI_RVALID	=> s00_axi_ledmatrice_rvalid,
		S_AXI_RREADY	=> s00_axi_ledmatrice_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
