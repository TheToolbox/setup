#!/bin/bash

echo "Installing git" &&
sudo apt-get update &&
sudo apt-get install -Y git &&
echo "Moving to homedir" &&
cd $HOME &&
git clone https://github.com/TheToolbox/setup.git &&

cp setup/.bashrc . &&
cp setup/.bash_aliases . &&
rm -rf $HOME/setup &&
