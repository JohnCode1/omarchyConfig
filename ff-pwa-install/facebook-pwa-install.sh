#!/usr/bin/bash
SITE_NAME="Facebook"
SITE_URL=https://www.facebook.com/
MANIFEST_URL=https://www.facebook.com/data/manifest/?is_workplace_mobile_pwa_dogfooding=0
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/facebook.svg"
KEYWORDS="social"
CATEGORIES="social media"
DESCRIPTION="Social platform"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

