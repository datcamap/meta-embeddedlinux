#!/bin/bash
IMAGE_PATH="$(ls ~/yocto/poky/build/tmp/deploy/images/raspberrypi4/core-image-minimal*.rootfs.wic.bz2)"

mkdir -p ~/yocto/poky/temporary
rm ~/yocto/poky/temporary/temp.wic

cp ${IMAGE_PATH} ~/yocto/poky/temporary/temp.wic.bz2
bzip2 -d ~/yocto/poky/temporary/temp.wic.bz2
sudo dd if=/dev/zero of=/dev/sdb bs=512 count=1
sudo dd if=~/yocto/poky/temporary/temp.wic of=/dev/sdb bs=4M status=progress
sync
