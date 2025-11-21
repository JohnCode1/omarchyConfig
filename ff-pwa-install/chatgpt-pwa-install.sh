#!/usr/bin/bash
SITE_NAME="Chat GPT"
SITE_URL=https://chatgpt.com/
MANIFEST_URL=https://chatgpt.com/
ICON_URL=https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/chatgpt.svg
KEYWORDS="AI"
CATEGORIES="productivity"
DESCRIPTION="AI from Open AI"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

