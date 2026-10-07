#!/bin/bash

# Note: by default, steps.sh will add to the iso every flatpak in the host.
systemctl enable sddm
pacman-key --init
pacman -Syu
mkdir /home/live/Desktop
chsh -s /bin/fish live
cp /root/calamares.desktop /home/live/Desktop/calamares.desktop
chown -R live:live /home/live/Desktop/calamares.desktop
chmod +x /home/live/Desktop/calamares.desktop
plymouth-set-default-theme -R arch-slider-and-glow

