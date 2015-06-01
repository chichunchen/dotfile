#!/bin/bash

if [ -f ~/.gitignore ]; then
    mv ~/.gitignore ~/.gitignore.bak
fi
cp ~/.dotfile/git-config/gitignore ~/.gitignore

if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig.bak
fi
cp ~/.dotfile/git-config/gitconfig ~/.gitconfig

email=`git config user.email`
name=`git config user.name`
if [ -n "$email" ] && [ -n "$name" ]; 
then
    echo "Finish git setup work."
fi
