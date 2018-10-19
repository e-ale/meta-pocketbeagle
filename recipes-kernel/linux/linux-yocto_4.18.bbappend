FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

KBRANCH_pocketbeagle = "v4.18/standard/beaglebone"

KMACHINE_pocketbeagle ?= "beaglebone"

SRCREV_machine_pocketbeagle ?= "0cdc8564c61958a39704d97e008120bd7c762f60"

COMPATIBLE_MACHINE_pocketbeagle = "pocketbeagle"

LINUX_VERSION_pocketbeagle = "4.18.9"

SRC_URI += "file://defconfig"
SRC_URI += "file://0002-Specify-the-mcp23s18-chip.patch"
