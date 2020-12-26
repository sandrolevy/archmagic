#!/usr/bin/env bash

echo -e "\nFINAL SETUP AND CONFIGURATION"

# ------------------------------------------------------------------------

# Disable all Power Saving Stuff
xset -dpms
xset s off
# ------------------------------------------------------------------------

echo -e "\nEnabling Login Display Manager"

sudo systemctl enable ly.service

# -----------------------------------------------------------------------

sudo cp ./30-touchpad.conf /etc/X11/xorg.conf.d/

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

echo "
###############################################################################
# Done
###############################################################################
"
