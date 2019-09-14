FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

LINUX_VERSION ?= "5.2.14"
KBRANCH ?= "linux-5.2.y"
SRCREV ?= "997fee5473ce59c9b1461f54dd2975c57b258a6e"

require linux-stable.inc

SRC_URI += " \
	file://defconfig \
	file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
