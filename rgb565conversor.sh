#!/bin/bash

INPUT_IMAGE=$1
echo "Converting ${INPUT_IMAGE} to RGB565 format."

ffmpeg -i ${INPUT_IMAGE} -f rawvideo -pix_fmt rgb565 /home/dat/yocto/poky/meta-mylayer3/recipes-core/base-files/files/output.rgb565
