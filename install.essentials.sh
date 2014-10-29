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

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# - **update**
sudo apt update

# - **Progress bar**
function_message_title '- **Progress bar**'
echo 'Dpkg:Progress-Fancy "1";' | sudo tee /etc/apt/apt.conf.d/99progressbar


# - **Extras**
function_message_title '- **Extras**'
sudo apt-get install -y software-properties-common python-software-properties

sudo apt-get -f install -y

sudo ln -sf /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so.0

sudo apt-get install -y autoconf automake  build-essential libxslt1-dev re2c libxml2 libxml2-dev bison libbz2-dev libreadline-dev libfreetype6 libfreetype6-dev libpng12-0 libpng12-dev libjpeg-dev libjpeg8-dev libjpeg8  libgd-dev libgd3 libxpm4 libssl-dev openssl gettext libgettextpo-dev libgettextpo0 libicu-dev libmhash-dev libmhash2 libmcrypt-dev libmcrypt4 python-software-properties software-properties-common g++ build-essential libssl-dev pkg-config

sudo apt-get install -y linux-headers-generic dkms

# - **Essential tools for compiling from sources**
function_message_title '- **Essential tools for compiling from sources**'
sudo apt-get install -y checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check


# - **Puppet**
function_message_title '- **Puppet**'
sudo apt-get install -y puppet puppet-common


# - **Curl**
function_message_title '- **Curl**'
sudo apt-get install -y curl


# - **Git**
function_message_title '- **Git**'
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update
sudo apt-get install -y git


# - **Git Extras**
function_message_title '- **Git Extras**'
# https://github.com/visionmedia/git-extras
(cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)


# - **Gufw**
# Firewall
function_message_title '- **Gufw**'
sudo apt-get install -y  gufw


# - **Viewnior**
# Image viewer
function_message_title '- **Viewnior**'
URL='https://launchpad.net/~gilir/+archive/lubuntu/+files/viewnior_1.3.0-0ubuntu1%7Eppa1_amd64.deb'
FILE=`mktemp`
wget "$URL" -qO $FILE
sudo dpkg -i $FILE
rm $FILE


# - **shutter**
function_message_title '- **shutter**'
sudo apt-get install -y shutter
sudo apt-get -f install -y


# - **DaemonFSk**
# DaemonFS is a real time file watcher.
function_message_title '- **DaemonFSk**'
sudo apt-get install -y daemonfs


# - **Install Pantheon Desktop Environment**
function_message_title '- **Install Pantheon Desktop Environment**'
sudo apt-add-repository -y ppa:elementary-os/daily
sudo apt update
sudo apt-get install -y  elementary-theme elementary-icon-theme


# - **Grub Customizer**
function_message_title '- **Grub Customizer**'
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt-get install -y grub-customizer


# - **Cairo-Dock**
function_message_title '- **Cairo-Dock**'
sudo add-apt-repository -y ppa:cairo-dock-team/ppa
sudo apt update
sudo apt-get install -y cairo-dock cairo-dock-plug-ins


# - **Samba**
function_message_title '- **Samba**'
sudo apt-get install -y samba system-config-samba cifs-utils winbind


# - **zssh**
# program for interactively transferring files to a remote machine while using the secure  shell
function_message_title '- **zssh**'
sudo apt-get install -y zssh


# - **Packing software**
function_message_title '- **Packing software**'
sudo apt-get install -y unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller


# - **Filezilla**
function_message_title '- **Filezilla**'
sudo apt-get install -y filezilla filezilla-common


# - **Python**
function_message_title '- **Python**'
sudo apt-get install -y python-dev libxml2-dev libxslt1-dev antiword poppler-utils pstotext
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
sudo python ez_setup.py
sudo easy_install pip
sudo pip install textract


# - **Ruby**
function_message_title '- **Ruby**'
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm


# - **rmate**
function_message_title '- **rmate**'
curl https://raw.github.com/aurora/rmate/master/rmate > rmate
sudo mv rmate /usr/local/bin
# sudo mv rmate ~/.local/bin
sudo chmod +x /usr/local/bin/rmate
sudo iptables -A INPUT -p tcp --dport 52698 -j ACCEPT


# - **Cloc**
# Count Lines of Code
function_message_title '- **Cloc**'
sudo apt-get install -y cloc


# - **Git Cloc**
function_message_title '- **Git Cloc**'
git clone https://github.com/kaelzhang/git-cloc.git
cd "${SCRIPT_PATH}/git-cloc/"
sudo make install


# - **pyrenamer**
# Rename Files
function_message_title '- **pyrenamer**'
sudo apt-get install -y pyrenamer


# - **Folder Color**
function_message_title '- **Folder Color**'
sudo add-apt-repository -y ppa:costales/folder-color
sudo apt-get update
sudo apt-get install -y folder-color-nemo
nemo -q
