#!/bin/bash
#Update and upgrade the system
sudo apt update && sudo apt upgrade -y
sudo apt install -y git python3-pip

#Clone the repository
cd /home/ubuntu || exit
git clone https://oauth2:${github-clone-token}@github.com/VThang/DevOpsFoundation.Lab4-frontend.git
cd DevOpsFoundation.Lab4-frontend || exit && git checkout flask-frontend-1stproject-terraform
sudo su -c "pip install -r requirements.txt --break-system-packages" -s /bin/sh ubuntu

#Create the service file
sudo tee /etc/systemd/system/frontend.service <<EOF
[Unit]
Description=Frontend service
After=syslog.target network.target

[Service]
User=ubuntu
WorkingDirectory=/home/ubuntu/DevOpsFoundation.Lab4-frontend
ExecStart=/usr/bin/python3 -m gunicorn main:app -b 0.0.0.0:5000 -w 4

Restart=always
RestartSec=20

[Install]
WantedBy=multi-user.target
EOF

#Reload the daemon and start the service
sudo systemctl daemon-reload
sudo systemctl start frontend
sudo systemctl enable frontend