#!/bin/bash

# Create symbolic link to vimrc and tmux.conf
script_path="$(realpath "$(dirname "$0")")"
ln -s "$script_path"/vimrc "$HOME"/.vimrc
ln -s "$script_path"/tmux.conf "$HOME"/.tmux.conf

# install vim plugin manager (Vundle)
FILE="$HOME/.vim/bundle/Vundle.vim"
if [ ! -d $FILE ]; then
    echo File does not exist
    git clone https://github.com/gmarik/Vundle.vim.git "$FILE"
fi
