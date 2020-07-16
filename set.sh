#!/bin/bash
#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#to install python3 on System
sudo apt install python3.8
#set python3 and pip3 as python and pip
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 10
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 10
#copy .files to home folder
find . -type f | awk -F"/" '$NF~ /^\..*$/ {system("rm -f ~/"$NF" && ln -s $(pwd)/"$NF" ~/"$NF)}'
