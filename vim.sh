#!/usr/bin/env bash

# backup old vim files
mv ~/.vim ~/dotfile/backup/.vim.orig
mv ~/.vimrc ~/dotfile/backup/.vimrc.orig

# link vim files to home directory
mkdir ~/.vim
cp bundles.vim ~/.vim
ln .vimrc ~/.vimrc

# setup Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

