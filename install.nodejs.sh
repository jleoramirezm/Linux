#!/bin/bash


sudo add-apt-repository ppa:chris-lea/node.js -y  && sudo apt update && sudo apt install -y  nodejs
npm config set prefix ~/.npm
sudo mkdir ~/tmp
sudo mkdir ~/npm
sudo chown -R $USER:$USER ~/tmp
sudo chown -R $USER:$USER ~/.npm
sudo npm update -g
sudo chown -R $USER:$USER ~/.npm


cat <<-EOF >> ~/.zshrc
# |::::::::::::::::::>>>npm
# | Path for nodejs and npm
export PATH=$HOME/npm/.bin:$PATH
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules:$HOME/.npm:$HOME/.npm/lib/node_modules
export PATH=$HOME/.npm/bin:$PATH
# |::::::::::::::::::<<<npm
EOF


    # - **Nodejs Packages**
npm install -g bower
npm install -g less
npm install -g grunt
npm install -g grunt-cli
    # Watch files and run a command when they change
npm install -g wr
    # Yeoman
npm install -g yo
    # Web Generator
npm install -g generator-webapp
npm install -g generator-generator


    # - **NVM**
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
echo "source ~/.nvm/nvm.sh" >> ~/.zshrc
source ~/.nvm/nvm.sh && source ~/.nvm/nvm.sh

    # User
    # $ nvm install 0.10
    # $ nvm install 0.11
    # $ nvm use 0.10
    # $ nvm ls
