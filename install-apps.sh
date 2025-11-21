#!/bin/bash
echo "Installing all apps"
# Install all packages in order
cd app-install
./install-asdf.sh
./install-bitwarden.sh
./install-discord.sh
./install-firefox.sh
./install-ghostty.sh
./install-gloriousegroll.sh
#./install-grayjay.sh
./install-hyprland-overrides.sh
./install-moonlight.sh
./install-netbird.sh
#./install-nodejs.sh
./install-pia.sh
#./install-postgresql.sh
./install-protonmailbridge.sh
#./install-ruby.sh
./install-stow.sh
./install-sunshine.sh
./install-superproductivity.sh
./install-syncthing.sh
./install-tmux.sh
./install-uboapp.sh
./install-zettlr.sh
./install-zsh.sh
cd $HOME/omarchyConfig
echo "Completed installing apps!😬"
