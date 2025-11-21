#!/bin/bash
ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/JohnCode1/dotfiles"
REPO_NAME="dotfiles"
DOTFILE="kitty"
DOTFILE_HOME="$HOME/.config/$DOTFILE/"

echo "removing old configs and stowing $DOTFILE"
rm -rf $DOTFILE

cd "$REPO_NAME"
stow $DOTFILE
echo "finished stowing $DOTFILE 😬!"

