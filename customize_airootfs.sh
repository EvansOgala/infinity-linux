#!/bin/bash
#!/bin/bash

# --- SilentSDDM Git Setup ---
mkdir -p /usr/share/sddm/themes/silent
THEME_DIR="/usr/share/sddm/themes/silent"

# 1. Clean build check & clone repo
rm -rf "$THEME_DIR"
git clone --depth 1 https://github.com/uiriansan/SilentSDDM.git "$THEME_DIR"

# 2. Set strict permissions so SDDM can actually read the QML assets
chmod -R 755 "$THEME_DIR"

# 3. Create the configuration drop-in directory and file
mkdir -p /etc/sddm.conf.d
cat <<EOF > /etc/sddm.conf.d/theme.conf
[Theme]
Current=silent
EOF

# 4. Fire up the systemd service for boot time
systemctl enable sddm.service

# --- SilentSDDM Aesthetic Customization ---
USER_CONF="/usr/share/sddm/themes/silent/theme.conf"

cat <<EOF > "$USER_CONF"
[General]
# Color Scheme (options: catppuccin, nord, everforest, gruvbox, default, etc.)
color_scheme="catppuccin"

# Layout Style (options: Left, Center, Right)
layout_style="Center"

# Background type (options: color, image, animated)
background_type="image"

# Path to the default background image inside the ISO filesystem
background_path="/usr/share/backgrounds/default.jpg"

# Custom greeting text
greeting_text="Welcome to Infinity Linux!"
EOF


# Note: by default, steps.sh will add to the iso every flatpak in the host.
systemctl disable plasmalogin
systemctl enable bluetooth
systemctl enable grub-btrfsd
systemctl enable sddm
pacman -Syu
flatpak install  org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
plymouth-set-default-theme -R infinity
dconf update
