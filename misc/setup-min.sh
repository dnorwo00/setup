#!/bin/bash
sudo apt update -y && 
sudo apt install scdaemon byobu glances screenfetch curl net-tools -y 
echo -e "\n---\n\nThe following applications can be upgraded. Commencing in 5 seconds...\n\n---\n\n"
apt list --upgradable
sleep 5
sudo apt upgrade -y
