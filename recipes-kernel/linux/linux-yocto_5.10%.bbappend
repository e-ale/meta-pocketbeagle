FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/${PN}-5.10:"

KBRANCH_pocketbeagle = "v5.10/standard/beaglebone"
KMACHINE_pocketbeagle ?= "beaglebone"
COMPATIBLE_MACHINE_pocketbeagle = "pocketbeagle"

SRC_URI += " \
	file://defconfig \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
