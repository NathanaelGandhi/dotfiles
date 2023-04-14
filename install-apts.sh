#!/bin/bash
## Author: Nathanael Gandhi https://github.com/NathanaelGandhi/

## UPDATE APTS
echo "[install-apts] updating and upgrading apts"
sudo apt update && sudo apt upgrade -y

## INSTALL APTS
echo "[install-apts] installing apts"
sudo apt install -y terminator zsh fonts-powerline flatpak gnome-software-plugin-flatpak cpu-x photocollage neofetch git podman distrobox clang-format direnv

## LINK APTS BASH
if grep -Fxq 'eval "$(direnv hook bash)"' ~/.bashrc
then
    echo "direnv bash hook already exists"
else
    echo 'eval "$(direnv hook bash)"' | tee -a ~/.bashrc
fi

## LINK APTS ZSH
if grep -Fxq 'eval "$(direnv hook zsh)"' ~/.zshrc
then
    echo "direnv zsh hook already exists"
else
    echo 'eval "$(direnv hook zsh)"' | tee -a ~/.zshrc
fi

## COMPLETE
echo "[install-apts]"
echo "--- COMPLETE ---"
