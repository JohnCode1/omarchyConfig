#!/usr/bin/env bash
#Config
APP_NAME="Private Internet Access"
SH_URL="https://installers.privateinternetaccess.com/download/pia-linux-3.7-08412.run" 

DATA_HOME="$HOME/.local/share"
APPLICATIONS_DIR="$DATA_HOME/applications"
DESKTOP_FILE="$APPLICATIONS_DIR/${APP_NAME}.desktop"

echo "Downloading $APP_NAME..."
wget -P "$DATA_HOME" "$SH_URL"
echo "Running PIA Scripts..."
sh $DATA_HOME/pia-linux-3.7-08412.run
rm -r $DATA_HOME/pia-linux-3.7-08412.run
echo "Done Installing Private Internet Access!😬"
cd $HOME/omarchyConfig







