#!/usr/bin/bash
SITE_NAME="Gmail"
SITE_URL=https://mail.google.com/
MANIFEST_URL=https://mail.google.com/mail/u/0/manifest.json
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/gmail.svg"
KEYWORDS="email google"
CATEGORIES="productivity"
DESCRIPTION="Email for google"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

