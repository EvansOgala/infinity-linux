#!/bin/bash

# Note: by default, steps.sh will add to the iso every flatpak in the host.
systemctl enable sddm
pacman-key --init
plymouth-set-default-theme -R arch-slider-and-glow

