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


# - **Gufw**
# Firewall
function_message_title '- **Gufw**'
sudo apt-get install -y  gufw
wait


# - **Viewnior**
# Image viewer
function_message_title '- **Viewnior**'
URL='https://launchpad.net/~gilir/+archive/lubuntu/+files/viewnior_1.3.0-0ubuntu1%7Eppa1_amd64.deb'
FILE=`mktemp`
wget "$URL" -qO $FILE
sudo dpkg -i $FILE
rm $FILE
wait


# - **shutter**
function_message_title '- **shutter**'
sudo apt-get install -y shutter
sudo apt-get -f install -y
wait


# - **Install Pantheon Desktop Environment**
function_message_title '- **Install Pantheon Desktop Environment**'
sudo apt-add-repository -y ppa:elementary-os/daily
sudo apt update
sudo apt-get install -y  elementary-theme elementary-icon-theme
wait


# - **Grub Customizer**
function_message_title '- **Grub Customizer**'
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt-get install -y grub-customizer
wait


# - **Cairo-Dock**
function_message_title '- **Cairo-Dock**'
sudo add-apt-repository -y ppa:cairo-dock-team/ppa
sudo apt update
sudo apt-get install -y cairo-dock cairo-dock-plug-ins
wait


# - **pyrenamer**
# Rename Files
function_message_title '- **pyrenamer**'
sudo apt-get install -y pyrenamer
wait


# - **Folder Color**
function_message_title '- **Folder Color**'
sudo add-apt-repository -y ppa:costales/folder-color
sudo apt-get update
sudo apt-get install -y folder-color-nemo
nemo -q
wait