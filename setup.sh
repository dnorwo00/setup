#!/bin/bash
sudo apt update -y && sudo apt install scdaemon byobu glances screenfetch
apt list --upgradable
sleep 5
sudo apt upgrade -y
