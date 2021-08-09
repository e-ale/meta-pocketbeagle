DESCRIPTION = "Linux Console Project"
HOMEPAGE = "https://sourceforge.net/projects/linuxconsole"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"

SRC_URI = "https://downloads.sourceforge.net/project/linuxconsole/linuxconsoletools-${PV}.tar.bz2"

SRC_URI[md5sum] = "fd52fa4a81455eb95a6c81efb087ce98"
SRC_URI[sha256sum] = "ced2efed00b67b45f82eddc69be07385835d558f658016315ac621fe2eaa8146"

SRC_URI += " \
    file://0001-disable-ffmvforce-build.patch \
"

inherit pkgconfig

EXTRA_OECONF += " \
        ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', '-DSYSTEMD_SUPPORT=1', '', d)} \
"

do_compile:append () {
    oe_runmake -C utils 80-stelladaptor-joystick.rules
}

do_install () {
    install -d -m 0755 ${D}${bindir}
    install -m 0755 ${S}/utils/inputattach ${D}${bindir}/
    install -m 0755 ${S}/utils/jstest ${D}${bindir}/
    install -m 0755 ${S}/utils/jscal ${D}${bindir}/
    install -m 0755 ${S}/utils/fftest ${D}${bindir}/
    install -m 0755 ${S}/utils/ffset ${D}${bindir}/
    install -m 0755 ${S}/utils/ffcfstress ${D}${bindir}/
    install -m 0755 ${S}/utils/jscal-store ${D}${bindir}/
    install -m 0755 ${S}/utils/evdev-joystick ${D}${bindir}/

    install -d ${D}${datadir}/joystick
    install -m 0644 ${S}/utils/extract ${D}${datadir}/joystick/
    install -m 0644 ${S}/utils/filter ${D}${datadir}/joystick/
    install -m 0644 ${S}/utils/ident ${D}${datadir}/joystick/
    
    install -d ${D}${sysconfdir}/udev/rules.d
    install -m 0755 ${S}/utils/js-set-enum-leds ${D}${sysconfdir}/udev/
    install -m 0644 ${S}/utils/80-stelladaptor-joystick.rules ${D}${sysconfdir}/udev/rules.d/
}

FILES_${PN}-joystick += "${datadir}/joystick/*"

PACKAGES =+ "${PN}-joystick"
