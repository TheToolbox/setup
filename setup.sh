#!/bin/bash

echo "Installing git" && 
sudo apt-get update && 
sudo apt-get -y install git && 

echo "Moving to homedir" && 
cd $HOME && 
git clone https://github.com/TheToolbox/setup.git && 

cp setup/.bashrc . && 
cp setup/.bash_aliases . && 
cp setup/.gitconfig
rm -rf $HOME/setup 

#set up lastpass cli
sudo apt-get -y install openssl libcurl4-openssl-dev libxml2 libssl-dev libxml2-dev pinentry-curses xclip cmake make gcc pkg-config &&
git clone https://github.com/lastpass/lastpass-cli.git &&
cd lastpass-cli &&
cmake . && make &&
sudo make install 
cd ..
rm -rf lastpass-cli

echo "Setup complete."