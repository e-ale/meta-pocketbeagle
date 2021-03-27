FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/${PN}:"

LINUX_VERSION ?= "5.8.18"
KBRANCH ?= "linux-5.8.y"
SRCREV ?= "ab435ce49bd1d02e33dfec24f76955dc1196970b"

require linux-stable.inc

SRC_URI += " \
	file://defconfig \
	file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
