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
        'pulseaudio-bluetooth'  # Bluetooth support for PulseAudio
)


sudo systemctl enable gdm

echo -e "\nDone!\n"
