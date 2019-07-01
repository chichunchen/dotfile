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

# Install languages
brew insatll zsh
brew install python3
brew install python
brew install node

# Install tools
brew install wget
brew install curl
brew install git
brew install git-extras
brew install htop-osx
brew install ack
brew install imagemagick --with-webp
brew install tree
brew install ninja
brew install cmake
brew install openssl
brew install speedtest_cli
brew install tmux
brew install sqlite
brew install vagrant

# Remove outdated versions from the cellar.
brew cleanup

