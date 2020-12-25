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
)

echo -e "\nADDING USER TO BUMBLEBEE GROUP\n"
gpasswd -a sandro-levy bumbblebee

# INICIANDO O BUMBLEBEE SERVICE
echo -e "\n ENABLE BUMBLEBEED SERVICE\n"
systemctl enable bumblebeed.service

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nDone!\n"
