FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/${PN}:"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

LINUX_VERSION ?= "5.10.26"
KBRANCH ?= "linux-5.10.y"
SRCREV ?= "856cd02bbdd412bf91ce327a3c97c52066f11c79"

require linux-stable.inc

SRC_URI += " \
	file://defconfig \
	file://0002-Specify-the-mcp23s18-chip.patch \
	"
