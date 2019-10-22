#!/usr/bin/env bash

script_path="$(realpath "$(dirname "$0")")"
ln -s "$script_path"/vimrc "$HOME"/.vimrc
