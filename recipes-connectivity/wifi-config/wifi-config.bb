SUMMARY = "Install a default Wi-Fi service configuration for ConnMan"
DESCRIPTION = "Creates a preconfigured ConnMan service entry so wlan0 auto-connects to the target access point."
LICENSE = "CLOSED"

inherit allarch

WIFI_SSID ?= ""
WIFI_PSK ?= ""
WIFI_SECURITY ?= "psk"
WIFI_HIDDEN ?= "false"
WIFI_SERVICE_NAME = "${@ ((d.getVar('WIFI_SSID') or '').replace(' ', '_')) or 'wifi-default'}"
CONNMAN_WIFI_SERVICE = "${WIFI_SERVICE_NAME}.config"

python __anonymous() {
    ssid = d.getVar("WIFI_SSID")
    psk = d.getVar("WIFI_PSK")
    if not ssid:
        bb.fatal("wifi-config: Set WIFI_SSID in local.conf or another configuration file.")
    if not psk:
        bb.fatal("wifi-config: Set WIFI_PSK in local.conf or another configuration file.")
}

do_install() {
    install -d ${D}/var/lib/connman

    cat <<EOF > ${D}/var/lib/connman/${CONNMAN_WIFI_SERVICE}
[service_${WIFI_SERVICE_NAME}]
Type = wifi
Favorite = true
Immutable = true
AutoConnect = true
Name = "${WIFI_SSID}"
Passphrase = "${WIFI_PSK}"
Security = ${WIFI_SECURITY}
EOF

    if [ "${WIFI_HIDDEN}" = "true" ]; then
        printf 'Hidden = true\n' >> ${D}/var/lib/connman/${CONNMAN_WIFI_SERVICE}
    fi

    chmod 0600 ${D}/var/lib/connman/${CONNMAN_WIFI_SERVICE}
}

FILES:${PN} = "/var/lib/connman/${CONNMAN_WIFI_SERVICE}"

RDEPENDS:${PN} += "connman"
