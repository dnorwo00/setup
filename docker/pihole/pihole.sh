#!/bin/bash
echo ""
echo "--------------------------------------------------------------------------------"
echo "- Creating Directories, fixing systemd-resolved conflict"
echo "--------------------------------------------------------------------------------"
echo ""
mkdir -p ~/dockerStuff/pihole/etc-pihole/
mkdir -p ~/dockerStuff/pihole/etc-dsnmasq.d/
sudo sed -E -i 's/#?DNSStubListener=yes/DNSStubListener=no/g' /etc/systemd/resolved.conf
sudo systemctl restart systemd-resolved &&

echo ""
echo "--------------------------------------------------------------------------------"
echo "- Running Docker Compose. Project name: thepihole."
echo "- If you encounter network problems, try disabling your VPN?"
echo "--------------------------------------------------------------------------------"
echo ""
docker-compose -p thepihole up -d --build

echo ""
echo "--------------------------------------------------------------------------------"
echo "- Done"
echo "--------------------------------------------------------------------------------"
echo ""
