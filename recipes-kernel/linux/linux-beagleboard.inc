DESCRIPTION = "Linux Kernel"
SECTION = "kernel"
LICENSE = "GPLv2"

LIC_FILES_CHKSUM = "file://COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"

SRC_URI = " \
	git://github.com/beagleboard/linux.git;branch=${KBRANCH};nobranch=1 \
	file://0001-Revert-Add-BeagleBoard.org-DTBS-v4.19.x-ti.patch \
	file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch \
	file://0002-Specify-the-mcp23s18-chip.patch \
	file://defconfig \
	"

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

PV = "${LINUX_VERSION}+git${SRCPV}"

KCONF_BSP_AUDIT_LEVEL = "0"
deltask kernel_configme
