#!/bin/bash

# Using Ubuntu
# https://github.com/nodesource/distributions

curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
