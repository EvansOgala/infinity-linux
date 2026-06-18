# Infinity Linux

<h2><b>Infinity Linux</b> is a lightweight Arch Linux-based distribution focused on <b>speed, flexibility, compatibility, and ease of installation.</b></h2><br />

<h4>It uses:</h4>

- Arch Linux base
- Linux LTS kernel
- KDE Plasma desktop
- Calamares graphical installer
- BIOS and UEFI boot support
- Custom Infinity branding
- Local package repository support
- Features
- KDE Plasma desktop environment
- Calamares installer
- Linux LTS kernel
- NetworkManager networking
- PipeWire audio stack
- Flatpak support
- Plasma Vault integration
- BIOS and UEFI boot modes
- Large software selection included in the live environment

## Repository Layout
etc/            System configuration<br />
usr/            Wallpapers, icons, launchers, branding<br />
grub/           GRUB bootloader configuration<br />
syslinux/       BIOS bootloader configuration<br />
efiboot/        UEFI bootloader configuration<br />
opt/ezrepo/     Local package repository<br />
packages.x86_64 Package list<br />
profiledef.sh   ArchISO profile configuration<br />
steps.sh        Automated build script<br />

# Requirements

### Build host:

- Arch Linux
- Root access
- archiso
- mkinitcpio-archiso

### Required packages:
```bash
sudo pacman -S archiso mkinitcpio-archiso
```

### Building

Clone the repository:
```bash
git clone https://github.com/<username>/infinity-linux.git
cd infinity-linux
```
Run the build script:
```bash
sudo ./steps.sh
```
<b>The generated ISO will appear in:</b>

out/

### Boot Support

<b>Supported:</b>

- Legacy BIOS
- UEFI

### Desktop Environment

<b>Default desktop:</b>

- KDE Plasma

<b>Display manager:</b>

- SDDM

### Kernel

<b>Infinity Linux uses:</b>

- linux-lts

for improved stability and hardware compatibility.

### Verification

Generate checksums:
```bash
sha256sum *.iso > SHA256SUMS
```
<b>Verify:</b>
```bash
sha256sum -c SHA256SUMS
```
See LICENSE file for details.

### Status

<b>Current status:</b>

**Beta release.**

**Expect occasional bugs and unfinished features while development continues.**
>>>>>>> 13f8588 (Initial Infinity Linux release)
