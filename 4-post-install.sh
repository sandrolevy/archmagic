#!/usr/bin/env bash

echo -e "\nFINAL SETUP AND CONFIGURATION"

# ------------------------------------------------------------------------

echo -e "\nEnabling Login Display Manager"

sudo systemctl enable ly.service

# -----------------------------------------------------------------------
echo -e "\n Enabling Touchpad Settings"
sudo cp ./30-touchpad.conf /etc/X11/xorg.conf.d/

echo -e "\n Unmutting Audio"

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

echo "
###############################################################################
# Done
###############################################################################
"
