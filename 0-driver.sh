#!/usr/bin/env bash

echo -e "\nINSTALLING VIDEO DRIVERS\n"

PKGS=(

    # INTEL DRIVERS --------------------------------------------------
    'xf86-video-intel'
    'mesa'
    'lib32-mesa'
    
    # NVIDIA ---------------------------------------------------------
    'nvidia'
    'nvidia-utils'
    'lib32-nvidia-utils'
    'opencl-nvidia'
    
    # BUMBLEBEE ------------------------------------------------------
    'bumblebee'
    'bbswitch'
    
    # TOUCHPAD ------------------------------------------------------
    'xf86-input-libinput'
    
    # AUDIO ---------------------------------------------------------
        'alsa-utils'        # Advanced Linux Sound Architecture (ALSA) Components https://alsa.opensrc.org/
        'alsa-plugins'      # ALSA plugins
        'pulseaudio'        # Pulse Audio sound components
        'pulseaudio-alsa'   # ALSA configuration for pulse audio
        'pavucontrol'       # Pulse Audio volume control
        'pnmixer'           # System tray volume control
        'pulseaudio-bluetooth'  # Bluetooth support for PulseAudio
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nADDING USER TO BUMBLEBEE GROUP\n"
gpasswd -a sandro-levy bumbblebee

# INICIANDO O BUMBLEBEE SERVICE
echo -e "\n ENABLE BUMBLEBEED SERVICE\n"
systemctl enable bumblebeed.service

echo -e "\nDone!\n"
