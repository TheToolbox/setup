#!/bin/bash

echo "Installing git" && 
sudo apt-get update && 
sudo apt-get -y install git && 

echo "Moving to homedir" && 
cd $HOME && 
git clone https://github.com/TheToolbox/setup.git && 

cp setup/.bashrc . && 
cp setup/.bash_aliases . && 
cp -f setup/.gitconfig .
rm -rf $HOME/setup 

#set up lastpass cli
sudo apt-get -y install openssl libcurl4-openssl-dev libxml2 libssl-dev libxml2-dev pinentry-curses xclip cmake make gcc g++ pkg-config &&
git clone https://github.com/lastpass/lastpass-cli.git &&
cd lastpass-cli &&
cmake . && make &&
sudo make install 
cd ..
rm -rf lastpass-cli

#install docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce


echo "Setup complete."
