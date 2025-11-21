#!/usr/bin/bash
SITE_NAME=Youtube
SITE_URL=https://youtube.com
MANIFEST_URL=https://www.youtube.com/manifest.webmanifest
ICON_URL=https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/youtube.svg
KEYWORDS="video"
CATEGORIES="stream"
DESCRIPTION="video platform for watching videos"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

