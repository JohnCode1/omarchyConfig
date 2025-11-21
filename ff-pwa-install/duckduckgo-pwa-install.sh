#!/usr/bin/bash
SITE_NAME="Duck Duck GO"
SITE_URL=https://duckduckgo.com/
MANIFEST_URL=https://duckduckgo.com/
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/duckduckgo.svg"
KEYWORDS="search engine"
CATEGORIES="productivity"
DESCRIPTION="private search engine"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

