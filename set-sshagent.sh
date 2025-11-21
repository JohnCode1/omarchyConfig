#!/bin/bash
read -s -p "Enter your Public SSH Key: " SSH_PUB_KEY
read -s -p "Enter your Bitwarden Email: " BW_EMAIL
echo "Setting Bitwarden SSH Agent"
export SSH_AUTH_SOCK=/home/$USER/.bitwarden-ssh-agent.sock
cat < ~/.bashrc >> EOF
export SSH_AUTH_SOCK=/home/"$USER"/.bitwarden-ssh-agent.sock
EOF
git config --global gpg.format ssh
git config --global user.signingkey "$SSH_PUB_KEY"
git config --global commit.gpgsign true
git config --global gpg.ssh.allowedSigners "$HOME/.ssh/allowedSigners"
cat <<EOF >> ~/.ssh/allowedSigners
$BW_EMAIL" ssh-ed25519 $SSH_PUB_KEY
EOF
