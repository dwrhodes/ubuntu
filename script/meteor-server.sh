#!/bin/bash -eux

echo "==> updating apt sources"
sudo apt-get update
echo "==> Installing tmux"
sudo apt-get install tmux

echo "==> Installing meteor"
curl https://install.meteor.com/ | sh
