#!/bin/bash

if [ -f ~/.gitignore ]; then
    mv ~/.gitignore ~/.gitignore.bak
fi
cp ~/.dotfile/git-config/gitignore ~/.gitignore

if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig.bak
fi
cp ~/.dotfile/git-config/gitconfig ~/.gitconfig

echo "Finish git setup work."
