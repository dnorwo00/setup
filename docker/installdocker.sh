#!/bin/bash

echo  ""
echo "--------------------------------------------------------------------------------"
echo "Installing docker and docker-compose"
echo "--------------------------------------------------------------------------------"
echo ""
sudo apt update -y &&
sudo apt install docker.io docker-compose -y &&
echo ""

echo ""
echo "--------------------------------------------------------------------------------"
echo  "Configuring user for ability to run docker without sudo..."
echo "--------------------------------------------------------------------------------"
echo ""
sudo groupadd docker &&
sudo gpasswd -a $USER docker &&
newgrp docker
echo ""

echo ""
echo "--------------------------------------------------------------------------------"
echo  "Verifying with /docker ps/..."
echo "--------------------------------------------------------------------------------"
echo ""
docker ps
echo ""

echo ""
echo "--------------------------------------------------------------------------------"
echo  "Done."
echo "--------------------------------------------------------------------------------"
echo ""
echo ""
