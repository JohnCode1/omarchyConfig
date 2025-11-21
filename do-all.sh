#!/bin/bash
echo "Installing all apps and dotfiles and setting parameters, and removing apps"
# Install all packages in order
./install-apps.sh
./install-dotfiles.sh
#./set-shell-zsh.sh
./set-sshagent.sh
./set-ufw.sh
./install-ff-pwas.sh
./set-fail2ban.sh
#./remove-all.sh
cd personal-scripts
./install-personal-scripts.sh
cd ..
echo "Completed setting parameters, installing apps, and installing dotfiles!😬"
