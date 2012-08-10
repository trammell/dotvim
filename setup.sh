#!/bin/sh

git clone git@github.com:trammell/dotvim.git

# create symlink to ~/.vim/
if [ -d "~/.vim/" ]; then
    echo "~/.vim/ already exists--aborting"
    exit 1
else
    echo "creating symbolic link to ~/.vim/"
    ln -s `pwd`/dotvim ~/.vim
fi

# symlink to the actual vimrc file
if [ -e ~/.vimrc ]; then
    echo "~/.vimrc already exists--aborting"
    exit 1
else
    echo "creating symbolic link to ~/.vimrc"
    ln -s ~/.vim/vimrc.vim ~/.vimrc
fi

# check out any submodules
cd ~/.vim/ && git submodule init && git submodule update

