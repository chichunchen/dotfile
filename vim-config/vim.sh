#!/usr/bin/env bash

# backup old vim files
if [ -f ~/.vim ]; then
	mv ~/.vim ~/dotfile/backup/.vim.orig
fi

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/dotfile/backup/.vimrc.orig
fi

# Install Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link vimrc to home
ln .vimrc ~/.vimrc

