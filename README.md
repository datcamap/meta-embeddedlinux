## Adding these into local.conf

```conf
MACHINE ??= "raspberrypi4"

# Default Wi-Fi credentials consumed by the wifi-config recipe.
# Replace with the SSID and passphrase for the access point you want the image to join.
WIFI_SSID = "INNO TECH-5G"
WIFI_PSK = "Innotech@#"

# Ensure Wi-Fi support is available to the image.
DISTRO_FEATURES:append = " wifi"

LICENSE_FLAGS_ACCEPTED:append = " commercial_ffmpeg"
```