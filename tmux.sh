#!/usr/bin/env bash

git clone https://github.com/tony/tmux-config.git ~/.tmux

mv ~/.tmux.conf ~/.tmux/.tmux.conf.bak
ln ~/.tmux/.tmux.conf ~/.tmux.conf
cd ~/.tmux


# install tmux-mem-cpu-load
git submodule init
git submodule update
cd ~/.tmux/vendor/tmux-mem-cpu-load

# check whether the environment has cmake or not
if [ ! -x /usr/bin/cmake ]; then
    sudo apt-get install cmake
fi
cmake .
make
sudo make install

# Update Conf
tmux source-file ~/.tmux.conf
