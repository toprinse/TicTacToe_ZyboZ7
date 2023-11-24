#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = H:/5A/CE514/ZyboZ7/workspace/TestKeypad/export/TestKeypad/TestKeypad.xpfm
SYS_CONFIG = TestKeypad
DOMAINS = standalone_domain
BIF_PATH = H:/5A/CE514/ZyboZ7/workspace/KeypadRafacto_withLed_system/Debug/system.bif

BITSTREAM_PATH = H:/5A/CE514/ZyboZ7/workspace/KeypadRafacto_withLed/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf H:/5A/CE514/ZyboZ7/workspace/KeypadRafacto_withLed/Debug/KeypadRafacto_withLed.elf,ps7_cortexa9_0

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 54054 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


