#!/usr/bin/bash
SITE_NAME="Zoom"
SITE_URL=https://app.zoom.us
MANIFEST_URL=https://app.zoom.us/wc/manifest.json
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/zoom.svg"
KEYWORDS="video stream"
CATEGORIES="productivity"
DESCRIPTION="Video Stream for work and school"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"
