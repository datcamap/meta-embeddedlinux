FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Adding-ssd1306-and-nokia5110-driver.patch"

KERNEL_MODULE:append = " ssd1306 nokia5110"
