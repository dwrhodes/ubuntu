#!/bin/bash -eux

echo "==> updating apt sources"
sudo apt-get update
echo "==> Installing tmux"
sudo apt-get install tmux
echo "==> Installing openjdk-7-jre"
sudo apt-get install -y openjdk-7-jre
echo "==> Installing openjdk-7-jdk"
sudo apt-get install -y openjdk-7-jdk

echo "==> Installing google-chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >>/etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

echo "==> Installing meteor"
curl https://install.meteor.com/ | sh
