FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/${PN}:"

KBRANCH_pocketbeagle = "v5.8/standard/beaglebone"
KMACHINE_pocketbeagle ?= "beaglebone"
COMPATIBLE_MACHINE_pocketbeagle = "pocketbeagle"

SRC_URI += " \
	file://defconfig \
	file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
