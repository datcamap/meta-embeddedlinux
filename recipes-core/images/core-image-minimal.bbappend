
IMAGE_FEATURES:append = " ssh-server-openssh"
IMAGE_INSTALL:append = " openssh openssh-sftp-server"
IMAGE_INSTALL:append = " \
    kernel-module-spi-bcm2835 \
    kernel-module-spi-bcm2835aux \
    kernel-module-ili9225 \
    connman \
    connman-client \
    wpa-supplicant \
    wifi-config \
    linux-firmware-rpidistro-bcm43455 \
    linux-firmware-rpidistro-broadcom-license \
    lsof \
"
