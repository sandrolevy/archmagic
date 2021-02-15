#!/usr/bin/env bash

echo -e "\nINSTALLING SOFTWARE\n"

PKGS=(

    # --- Setup Desktop
    'xmonad'                # Xmonad Desktop
    'xmonad-contrib'	    # Xmonad Extensions
    'xmobar'	 	    # Xmobar panel
    'dmenu'                 # Menu System
    'network-manager-applet' #Network Tray System 
    'lxsession'             # Elevate Applications
    'lxappearance'          # Gtk Themes Selector
    'nitrogen'              # Wallpaper Manager
    'rofi'		    # Rofi menu 
    'xorg-xbacklight'       # Backlight utility
    'acpi'                  # Daemon power manager
    'trayer'		    # System Trayer
    'i3-lock'               # System lock
    
    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'htop'                  # Process viewer
    'numlockx'              # Turns on numlock in X11
    'p7zip'                 # 7z compression program
    'tlp'                   # Advanced laptop power management
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'vim'                   # Terminal Editor
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH
    'tree'		    # Tree utility
    'htop'		    # Terminal system monitor
    'fzf'		    # The best fuzzy finder too
    'fd' 		    # Better find
    'exa'                   # Better ls
    'fastboot'              # FASTBOOT for Android
    'man'		    # Man Pages Support

    # GENERAL UTILITIES ---------------------------------------------------
    'vivaldi'               # My favorite browser
    'vifm'                  # TUI File Manager
    'flameshot'		    # My favorite screenshot tool
    'baobab'                # Gnome disk usage
    'gnome-disk-utility'    # Gnome disk utility
    'gparted'               # Disk parted tool
    'stacer'  		    # All around system manager
    'keepassxc'             # Password Manager
    'scrcpy'                # Android Screen Mirror
    'nautilus'              # My favorite GUI filemanager 
    
    # DEVELOPMENT ---------------------------------------------------------
    'code'                  # Visual Studio Code
    'emacs'                 # Text Editor
    'python'                # Scripting language

    # MEDIA ---------------------------------------------------------------
    'cmus'                  # My favorite music player
    'vlc'		    # My favorite video player
    'qbittorrent'           # My favorite torrent client
    'kodi'		    # The media center
    
    # GRAPHICS AND DESIGN -------------------------------------------------

    # PRODUCTIVITY --------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nDone!\n"
