#!/bin/bash

ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/JohnCode1/dotfiles"
REPO_NAME="dotfiles"

is_stow_installed() {
  pacman -Qi "stow" &> /dev/null
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi

cd ~

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone"
else
  git clone "$REPO_URL"
fi

cd dotfile-install
#./alacritty-dotfile-install.sh
./autostart-dotfile-install.sh
./bindings-dotfile-install.sh
./envs-dotfile-install.sh
./ghostty-dotfiles-install.sh
./hypridle-dotfile-install.sh
./hyprland-dotfile-install.sh
./hyprlock-dotfile-install.sh
#./hyprpaper-dotfile-install.sh
#./i3-dotfile-install.sh
./input-dotfile-install.sh
#./kitty-dotfile-install.sh
./looknfeel-dotfile-install.sh
./monitors-dotfile-install.sh
./nvim-dotfile-install.sh
#./picom-dotfile-install.sh
#./polybar-dotfile-install.sh
#./rofi-dotfile-install.sh
#./screenLayout-dotfile-install.sh
#./starship-dotfile-install.sh
./tmux-dotfile-install.sh
#./waybar-dotfile-install.sh
#./wofi-dotfile-install.sh
#./Xresources-dotfile-install.sh
#./zshrc-dotfile-install.sh
cd $HOME/omarchyConfig
echo "Installed all dotfiles!😬" 
