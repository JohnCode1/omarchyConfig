#!/usr/bin/bash
SITE_NAME=Github
SITE_URL=https://github.com
MANIFEST_URL=https://github.com/manifest.json
ICON_URL=https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/github-light.svg
KEYWORDS="opensource"
CATEGORIES=work
DESCRIPTION="platform for sharing open source projects"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

