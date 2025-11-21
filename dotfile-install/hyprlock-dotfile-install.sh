#!/bin/bash
ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/JohnCode1/dotfiles"
REPO_NAME="dotfiles"
DOTFILE="hyprlock"
DOTFILE_HOME="$HOME/.config/hypr/$DOTFILE.conf"

echo "removing old configs and stowing $DOTFILE"
rm -rf $DOTFILE_HOME

cd "$REPO_NAME"
stow $DOTFILE
echo "Finished stowing $DOTFILE 😬!"
