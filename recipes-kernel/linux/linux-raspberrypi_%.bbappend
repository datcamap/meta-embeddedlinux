FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Fix-nokia5110-driver.patch"

KERNEL_MODULE:append = " nokia5110 ssd1306 spi_bcm2835 spi_bcm2835aux"
