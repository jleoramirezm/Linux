#!/bin/bash
SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

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


# - Function for Titles
# ==============================================

function_message_title () {
  echo -e "${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "# |      ${RS} $1 ${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "${RS}"
}

function_message_title_red () {
  echo -e "${RED}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "# |      ${RS} $1 ${RED}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "${RS}"
}

# - update
# ==============================================

function_message_title 'update'
sudo apt-get update


# - **Install zsh
# ==============================================

function_message_title 'Installing ZSH'
zsh --version 2>&1 >/dev/null
CHECK=$?
if [ $CHECK -ne 0 ]; then
    sudo apt-get install -y zsh
else
    function_message_title_red 'zsh already install'
    zsh --version
fi

# - **Setting ZSH as the default shell (instead of bash)**
# ==============================================

w=`which zsh` && h=`whoami` && sudo chsh -s $w $h


# - Install git if not present
# ==============================================

git --version 2>&1 >/dev/null
CHECK=$?
if [ $CHECK -ne 0 ]; then
    function_message_title 'Installing Git'
    sudo apt-get install -y git
fi


# - **Install Oh-My-ZSH**
# ==============================================

function_message_title 'Installing Oh-My-Zsh'
curl --version 2>&1 >/dev/null
CHECK=$?
if [ $CHECK -eq 0 ]; then
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash
else
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
fi



#!/bin/bash
FILE_ZSH_CHECK="${HOME}/.zshrc"
if [[ -s $FILE_ZSH_CHECK ]] ; then
    echo "" > $FILE_ZSH_CHECK
fi

# Delete and Insert text beetwen 2 words
# ==============================================


FILE_ZSH="${HOME}/.zshrc"

XXXXXBEGIN='# |::::::::::::: oh-my-zsh ::::::::::::::>>>' # |<=== Config This
XXXXXXXEND='# |::::::::::::: oh-my-zsh ::::::::::::::<<<' # |<=== Config This

sed -e "/${XXXXXBEGIN}/,/${XXXXXXXEND}/d"  "${FILE_ZSH}" > "${FILE_ZSH}_tmp"
cp "${FILE_ZSH}_tmp" "${FILE_ZSH}"
rm "${FILE_ZSH}_tmp"

# ======<
cat >> $FILE_ZSH << EOF

$XXXXXBEGIN

# Path to your oh-my-zsh installation.
export ZSH=\$HOME/.oh-my-zsh
# define where custom plugins live:
ZSH_CUSTOM=~/.oh-my-zsh/custom/
# Auto Update Enable
DISABLE_UPDATE_PROMPT=true

ZSH_THEME="robbyrussell"

plugins=(git archlinux django sublime themes python pip node npm history-substring-search zsh-syntax-highlighting vagrant)

source \$ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# export LC_TYPE="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"

$XXXXXXXEND

EOF
# ======<


# - **Syntax highlighting**
# ==============================================

cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git


# - **Install antigen**
# ==============================================
function_message_title 'Installing Antigen'
cd ~ && git clone https://github.com/zsh-users/antigen.git .antigen


# Delete and Insert text beetwen 2 words
# ==============================================


FILE_ZSH="${HOME}/.zshrc"

XXXXXBEGIN='# |::::::::::::: antigen ::::::::::::::>>>' # |<=== Config This
XXXXXXXEND='# |::::::::::::: antigen ::::::::::::::<<<' # |<=== Config This

sed -e "/${XXXXXBEGIN}/,/${XXXXXXXEND}/d"  "${FILE_ZSH}" > "${FILE_ZSH}_tmp"
cp "${FILE_ZSH}_tmp" "${FILE_ZSH}"
rm "${FILE_ZSH}_tmp"

# ======<
cat >> $FILE_ZSH << EOF

$XXXXXBEGIN

#
# | Load Antigen
#

source \$HOME/.antigen/antigen.zsh

#
# | Load various lib files
#

antigen bundle command-not-found
antigen bundle fabric
antigen bundle heroku
antigen bundle kennethreitz/autoenv
antigen bundle lein
antigen bundle pip
antigen bundle rake
antigen bundle rvm
antigen bundle sprunge
antigen bundle vundle
antigen bundle bundler
antigen bundle node
antigen bundle npm
antigen bundle python
antigen bundle history
antigen bundle rsync
antigen-bundle vagrant
antigen bundle git

antigen-use oh-my-zsh

antigen bundle robbyrussell/oh-my-zsh lib/
antigen-bundle arialdomartini/oh-my-git
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen-bundle zsh-users/zsh-history-substring-search

#
# | Antigen Theme
#

# antigen theme Mayccoll/oh-my-git-themes liino
# antigen theme Mayccoll/oh-my-git-themes liino_red
antigen theme Mayccoll/oh-my-git-themes remol
# antigen theme arialdomartini/oh-my-git-themes arialdo-granzestyle

antigen-apply

$XXXXXXXEND

EOF
# ======<


# - **Install Stars**
# ==============================================

echo "¿ Want to add stars ?"
echo "Si -> [1]"
echo "No -> [2]"
read varpush
if [[ $varpush -eq 1 ]] || [[ $varpush -eq "" ]]
  then

# Delete and Insert text beetwen 2 words
# ==============================================


FILE_ZSH="${HOME}/.zshrc"

XXXXXBEGIN='# |::::::::::::: stars ::::::::::::::>>>' # |<=== Config This
XXXXXXXEND='# |::::::::::::: stars ::::::::::::::<<<' # |<=== Config This

sed -e "/${XXXXXBEGIN}/,/${XXXXXXXEND}/d"  "${FILE_ZSH}" > "${FILE_ZSH}_tmp"
cp "${FILE_ZSH}_tmp" "${FILE_ZSH}"
rm "${FILE_ZSH}_tmp"

# ======<
cat >> $FILE_ZSH << EOF

$XXXXXBEGIN

echo '
　 ･ ·̩　　 ｡　☆　　　ﾟ｡ ＊ 　 ｡*　　+　 　＊ 　･ ｡☆+　 　＊ 　･ ｡☆
＊ 　 ｡*　　+　 　＊ 　･ ｡☆ 　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+ ｡　☆　　　ﾟ｡･ ·̩　　
　☆　　　*　　　* 　 。 　 ･ ·̩　　 ｡　☆　　　ﾟ｡　☆　　　*　　　* 　　☆ﾟ　+
　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+ 　☆　　　*　　　* 　 。＊ 　 ｡*　　+　 　＊ 　･ ｡☆
'

$XXXXXXXEND

EOF
# ======<

fi
