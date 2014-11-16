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
wait

sudo apt-get -f install -y
wait

sudo ln -sf /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so.0
wait

sudo apt-get install -y autoconf automake  build-essential libxslt1-dev re2c libxml2 libxml2-dev bison libbz2-dev libreadline-dev libfreetype6 libfreetype6-dev libpng12-0 libpng12-dev libjpeg-dev libjpeg8-dev libjpeg8  libgd-dev libgd3 libxpm4 libssl-dev openssl gettext libgettextpo-dev libgettextpo0 libicu-dev libmhash-dev libmhash2 libmcrypt-dev libmcrypt4 python-software-properties software-properties-common g++ build-essential libssl-dev pkg-config
wait

sudo apt-get install -y linux-headers-generic dkms
wait

# - **Essential tools for compiling from sources**
function_message_title '- **Essential tools for compiling from sources**'
sudo apt-get install -y checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check
wait


# - **Curl**
function_message_title '- **Curl**'
sudo apt-get install -y curl
wait


# - **Git**
function_message_title '- **Git**'
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update
sudo apt-get install -y git
wait

# - **DaemonFSk**
# DaemonFS is a real time file watcher.
function_message_title '- **DaemonFSk**'
sudo apt-get install -y daemonfs
wait


# - **Samba**
function_message_title '- **Samba**'
sudo apt-get install -y samba system-config-samba cifs-utils winbind
wait


# - **zssh**
# program for interactively transferring files to a remote machine while using the secure  shell
function_message_title '- **zssh**'
sudo apt-get install -y zssh
wait


# - **Packing software**
function_message_title '- **Packing software**'
sudo apt-get install -y unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller
wait


# - **Cloc**
# Count Lines of Code
function_message_title '- **Cloc**'
sudo apt-get install -y cloc
wait


# - **Git Cloc**
function_message_title '- **Git Cloc**'
git clone https://github.com/kaelzhang/git-cloc.git
cd "${SCRIPT_PATH}/git-cloc/"
sudo make install
wait


# - **Htop**
function_message_title '- **Htop**'
sudo apt-get install -y htop
wait


# - **ack**
function_message_title '- **ack**'
sudo apt-get install -y ack-grep
sudo ln -s /usr/bin/ack-grep /usr/bin/ack
wait