#!/bin/bash

# Note: by default, steps.sh will add to the iso every flatpak in the host.
systemctl disable plasmalogin
systemctl enable bluetooth
systemctl enable grub-btrfsd
systemctl enable sddm
pacman -Syu
flatpak install  org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
plymouth-set-default-theme -R infinity
dconf update
