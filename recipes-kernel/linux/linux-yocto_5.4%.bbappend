FILESEXTRAPATHS:prepend := "${THISDIR}/files:${THISDIR}/${PN}-5.4:"

KBRANCH:pocketbeagle = "v5.4/standard/beaglebone"
KMACHINE:pocketbeagle ?= "beaglebone"
COMPATIBLE_MACHINE:pocketbeagle = "pocketbeagle"

SRC_URI += " \
	file://defconfig \
	file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
