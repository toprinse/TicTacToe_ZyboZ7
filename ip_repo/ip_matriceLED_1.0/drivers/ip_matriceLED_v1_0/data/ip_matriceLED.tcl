

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "ip_matriceLED" "NUM_INSTANCES" "DEVICE_ID"  "C_S00_AXI_LEDMATRICE_BASEADDR" "C_S00_AXI_LEDMATRICE_HIGHADDR"
}
