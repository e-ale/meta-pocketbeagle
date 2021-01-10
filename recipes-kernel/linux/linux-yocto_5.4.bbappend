FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

KBRANCH_pocketbeagle = "v5.4/standard/beaglebone"

KMACHINE_pocketbeagle ?= "beaglebone"

SRCREV_machine_pocketbeagle ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"

COMPATIBLE_MACHINE_pocketbeagle = "pocketbeagle"

LINUX_VERSION_pocketbeagle = "5.4.58"

SRC_URI += "file://defconfig"
SRC_URI += "file://0001-pocketbeagle-add-e-ale-paddle-device-and-gpio-pinmux.patch"
SRC_URI += "file://0002-Specify-the-mcp23s18-chip.patch"
