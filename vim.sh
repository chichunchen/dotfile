#!/usr/bin/env bash

# backup old vim files
mv ~/.vim ~/.vim.orig
mv ~/.vimrc ~/.vimrc.orig

# link vim files to home directory
mkdir ~/.vim
cp bundles.vim ~/.vim
ln -s .vimrc ~/.vim

# setup Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

