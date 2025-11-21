#!/usr/bin/env bash
#Config
APP_NAME="Grayjay"
ZIP_URL="https://updater.grayjay.app/Apps/Grayjay.Desktop/Grayjay.Desktop-linux-x64.zip" 

DATA_HOME="$HOME/.local/share"
APPLICATIONS_DIR="$DATA_HOME/applications"
DESKTOP_FILE="$APPLICATIONS_DIR/${APP_NAME}.desktop"

echo "Downloading $APP_NAME..."
sudo cat > /etc/pacman.conf/ << EOF
[lizardbyte]
SigLevel = Optional
Server = https://github.com/LizardByte/pacman-repo/releases/latest/download
pacman -S sunshine
EOF
#Or
#wget https://github.com/LizardByte/Sunshine/releases/latest/download/sunshine.pkg.tar.gz
#tar -xvf sunshine.pkg.tar.gz
#cd sunshine
 
# install optional dependencies
#pacman -S cuda  # Nvidia GPU encoding support
#pacman -S libva-mesa-driver  # AMD GPU encoding support
 
#makepkg -si

echo "Done Installing $APP_NAME!😬"







