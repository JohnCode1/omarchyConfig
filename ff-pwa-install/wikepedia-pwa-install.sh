#!/usr/bin/bash
SITE_NAME="Wikepedia"
SITE_URL=https://wikipedia.org
MANIFEST_URL=https://www.wikipedia.org/
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/wikipedia.svg"
KEYWORDS="Search"
CATEGORIES="productivity"
DESCRIPTION="Platform for opensource information"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

