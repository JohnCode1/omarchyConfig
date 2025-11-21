#!/bin/bash
echo "Setting and enabling UFW Firewall"
sudo ufw limit 22/tcp comment "ssh"
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 53317/udp comment "Local Send"
sudo ufw allow 53317/tcp comment "Local Send"
sudo ufw allow 172.17.0.1 53/udp comment "docker-dns"
sudo ufw allow syncthing
sudo ufw enable
echo "Finished setting UFW Firewall 😬!"
