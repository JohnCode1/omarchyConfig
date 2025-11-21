#!/usr/bin/bash
SITE_NAME="Gemini"
SITE_URL=https://gemini.google
MANIFEST_URL=https://gemini.google
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/google-gemini.svg"
KEYWORDS="AI google"
CATEGORIES="productivity"
DESCRIPTION="Googles AI platform"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

