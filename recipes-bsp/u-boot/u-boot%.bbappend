FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-ARM-dts-am335x-pocketbeagle-choose-tick-timer.patch \
	file://0001-am33xx-ignore-return-value-from-usb_ether_init.patch \
	"
