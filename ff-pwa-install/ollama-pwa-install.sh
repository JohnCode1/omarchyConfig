#!/usr/bin/bash
SITE_NAME="Ollama"
SITE_URL=https://ollama.com
MANIFEST_URL=https://ollama.com/library
ICON_URL="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/ollama-dark.svg"
KEYWORDS="AI"
CATEGORIES="homelab"
DESCRIPTION="Website for selfhostable AI"
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

