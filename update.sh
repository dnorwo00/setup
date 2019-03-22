#!/bin/bash
sudo apt update -y && apt list --upgradable
sleep 5
sudo apt upgrade -y
