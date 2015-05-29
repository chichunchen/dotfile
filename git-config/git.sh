#!/bin/bash

if [ ! -f ~/.gitignore ]; then
    mv ~/.gitignore ~/gitignore.bak
fi
cp ./gitignore ~/.gitignore

if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig.bak
fi
cp ./gitconfig ~/.gitconfig
