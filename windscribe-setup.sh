#!/bin/bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7 && \
echo 'deb https://repo.windscribe.com/ubuntu zesty main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list && \
sudo apt update -y && \ 
sudo apt install windscribe-cli -y && \
windscribe login
# windscribe connect