install -m 644 files/xinitrc "${ROOTFS_DIR}/home/pi/.xinitrc"
on_chroot << EOF
  chown pi:pi /home/pi/.xinitrc
EOF

echo "
if [ -z \"\$SSH_CLIENT\" ] || [ -z \"\$SSH_TTY\" ]; then
    xinit -- -nocursor
fi" >> "${ROOTFS_DIR}/home/pi/.bashrc"
