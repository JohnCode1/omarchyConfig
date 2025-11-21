#!/bin/bash
echo "enabling and setting fail2ban"
cat < /etc/fail2ban/jail.local >> EOF
[DEFAULT]
ignoreip = 127.0.0.1/8 ::1
bantime = 3600
findtime = 600
maxretry = 5

[sshd]
enabled = true
EOF
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
echo "Done setting fail2ban!😬"
