#!/bin/bash

MARKER="$HOME/.config/infinity/.firstboot_done"

if [ ! -f "$MARKER" ]; then
    mkdir -p "$(dirname "$MARKER")"

    xdg-user-dirs-update --force
    plasma-apply-wallpaperimage /usr/share/wallpapers/default.jpg

     if [ "$USER" != "live" ]; then
        rm -v ~/Desktop/calamares2.desktop /usr/share/applications/calamares.desktop &
     fi

     if [ "$USER" = "live" ]; then
        sudo calamares -d &
     fi

    if command -v plasma-welcome >/dev/null; then
        plasma-welcome &
    fi

    touch "$MARKER"
fi
