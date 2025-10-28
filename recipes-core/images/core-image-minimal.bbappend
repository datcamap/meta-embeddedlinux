# Pull the OpenSSH server into images that use this layer so SSH is available.
IMAGE_FEATURES:append = " ssh-server-openssh"
IMAGE_INSTALL:append = " openssh openssh-sftp-server"
IMAGE_INSTALL:append = " \
    kernel-module-spi-bcm2835 \
    kernel-module-spi-bcm2835aux \
"