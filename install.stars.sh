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

function_message_title '- Stars -'

    # Delete text beetwen 2 words
    # ==============================================
FILEDEL="${HOME}/.zshrc"
WORD1='# |::::::::::::::::::>>>stars' # |<=== Config This
WORD2='# |::::::::::::::::::<<<stars' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${FILEDEL}" > "${FILEDEL}_tmp"
cp "${FILEDEL}_tmp" "${FILEDEL}"
rm "${FILEDEL}_tmp"


    # - **Install Stars - Add**
    # ==============================================
cat >> $HOME/.zshrc << "EOF"

# |::::::::::::::::::>>>stars
echo '
　 ･ ·̩　　 ｡　☆　　　ﾟ｡  ＊ 　 ｡*　　+　 　＊ 　･ ｡☆+　 　＊ 　･ ｡☆
＊ 　 ｡*　　+　 　＊ 　･ ｡☆  　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+  ｡　☆　　　ﾟ｡･ ·̩　　
　☆　　　*　　　* 　 。  　 ･ ·̩　　 ｡　☆　　　ﾟ｡　☆　　　*　　　* 　　☆ﾟ　+
　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+ 　☆　　　*　　　* 　 。＊ 　 ｡*　　+　 　＊ 　･ ｡☆
'
# |::::::::::::::::::<<<stars
EOF