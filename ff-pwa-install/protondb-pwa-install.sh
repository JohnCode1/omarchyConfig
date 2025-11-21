#!/usr/bin/bash
SITE_NAME="Proton DB"
SITE_URL=https://www.protondb.com
MANIFEST_URL=https://head.protondb.pages.dev/sites/protondb/manifest.json
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/proton-lumo.svg"
KEYWORDS="Database Games Compatibility"
CATEGORIES="games"
DESCRIPTION="linux proton compatability checker"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

