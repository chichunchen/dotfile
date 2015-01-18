#!/usr/bin/env bash

# backup old vim files
mv ~/.vim ~/dotfiles/backup/.vim.orig
mv ~/.vimrc ~/dotfiles/backup/.vimrc.orig

# link vim files to home directory
mkdir ~/.vim
cp bundles.vim ~/.vim
ln .vimrc ~/.vimrc

# setup Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

