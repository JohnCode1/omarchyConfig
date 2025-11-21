#!/usr/bin/env bash
#Config
APP_NAME="Grayjay"
ZIP_URL="https://updater.grayjay.app/Apps/Grayjay.Desktop/Grayjay.Desktop-linux-x64.zip" 

DATA_HOME="$HOME/.local/share"
APPLICATIONS_DIR="$DATA_HOME/applications"
DESKTOP_FILE="$APPLICATIONS_DIR/${APP_NAME}.desktop"

echo "Downloading $APP_NAME..."
wget -P "$DATA_HOME" "$ZIP_URL"
echo "extracting..."
unzip -d $DATA_HOME $DATA_HOME/Grayjay.Desktop-linux-x64.zip
rm -r $DATA_HOME/Grayjay.Desktop-linux-x64.zip
echo "Creating desktop entry at $DESKTOP_FILE..."
cat > "$DESKTOP_FILE" << EOF
[Desktop Entry]
Version=1.0
Name=$APP_NAME
Type=Application
Comment=$APP_NAME Desktop
Icon=$HOME/.local/share/Grayjay.Desktop-linux-x64-v12/grayjay.png
Exec=$HOME/.local/share/Grayjay.Desktop-linux-x64-v12/Grayjay
EOF

echo "Done Installing Grajay!😬"







