#!/bin/bash

curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y npm

npm config set prefix ~/.npm

sudo mkdir ~/tmp
sudo mkdir ~/.npm

sudo chown -R $USER:$USER ~/tmp
sudo chown -R $USER:$USER ~/.npm

sudo npm update -g
sudo chown -R $USER:$USER ~/.npm


    # Delete text beetwen 2 words
    # ==============================================
FILEDEL="${HOME}/.zshrc"
WORD1='# |::::::::::::::::::>>>npm' # |<=== Config This
WORD2='# |::::::::::::::::::<<<npm' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${FILEDEL}" > "${FILEDEL}_tmp"
cp "${FILEDEL}_tmp" "${FILEDEL}"
rm "${FILEDEL}_tmp"


# Add to path
# ==============================================
cat >> $HOME/.zshrc << "EOF"
# |::::::::::::::::::>>>npm
# | Path for nodejs and npm
export PATH=$HOME/.npm/bin:$PATH
export NODE_PATH=$NODE_PATH:$HOME/.npm/lib/node_modules
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules:$HOME/.npm:$HOME/.npm/lib/node_modules
# |::::::::::::::::::<<<npm
EOF



# | **NVM - Node Version Manager**
# | https://github.com/creationix/nvm
# |     Use:
# |     $ nvm install 0.10
# |     $ nvm install 0.11
# |     $ nvm use 0.10
# |     $ nvm ls
# ==============================================
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
source ~/.nvm/nvm.sh
source ~/.nvm/nvm.sh


    # Delete text beetwen 2 words
    # ==============================================
FILEDEL="${HOME}/.zshrc"
WORD1='# |::::::::::::::::::>>>nvm' # |<=== Config This
WORD2='# |::::::::::::::::::<<<nvm' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${FILEDEL}" > "${FILEDEL}_tmp"
cp "${FILEDEL}_tmp" "${FILEDEL}"
rm "${FILEDEL}_tmp"


# Add to path
# ==============================================
cat >> $HOME/.zshrc << "EOF"
# |::::::::::::::::::>>>nvm
source ~/.nvm/nvm.sh
# |::::::::::::::::::<<<nvm
EOF

source $HOME/.zshrc
