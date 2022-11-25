FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH:pocketbeagle = "v5.10/standard/beaglebone"
KMACHINE:pocketbeagle ?= "beaglebone"
SRCREV_machine:pocketbeagle = "3c44f12b9de336579d00ac0105852f4cbf7e8b7d"
COMPATIBLE_MACHINE:pocketbeagle = "pocketbeagle"
LINUX_VERSION:pocketbeagle = "5.10.130"

SRC_URI += " \
	file://defconfig \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
