#!/bin/bash
gpg --search-keys FDC247B7 &&
gpg -a --export FDC247B7 | sudo apt-key add - 
echo 'deb https://repo.windscribe.com/ubuntu zesty main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list &&
sudo apt update -y && 
sudo apt install windscribe-cli -y &&
windscribe login
# windscribe connect
