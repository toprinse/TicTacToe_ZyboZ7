

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "my_matrice_LED" "NUM_INSTANCES" "DEVICE_ID"  "C_my_matrice_LED_BASEADDR" "C_my_matrice_LED_HIGHADDR"
}
