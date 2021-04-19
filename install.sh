#!/bin/bash

# move files into correct directory
echo "moving config files to the correct directory"
cp "./.zshrc" "${HOME}/.zshrc"
cp "./.zsh_aliases" "${HOME}/.zsh_aliases"
cp "./.p10k.zsh" "${HOME}/.p10k.zsh"

# install oh-my-zsh
# remove existing installation
rm -rf /home/pi/.oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k
echo "Installing powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "installation complete!"