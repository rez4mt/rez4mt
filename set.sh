#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install python3.8
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 10
find . -type f | awk -F"/" '$NF~ /^\..*$/ {system("rm -f ~/"$NF" && ln -s $(pwd)/"$NF" ~/"$NF)}'
