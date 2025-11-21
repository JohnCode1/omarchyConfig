#!/usr/bin/env bash
#Config
APP_NAME="superproductivity"

DATA_HOME="$HOME/.local/share"
APPLICATIONS_DIR="$DATA_HOME/applications"
DESKTOP_FILE="$APPLICATIONS_DIR/${APP_NAME}.desktop"

cd $DATA_HOME
echo "Downloading $APP_NAME..."
git clone https://aur.archlinux.org/superproductivity-bin.git
cd superproductivity-bin
echo "Creating desktop entry at $DESKTOP_FILE..."
makepkg -si
echo "Done Installing SuperProductivity!😬"







