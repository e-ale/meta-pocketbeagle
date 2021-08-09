FILESEXTRAPATHS:prepend := "${THISDIR}/files:${THISDIR}/${PN}-5.10:"

KBRANCH:pocketbeagle = "v5.10/standard/beaglebone"
KMACHINE:pocketbeagle ?= "beaglebone"
COMPATIBLE_MACHINE:pocketbeagle = "pocketbeagle"

SRC_URI += " \
	file://defconfig \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
