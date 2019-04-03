FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

KBRANCH_pocketbeagle = "v4.19/standard/beaglebone"

KMACHINE_pocketbeagle ?= "beaglebone"

SRCREV_machine_pocketbeagle ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"

COMPATIBLE_MACHINE_pocketbeagle = "pocketbeagle"

LINUX_VERSION_pocketbeagle = "4.19.14"

SRC_URI += "file://defconfig"
SRC_URI += "file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch"
SRC_URI += "file://0002-Specify-the-mcp23s18-chip.patch"
