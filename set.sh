#!/bin/bash
#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#to install python3 on System
sudo apt install python3.8 pip3 tmux python3.8-dev
#set python3 and pip3 as python and pip
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 10
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 10
#install virtualenv/wrapper
sudo pip install --no-cache-dir virtualenv
sudo pip install --no-cache-dir virtualenvwrapper
#copy .files to home folder
find . -type f | awk -F"/" '$NF~ /^\..*$/ {system("rm -f ~/"$NF" && ln -s $(pwd)/"$NF" ~/"$NF)}'
#reload bashrc file.
source ~/.bashrc
