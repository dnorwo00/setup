#!/bin/bash
sudo apt update -y && 
sudo apt install scdaemon byobu glances screenfetch fortune cowsay nmap zenmap gcc hydra xul-ext-lightning -y 
echo -e "\n---\n\nThe following applications can be upgraded. Commencing in 5 seconds...\n\n---\n\n"
apt list --upgradable
sleep 5
sudo apt upgrade -y
echo -e "\n---\n\nInstalling snap packages...\n\n---\n\n"
sudo snap install code --classic
sudo snap install brave
