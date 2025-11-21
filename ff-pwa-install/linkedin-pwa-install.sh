#!usr/bin/bash
SITE_NAME="Linkedin"
SITE_URL=https://linkedin.com
MANIFEST_URL=https://static.licdn.com/aero-v1/sc/h/cnb1wgf591tnion4pjadgvx87
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/linkedin.svg"
KEYWORDS="work social media"
CATEGORIES="social media"
DESCRIPTION="work social media"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

