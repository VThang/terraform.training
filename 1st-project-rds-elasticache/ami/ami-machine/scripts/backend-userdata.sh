#!/bin/bash
#Update and upgrade the system
sudo apt update && sudo apt upgrade -y
sudo apt install -y git python3-pip uvicorn

#Clone the repository
cd /home/ubuntu || exit
git clone https://oauth2:${github-clone-token}@github.com/VThang/DevOpsFoundation.Lab4-backend.git
cd DevOpsFoundation.Lab4-backend || exit && git checkout terraform-1stproject
sudo su -c "pip install -r requirements.txt --break-system-packages" -s /bin/sh ubuntu

#Create the service file
sudo tee /etc/systemd/system/backend.service <<1EOF
[Unit]
Description=Backend service
After=syslog.target network.target

[Service]
User=ubuntu
WorkingDirectory=/home/ubuntu/DevOpsFoundation.Lab4-backend
ExecStart=/usr/bin/uvicorn main:app --reload --log-level debug --host 0.0.0.0 --port 8000

Restart=always
RestartSec=20

[Install]
WantedBy=multi-user.target
1EOF

#Reload the daemon and start the service
sudo systemctl daemon-reload
sudo systemctl start backend
sudo systemctl enable backend