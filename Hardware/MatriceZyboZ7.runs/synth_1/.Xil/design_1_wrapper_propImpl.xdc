set_property SRC_FILE_INFO {cfile:H:/5A/CE514/ZyboZ7/MatriceZyboZ7Topr/MatriceZyboZ7.srcs/constrs_1/imports/ZyboZ7/Zybo-Z7-Master.xdc rfile:../../../MatriceZyboZ7.srcs/constrs_1/imports/ZyboZ7/Zybo-Z7-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { sysclk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { sysclk }];
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { my_matrice_led_cmd_out_0 }]; #IO_L21P_T3_DQS_AD14P_35 Sch=JA1_R_p
set_property src_info {type:XDC file:1 line:126 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33     } [get_ports { Pmod_out_0 }]; #IO_L10P_T1_34 Sch=jc_p[1]
