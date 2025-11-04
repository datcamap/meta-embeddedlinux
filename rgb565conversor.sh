#!/bin/bash

INPUT_IMAGE=$1
OUTPUT_IMAGE=$2
echo "Converting ${INPUT_IMAGE} to RGB565 format."

ffmpeg -i ${INPUT_IMAGE} -vf scale=220:176 -f rawvideo -pix_fmt rgb565 /home/dat/yocto/poky/meta-mylayer3/recipes-core/base-files/files/${OUTPUT_IMAGE}.rgb565
