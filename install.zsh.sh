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


SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


    # - update
    # ==============================================
sudo apt-get update


    # - **Install zsh
    # ==============================================
sudo apt-get install -y zsh


    # - **Setting ZSH as the default shell (instead of bash)**
    # ==============================================
w=`which zsh` && h=`whoami` && sudo chsh -s $w $h


    # - Install git if not present
    # ==============================================
git --version 2>&1 >/dev/null
CHECK=$?
if [ $CHECK -ne 0 ]; then
    sudo apt-get install -y git
fi


    # - **Install Oh-My-ZSH**
    # ==============================================
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash



    # Delete text beetwen 2 words
    # ==============================================
FILEDEL="${HOME}/.zshrc"
WORD1='# |::::::::::::::::::>>>oh-my-zsh' # |<=== Config This
WORD2='# |::::::::::::::::::<<<oh-my-zsh' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${FILEDEL}" > "${FILEDEL}_tmp"
cp "${FILEDEL}_tmp" "${FILEDEL}"
rm "${FILEDEL}_tmp"


    # - **Install Oh-My-ZSH - Add**
    # ==============================================
cat > $HOME/.zshrc << "EOF"

# |::::::::::::::::::>>>oh-my-zsh
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# |::::::::::::::::::>>>oh-my-zsh
EOF



    # - **Install antigen**
    # ==============================================
cd ~ && git clone https://github.com/zsh-users/antigen.git .antigen


    # Delete text beetwen 2 words
    # ==============================================
FILEDEL="${HOME}/.zshrc"
WORD1='# |::::::::::::::::::>>>antigen' # |<=== Config This
WORD2='# |::::::::::::::::::<<<antigen' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${FILEDEL}" > "${FILEDEL}_tmp"
cp "${FILEDEL}_tmp" "${FILEDEL}"
rm "${FILEDEL}_tmp"


    # - **Install antigen - Add**
    # ==============================================
cat >> $HOME/.zshrc << "EOF"

# |::::::::::::::::::>>>antigen
source $HOME/.antigen/antigen.zsh

# antigen bundle command-not-found
# antigen bundle fabric
# antigen bundle heroku
# antigen bundle kennethreitz/autoenv
# antigen bundle lein
# antigen bundle pip
# antigen bundle rake
# antigen bundle rvm
# antigen bundle sprunge
# antigen bundle vundle

antigen bundle bundler
antigen bundle node
antigen bundle python
antigen bundle npm
antigen bundle history
antigen bundle rsync
antigen-bundle vagrant
antigen bundle git
antigen bundle zsh-users/zsh-completions src
antigen-bundle arialdomartini/oh-my-git
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle zsh-users/zsh-syntax-highlighting

antigen theme Mayccoll/oh-my-git-themes liino

antigen-apply
# |::::::::::::::::::<<<antigen
EOF



    # Delete text beetwen 2 words
    # ==============================================
FILEDEL="${HOME}/.zshrc"
WORD1='# |::::::::::::::::::>>>stars' # |<=== Config This
WORD2='# |::::::::::::::::::<<<stars' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${FILEDEL}" > "${FILEDEL}_tmp"
cp "${FILEDEL}_tmp" "${FILEDEL}"
rm "${FILEDEL}_tmp"


    # - **Install antigen - Add**
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