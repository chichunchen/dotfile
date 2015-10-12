#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we're using the lastest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade


# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install other useful binaries.
brew insatll zsh
brew install git
brew install git-extras
brew install htop-osx
brew install ack
brew install exiv2
brew install git
brew install imagemagick --with-webp
brew install tree
brew install cmake
brew install figlet
brew install fortune
brew install irssi
brew install mysql
brew install postgresql
brew install node
brew install mongo
brew install openssl
brew install reattach-to-user-namespace
brew install speedtest_cli
brew install tmux
brew install valgrind
brew install sqlite
brew install python3
brew install rar
# it will takes several hours to compile gcc
# brew install gcc

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
# brew install vim --with-override-system-vim
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# Remove outdated versions from the cellar.
brew cleanup

