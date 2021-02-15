#!/usr/bin/env bash

# INSTALLING STARSHIP PROMPT -----------------------
curl -fsSL https://starship.rs/install.sh | bash

# DOOM EMACS ---------------------------------------
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# DRACULA GTK THEMES -------------------------------
git clone https://github.com/dracula/gtk.git ~/.themes/dracula

# NUMIX CIRCLE ICONS -------------------------------
git clone https://github.com/numixproject/numix-icon-theme-circle.git ~/.icons

# PARU AUR HELPER ----------------------------------
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# OH-MY-ZSH ----------------------------------------
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
