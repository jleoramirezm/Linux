#!/bin/bash

# Reset color
RS="\e[0m"
# Basic Colors
BLACK="\e[0;30m"
RED="\e[0;31m"
GREEN="\e[0;32m"
YELLOW="\e[0;33m"
BLUE="\e[0;34m"
PURPLE="\e[0;35m"
CYAN="\e[0;36m"
WHITE="\e[0;37m"

function_message_title () {
  echo -e "${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "# |      ${RS} $1 ${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "${RS}"
}

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# - **update**
sudo apt update
wait


# - **Puppet**
function_message_title '- **Puppet**'
sudo apt-get install -y puppet puppet-common
wait


# - **Git Extras**
function_message_title '- **Git Extras**'
# https://github.com/visionmedia/git-extras
(cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)
wait


# - **Python**
function_message_title '- **Python**'
sudo apt-get install -y python-dev libxml2-dev libxslt1-dev antiword poppler-utils pstotext
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
sudo python ez_setup.py
sudo easy_install pip
sudo pip install textract
wait


# - **Ruby**
function_message_title '- **Ruby**'
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
wait


# - **rmate**
function_message_title '- **rmate**'
curl https://raw.github.com/aurora/rmate/master/rmate > rmate
sudo mv rmate /usr/local/bin
# sudo mv rmate ~/.local/bin
sudo chmod +x /usr/local/bin/rmate
sudo iptables -A INPUT -p tcp --dport 52698 -j ACCEPT
wait


# - **Filezilla**
function_message_title '- **Filezilla**'
sudo apt-get install -y filezilla filezilla-common
wait