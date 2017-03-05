#!/bin/bash

echo "Installing git"
sudo apt-get install git 
echo "Moving to homedir"
cd $HOME
git clone https://github.com/TheToolbox/setup.git

cp setup/.bash* .