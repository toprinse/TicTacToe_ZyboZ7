-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Nov 22 09:05:23 2023
-- Host        : ES1733 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_my_matrice_LED_0_0_stub.vhdl
-- Design      : design_1_my_matrice_LED_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    my_matrice_led_cmd_out : out STD_LOGIC;
    my_matrice_led_aclk : in STD_LOGIC;
    my_matrice_led_aresetn : in STD_LOGIC;
    my_matrice_led_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    my_matrice_led_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    my_matrice_led_awvalid : in STD_LOGIC;
    my_matrice_led_awready : out STD_LOGIC;
    my_matrice_led_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    my_matrice_led_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    my_matrice_led_wvalid : in STD_LOGIC;
    my_matrice_led_wready : out STD_LOGIC;
    my_matrice_led_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    my_matrice_led_bvalid : out STD_LOGIC;
    my_matrice_led_bready : in STD_LOGIC;
    my_matrice_led_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    my_matrice_led_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    my_matrice_led_arvalid : in STD_LOGIC;
    my_matrice_led_arready : out STD_LOGIC;
    my_matrice_led_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    my_matrice_led_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    my_matrice_led_rvalid : out STD_LOGIC;
    my_matrice_led_rready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "my_matrice_led_cmd_out,my_matrice_led_aclk,my_matrice_led_aresetn,my_matrice_led_awaddr[8:0],my_matrice_led_awprot[2:0],my_matrice_led_awvalid,my_matrice_led_awready,my_matrice_led_wdata[31:0],my_matrice_led_wstrb[3:0],my_matrice_led_wvalid,my_matrice_led_wready,my_matrice_led_bresp[1:0],my_matrice_led_bvalid,my_matrice_led_bready,my_matrice_led_araddr[8:0],my_matrice_led_arprot[2:0],my_matrice_led_arvalid,my_matrice_led_arready,my_matrice_led_rdata[31:0],my_matrice_led_rresp[1:0],my_matrice_led_rvalid,my_matrice_led_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "my_matrice_LED_v1_0,Vivado 2019.2";
begin
end;
