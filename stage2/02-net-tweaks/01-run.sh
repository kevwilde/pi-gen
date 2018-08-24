#!/bin/bash -e

install -v -d					"${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d"
install -v -m 644 files/wait.conf		"${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d/"

install -v -d					"${ROOTFS_DIR}/etc/wpa_supplicant"
install -v -m 600 files/wpa_supplicant.conf	"${ROOTFS_DIR}/etc/wpa_supplicant/"

echo "
network={
    ssid=\"${NETWORK_NAME}\"
    psk=\"${NETWORK_PSK}\"
    key_mgmt=WPA-PSK
}

" >> ${ROOTFS_DIR}/etc/wpa_supplicant/wpa_supplicant.conf
