#!/usr/bin/bash
SITE_NAME=""
SITE_URL=https://
MANIFEST_URL=h: https://s.yimg.com/nq/nv/json/web_manifest_zdmVWTe8Hdp05CX3yPbgNMfiiGr4DFZJOp0JdEBS8DM_v1.json
ICON_URL=""
KEYWORDS=""
CATEGORIES=""
DESCRIPTION=""
echo "installing Firefox PWA for $SITE_NAME"
firefoxpwa site install $MANIFEST_URL --start-url $SITE_URL --icon-url $ICON_URL --keywords $KEYWORDS --name $SITE_NAME 
echo "Finished installing FireFox PWA for $SITE_NAME 😬!"

