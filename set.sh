#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install python3.8
find . -type f | awk -F"/" '$NF~ /^\..*$/ {system("rm -f ~/"$NF" && ln -s $(pwd)/"$NF" ~/"$NF)}'
