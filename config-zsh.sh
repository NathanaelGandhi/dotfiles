#!/bin/bash

# install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## set permissions to user only
sudo chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## configure oh-my-zsh
sed -i 's|plugins=(git)|plugins=(git zsh-autosuggestions zsh-syntax-highlighting)|g' ~/.zshrc

# install oh-my-zsh theme
# note: "fonts-powerline" makes "powerline (powerlevel10k)" themes look pretty
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
## set permissions to user only
sudo chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
## configure oh-my-zsh
sed -i 's|ZSH_THEME="robbyrussell"|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc 
## apply powerlevel10k configuration, overwriting existing
ln -sf $(pwd)/.p10k.zsh ~/