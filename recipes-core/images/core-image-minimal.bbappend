
IMAGE_FEATURES:append = " ssh-server-openssh"
IMAGE_FEATURES:append = " splash"
IMAGE_INSTALL:append = " openssh openssh-sftp-server"

IMAGE_INSTALL:append = " systemd systemd-analyze"
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
    vim \
    sudo \
    ffmpeg \
"

# ROOTFS_POSTPROCESS_COMMAND:append = " disable_fb_getty; "

# disable_fb_getty() {
#     install -d ${IMAGE_ROOTFS}/etc/systemd/system/getty.target.wants
#     rm -f ${IMAGE_ROOTFS}/etc/systemd/system/getty.target.wants/getty@tty1.service
#     ln -sf /dev/null ${IMAGE_ROOTFS}/etc/systemd/system/getty@tty1.service
# }
