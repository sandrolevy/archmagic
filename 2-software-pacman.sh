#!/usr/bin/env bash

echo -e "\nINSTALLING SOFTWARE\n"

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel

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

    # DISK UTILITIES ------------------------------------------------------

    'adb'                   # ADB for Android
    'autofs'                # Auto-mounter
    'dosfstools'            # DOS Support
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gvfs-mtp'              # Read MTP Connected Systems
    'gvfs-smb'              # More File System Stuff
    'ntfs-3g'               # Open source implementation of NTFS file system

    # GENERAL UTILITIES ---------------------------------------------------
    'vivaldi'               # My favorite browser
    'vifm'                  # TUI File Manager
    
    # DEVELOPMENT ---------------------------------------------------------
    'code'                  # Visual Studio Code
    'emacs'
    'python'                # Scripting language

    # MEDIA ---------------------------------------------------------------
    'cmus'
    
    # GRAPHICS AND DESIGN -------------------------------------------------

    # PRODUCTIVITY --------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nDone!\n"
