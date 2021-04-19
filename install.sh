#!/bin/bash

# install oh-my-zsh
if [! -z "${ZSH}"]
then 
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh-my-zsh installation already found."
fi

# install powerlevel10k
echo "Installing powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# move files into correct directory
echo "moving config files to the correct directory"
cp "./.zshrc" "${HOME}/.zshrc"
cp "./.zsh_aliases" "${HOME}/.zsh_aliases"
cp "./.p10k.zsh" "${HOME}/.p10k.zsh"

echo "installation complete!"