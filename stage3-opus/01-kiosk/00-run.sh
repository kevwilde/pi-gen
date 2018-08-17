install -o pi -g pi -m 644 files/xinitrc "${ROOTFS_DIR}/homes/pi/.xinitrc"

echo "
if [ -z \"\$SSH_CLIENT\" ] || [ -z \"\$SSH_TTY\" ]; then
    xinit -- -nocursor
fi" >> "${ROOTFS_DIR}/homes/pi/.bashrc"
