#!/bin/bash
## Author: Nathanael Gandhi https://github.com/NathanaelGandhi/

## UPDATE APTS
echo "[install-apts] updating and upgrading apts"
sudo apt update && sudo apt upgrade -y

## INSTALL APTS
echo "[install-apts] installing apts"
sudo apt install -y terminator zsh fonts-powerline flatpak gnome-software-plugin-flatpak cpu-x photocollage neofetch git podman distrobox clang-format

## COMPLETE
echo "[install-apts]"
echo "--- COMPLETE ---"