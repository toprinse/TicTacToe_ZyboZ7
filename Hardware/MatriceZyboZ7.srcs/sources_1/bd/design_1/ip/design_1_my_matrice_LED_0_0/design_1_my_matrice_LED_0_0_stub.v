// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov 22 11:06:38 2023
// Host        : ES1733 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               H:/5A/CE514/ZyboZ7/MatriceZyboZ7/MatriceZyboZ7.srcs/sources_1/bd/design_1/ip/design_1_my_matrice_LED_0_0/design_1_my_matrice_LED_0_0_stub.v
// Design      : design_1_my_matrice_LED_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "my_matrice_LED_v1_0,Vivado 2019.2" *)
module design_1_my_matrice_LED_0_0(my_matrice_led_cmd_out, 
  my_matrice_led_aclk, my_matrice_led_aresetn, my_matrice_led_awaddr, 
  my_matrice_led_awprot, my_matrice_led_awvalid, my_matrice_led_awready, 
  my_matrice_led_wdata, my_matrice_led_wstrb, my_matrice_led_wvalid, 
  my_matrice_led_wready, my_matrice_led_bresp, my_matrice_led_bvalid, 
  my_matrice_led_bready, my_matrice_led_araddr, my_matrice_led_arprot, 
  my_matrice_led_arvalid, my_matrice_led_arready, my_matrice_led_rdata, 
  my_matrice_led_rresp, my_matrice_led_rvalid, my_matrice_led_rready)
/* synthesis syn_black_box black_box_pad_pin="my_matrice_led_cmd_out,my_matrice_led_aclk,my_matrice_led_aresetn,my_matrice_led_awaddr[8:0],my_matrice_led_awprot[2:0],my_matrice_led_awvalid,my_matrice_led_awready,my_matrice_led_wdata[31:0],my_matrice_led_wstrb[3:0],my_matrice_led_wvalid,my_matrice_led_wready,my_matrice_led_bresp[1:0],my_matrice_led_bvalid,my_matrice_led_bready,my_matrice_led_araddr[8:0],my_matrice_led_arprot[2:0],my_matrice_led_arvalid,my_matrice_led_arready,my_matrice_led_rdata[31:0],my_matrice_led_rresp[1:0],my_matrice_led_rvalid,my_matrice_led_rready" */;
  output my_matrice_led_cmd_out;
  input my_matrice_led_aclk;
  input my_matrice_led_aresetn;
  input [8:0]my_matrice_led_awaddr;
  input [2:0]my_matrice_led_awprot;
  input my_matrice_led_awvalid;
  output my_matrice_led_awready;
  input [31:0]my_matrice_led_wdata;
  input [3:0]my_matrice_led_wstrb;
  input my_matrice_led_wvalid;
  output my_matrice_led_wready;
  output [1:0]my_matrice_led_bresp;
  output my_matrice_led_bvalid;
  input my_matrice_led_bready;
  input [8:0]my_matrice_led_araddr;
  input [2:0]my_matrice_led_arprot;
  input my_matrice_led_arvalid;
  output my_matrice_led_arready;
  output [31:0]my_matrice_led_rdata;
  output [1:0]my_matrice_led_rresp;
  output my_matrice_led_rvalid;
  input my_matrice_led_rready;
endmodule
