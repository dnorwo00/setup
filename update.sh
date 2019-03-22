#!/bin/bash
sudo apt update -y && sudo apt list --upgradable
sleep 5
sudo apt upgrade -y
