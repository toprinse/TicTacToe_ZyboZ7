library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_matrice_LED_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface my_matrice_LED
		C_my_matrice_LED_DATA_WIDTH	: integer	:= 32;
		C_my_matrice_LED_ADDR_WIDTH	: integer	:= 9
	);
	port (
		-- Users to add ports here
        my_matrice_led_cmd_out : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface my_matrice_LED
		my_matrice_led_aclk	: in std_logic;
		my_matrice_led_aresetn	: in std_logic;
		my_matrice_led_awaddr	: in std_logic_vector(C_my_matrice_LED_ADDR_WIDTH-1 downto 0);
		my_matrice_led_awprot	: in std_logic_vector(2 downto 0);
		my_matrice_led_awvalid	: in std_logic;
		my_matrice_led_awready	: out std_logic;
		my_matrice_led_wdata	: in std_logic_vector(C_my_matrice_LED_DATA_WIDTH-1 downto 0);
		my_matrice_led_wstrb	: in std_logic_vector((C_my_matrice_LED_DATA_WIDTH/8)-1 downto 0);
		my_matrice_led_wvalid	: in std_logic;
		my_matrice_led_wready	: out std_logic;
		my_matrice_led_bresp	: out std_logic_vector(1 downto 0);
		my_matrice_led_bvalid	: out std_logic;
		my_matrice_led_bready	: in std_logic;
		my_matrice_led_araddr	: in std_logic_vector(C_my_matrice_LED_ADDR_WIDTH-1 downto 0);
		my_matrice_led_arprot	: in std_logic_vector(2 downto 0);
		my_matrice_led_arvalid	: in std_logic;
		my_matrice_led_arready	: out std_logic;
		my_matrice_led_rdata	: out std_logic_vector(C_my_matrice_LED_DATA_WIDTH-1 downto 0);
		my_matrice_led_rresp	: out std_logic_vector(1 downto 0);
		my_matrice_led_rvalid	: out std_logic;
		my_matrice_led_rready	: in std_logic
	);
end my_matrice_LED_v1_0;

architecture arch_imp of my_matrice_LED_v1_0 is

	-- component declaration
	component my_matrice_LED_v1_0_my_matrice_LED is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 9
		);
		port (
		GPIO_CMD_OUT   : out std_logic;
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
	end component my_matrice_LED_v1_0_my_matrice_LED;

begin

-- Instantiation of Axi Bus Interface my_matrice_LED
my_matrice_LED_v1_0_my_matrice_LED_inst : my_matrice_LED_v1_0_my_matrice_LED
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_my_matrice_LED_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_my_matrice_LED_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> my_matrice_led_aclk,
		S_AXI_ARESETN	=> my_matrice_led_aresetn,
		S_AXI_AWADDR	=> my_matrice_led_awaddr,
		S_AXI_AWPROT	=> my_matrice_led_awprot,
		S_AXI_AWVALID	=> my_matrice_led_awvalid,
		S_AXI_AWREADY	=> my_matrice_led_awready,
		S_AXI_WDATA	=> my_matrice_led_wdata,
		S_AXI_WSTRB	=> my_matrice_led_wstrb,
		S_AXI_WVALID	=> my_matrice_led_wvalid,
		S_AXI_WREADY	=> my_matrice_led_wready,
		S_AXI_BRESP	=> my_matrice_led_bresp,
		S_AXI_BVALID	=> my_matrice_led_bvalid,
		S_AXI_BREADY	=> my_matrice_led_bready,
		S_AXI_ARADDR	=> my_matrice_led_araddr,
		S_AXI_ARPROT	=> my_matrice_led_arprot,
		S_AXI_ARVALID	=> my_matrice_led_arvalid,
		S_AXI_ARREADY	=> my_matrice_led_arready,
		S_AXI_RDATA	=> my_matrice_led_rdata,
		S_AXI_RRESP	=> my_matrice_led_rresp,
		S_AXI_RVALID	=> my_matrice_led_rvalid,
		S_AXI_RREADY	=> my_matrice_led_rready,
		GPIO_CMD_OUT    => my_matrice_led_cmd_out
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
