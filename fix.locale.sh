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


SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function_message_title () {
  echo -e "${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "# |      ${RS} $1 ${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "${RS}"
}

function_message_title '- **Fix Locale**'

LANGUAGE=en_US.UTF-8  && \
LANG=en_US.UTF-8 && \
LC_ALL=en_US.UTF-8 && \
sudo locale-gen en_US.UTF-8 && \
sudo dpkg-reconfigure locales

LANGUAGE=es_ES.UTF-8 && \
LANG=es_ES.UTF-8 && \
LC_ALL=es_ES.UTF-8 && \
sudo locale-gen es_ES.UTF-8 && \
sudo dpkg-reconfigure locales
