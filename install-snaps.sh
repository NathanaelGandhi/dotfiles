#!/bin/bash
## Author: Nathanael Gandhi https://github.com/NathanaelGandhi/

## UPDATE SNAPS
echo "[install-snaps] updating and upgrading snaps"
sudo apt update && sudo apt upgrade -y

## INSTALL SNAPS
echo "[install-snaps] installing snaps"
sudo snap install code --classic
sudo snap install spotify
sudo snap install zerotier

## COMPLETE
echo "[install-snaps]"
echo "--- COMPLETE ---"