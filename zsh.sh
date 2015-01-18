#!/usr/bin/env bash

# Set Zsh as default shell
chsh -s /bin/zsh

# Install oh-my-zsh from curl
curl -L http://install.ohmyz.sh | sh

# link oh-my-zsh custom files
ln -s oh-my-zsh-custom/* ~/.oh-my-zsh/custom/

