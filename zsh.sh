#!/bin/bash

# Set zsh as default shell
chsh -s /usr/bin/zsh

# Install oh-my-zsh from curl
if [ ! -d ~/.oh-my-zsh ];
then
    curl -L http://install.ohmyz.sh | sh
fi

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc-bak
fi

cp ./zshrc-for-linux ~/.zshrc
source ~/.zshrc
