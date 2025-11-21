#!/usr/bin/bash
SITE_NAME="Teams"
SITE_URL=https://teams.microsoft.com
MANIFEST_URL=https://teams.microsoft.com/v2/manifest.json
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/microsoft-teams.svg"
KEYWORDS="Video stream"
CATEGORIES="productivity"
DESCRIPTION="video platform with others"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"
