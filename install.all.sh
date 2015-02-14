#!/bin/bash

# - colors
# ==============================================

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
  echo -e "${RED}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "# |      ${RS} $1 ${RED}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "${RS}"
}

# | Basics | #
function_message_title '# | Basics | #'
wget -O xt  http://git.io/Dncnzw && chmod +x xt && ./xt && rm xt
wait

# | zsh | #
function_message_title '# | zsh | #'
wget -O xt  http://git.io/UBJMHQ && chmod +x xt && ./xt && rm xt
wait

# | Eessentials | #
function_message_title '# | Eessentials | #'
wget -O xt  http://git.io/-BDg8Q && chmod +x xt && ./xt && rm xt
wait

# | Extras | #
function_message_title '# | Extras | #'
wget -O xt  http://git.io/OBOaLQ && chmod +x xt && ./xt && rm xt
wait

# | Design | #
function_message_title '# | Design | #'
wget -O xt  http://git.io/Nov7 && chmod +x xt && ./xt && rm xt
wait

# | Customize | #
function_message_title '# | Customize | #'
wget -O xt  http://git.io/h9dVjw && chmod +x xt && ./xt && rm xt
wait

# | Tools | #
function_message_title '# | Tools | #'
wget -O xt  http://git.io/8yxL5Q && chmod +x xt && ./xt && rm xt
wait

# | Virtual tools | #
function_message_title '# | Virtual tools | #'
wget -O xt  http://git.io/KnwTFw && chmod +x xt && ./xt && rm xt
wait

# | Nodejs | #
function_message_title '# | Nodejs | #'
wget -O xt  http://git.io/R7LgJg && chmod +x xt && ./xt && rm xt
wait
