/* Adding these into local.conf */

MACHINE ??= "raspberrypi4"

#
# Additional image features
#
# The following is a list of additional classes to use when building images which
# enable extra features. Some available options which can be included in this variable
# are:
#   - 'buildstats' collect build statistics
USER_CLASSES ?= "buildstats"

# Default Wi-Fi credentials consumed by the wifi-config recipe.
# Replace with the SSID and passphrase for the access point you want the image to join.
WIFI_SSID = "INNO TECH-5G"
WIFI_PSK = "Innotech@#"

# Ensure Wi-Fi support is available to the image.
DISTRO_FEATURES:append = " wifi"

dd if=output.rgb565 of=/dev/fb0 bs=$(stat -c %s output.rgb565)

### porting:
config device tree
frame_buffer
CONFIG_TINYDRM_ILI9225
porting
bring up
