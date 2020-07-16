#!/bin/bash
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
find . -type f | awk -F"/" '$NF~ /^\..*$/ {system("rm -f ~/"$NF" && ln -s $(pwd)/"$NF" ~/"$NF)}'
