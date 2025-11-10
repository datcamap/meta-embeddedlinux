DESCRIPTION = "Plymouth theme: mysplash"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://mysplash.plymouth \
           file://mysplash.script \
           file://mysplash.png"

inherit allarch

RDEPENDS:${PN} = "plymouth"
S = "${WORKDIR}"

do_install() {
    install -d ${D}${datadir}/plymouth/themes/mysplash
    install -m 0644 ${WORKDIR}/mysplash.plymouth ${D}${datadir}/plymouth/themes/mysplash/
    install -m 0644 ${WORKDIR}/mysplash.script ${D}${datadir}/plymouth/themes/mysplash/
    install -m 0644 ${WORKDIR}/mysplash.png ${D}${datadir}/plymouth/themes/mysplash/
}

FILES:${PN} += "${datadir}/plymouth/themes/mysplash"