#!/bin/bash

echo ""
echo "--------------------------------------------------------------------------------"
echo "- Getting GPG key for verification. Please confirm FDC247B7:"
echo "- Windscribe Limited <support@windscribe.com>"
echo "- 4096 bit RSA key F1E52E16FDC247B7,created: 2017-07-07"
echo "--------------------------------------------------------------------------------"
echo ""
gpg --search-keys FDC247B7 &&
echo ""
echo ""

echo "--------------------------------------------------------------------------------"
echo "- Adding GPG key to apt-key list, adding repo to apt sources."
echo "--------------------------------------------------------------------------------"
echo ""
gpg -a --export FDC247B7 | sudo apt-key add - 
`echo 'deb https://repo.windscribe.com/ubuntu zesty main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list` &&

echo ""
echo "--------------------------------------------------------------------------------"
echo "- Running apt update, apt install."
echo "--------------------------------------------------------------------------------"
echo ""
sudo apt update -y && 
sudo apt install windscribe-cli -y &&
echo ""
echo ""

echo "--------------------------------------------------------------------------------"
echo "- Setting configuration."
echo "--------------------------------------------------------------------------------"
echo ""
windscribe port 443
windscribe protocol stealth
echo ""
echo ""
echo "--------------------------------------------------------------------------------"
echo "- Please enter credentials."
echo "--------------------------------------------------------------------------------"
echo ""
windscribe login &&
windscribe connect best

echo ""
echo "--------------------------------------------------------------------------------"
echo "- Done."
echo "--------------------------------------------------------------------------------"
echo ""
echo ""