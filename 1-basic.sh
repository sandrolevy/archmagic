#!/usr/bin/env bash

echo -e "\nInstalling Base System\n"

PKGS=(

    # --- XORG Display Rendering
        'xorg'                  # Base Package
        'xorg-drivers'          # Display Drivers 
        'termite'               # Terminal for TTY
        'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'xorg-xinput'           # Xorg xinput

    # --- Setup Desktop
        'awesome'               # Awesome Desktop
        'dmenu'                 # Menu System
        'picom'                 # Translucent Windows
        'xclip'                 # System Clipboard
        'gnome-polkit'          # Elevate Applications
        'lxappearance'          # Set System Themes
        'nitrogen'              # Wallpaper Manager
        'gnome-control-center'

    # --- Login Display Manager
        'gdm'                    # Base Login Manager
        'make'
        
    # --- Networking Setup
        'wpa_supplicant'            # Key negotiation for WPA wireless networks
        'dialog'                    # Enables shell scripts to trigger dialog box
        'network-manager-applet'    # System tray icon/utility for network connectivity
        'libsecret'                 # Library for storing passwords
    
    # --- Audio
        'alsa-utils'        # Advanced Linux Sound Architecture (ALSA) Components https://alsa.opensrc.org/
        'alsa-plugins'      # ALSA plugins
        'pulseaudio'        # Pulse Audio sound components
        'pulseaudio-alsa'   # ALSA configuration for pulse audio
        'pavucontrol'       # Pulse Audio volume control
        'pnmixer'           # System tray volume control

    # --- Bluetooth
        'bluez'                 # Daemons for the bluetooth protocol stack
        'bluez-utils'           # Bluetooth development and debugging utilities
        'bluez-firmware'        # Firmwares for Broadcom BCM203x and STLC2300 Bluetooth chips
        'blueberry'             # Bluetooth configuration tool
        'pulseaudio-bluetooth'  # Bluetooth support for PulseAudio
    
    # --- Printers
        'cups'                  # Open source printer drivers
        'cups-pdf'              # PDF support for cups
        'ghostscript'           # PostScript interpreter
        'gsfonts'               # Adobe Postscript replacement fonts
        'hplip'                 # HP Drivers
        'system-config-printer' # Printer setup  utility
        
   # ---- Yay
   'base-devel'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nINSTALLING LY LOGIN MANAGER SOFTWARE\n"

cd "${HOME}"

echo "CLOING: YAY"
git clone "https://aur.archlinux.org/yay.git"


PKGS=(

    'ly'
)


cd ${HOME}/yay
makepkg -si

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

sudo systemctl enable gdm

echo -e "\nDone!\n"
