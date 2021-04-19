#!/bin/bash

# remove existing installation
echo "Removing existing installation"
rm -rf /home/pi/.oh-my-zsh

# install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k
echo "Installing powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install plugins
echo "Installing plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# move files into correct directory
echo "moving config files to the correct directory"
cp "./.zshrc" "${HOME}/.zshrc"
cp "./.zsh_aliases" "${HOME}/.zsh_aliases"
cp "./.p10k.zsh" "${HOME}/.p10k.zsh"

echo "installation complete!"