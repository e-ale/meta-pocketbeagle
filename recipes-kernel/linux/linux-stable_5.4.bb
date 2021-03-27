FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

LINUX_VERSION ?= "5.4.108"
KBRANCH ?= "linux-5.4.y"
SRCREV ?= "b90344f7d6000deba0709d75225f30cbf79ec2f0"

require linux-stable.inc

SRC_URI += " \
	file://defconfig \
	file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
