FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

LINUX_VERSION ?= "4.19.25"
KBRANCH ?= "4.19"
SRCREV ?= "eb1e5b1a64ee6526a7cdb22357dcafc6ba643fbe"

require linux-beagleboard.inc
