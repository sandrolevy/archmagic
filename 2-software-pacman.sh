#!/usr/bin/env bash

echo -e "\nINSTALLING SOFTWARE\n"

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel
    'base-devel'            # Allow make packpages

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

    # GENERAL UTILITIES ---------------------------------------------------
    'vivaldi'               # My favorite browser
    'vifm'                  # TUI File Manager
    
    # DEVELOPMENT ---------------------------------------------------------
    'code'                  # Visual Studio Code
    'emacs'                 # Text Editor
    'python'                # Scripting language

    # MEDIA ---------------------------------------------------------------
    'cmus'
    'vlc'
    
    # GRAPHICS AND DESIGN -------------------------------------------------

    # PRODUCTIVITY --------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nDone!\n"
