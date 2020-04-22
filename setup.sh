#!/bin/bash

# Create symbolic link to vimrc
script_path="$(realpath "$(dirname "$0")")"
ln -s "$script_path"/vimrc "$HOME"/.vimrc

# install vim packages
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
