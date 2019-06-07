FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

LINUX_VERSION ?= "4.19.31"
KBRANCH ?= "4.19"
SRCREV ?= "9765c64614ca5e3b7f942ef3682d35991770a2fc"

require linux-beagleboard.inc
