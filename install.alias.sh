#!/bin/bash

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

    # Delete text beetwen 2 words
    # ==============================================
FILEDEL="${HOME}/.zshrc"
WORD1='# |::::::::::::::::::>>>alias' # |<=== Config This
WORD2='# |::::::::::::::::::<<<alias' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${FILEDEL}" > "${FILEDEL}_tmp"
cp "${FILEDEL}_tmp" "${FILEDEL}"
rm "${FILEDEL}_tmp"


    # - **Install antigen - Add**
    # ==============================================
cat >> $HOME/.zshrc << "EOF"

# |::::::::::::::::::>>>alias
alias sudo='sudo '

alias ll='ls -Xal --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias ll='ls -gXa --color=auto'
alias cc='clear'
alias c='clear'
alias ..='cd ..'

alias aa-ip='ip addr list | grep eth0$'

alias aa-ram-free="echo ' echo 3 > /proc/sys/vm/drop_caches'"

alias aa-untar_file="tar -xzvf $1"

alias aa-users="cat /etc/passwd | grep /home | cut -d: -f1"

alias aa-ssh="cat ~/.ssh/config"

# untar on the same folder
aa-untar-here_file() {
    tar --strip-components=1 -zxvf "$1"
}

#wget limit
aa-wget_limit_url() {
    wget --limit-rate="$1"k "$2"
}

aa-mkdir_cd() {
    mkdir "$1" && cd "$1"
}

aa-ssh-keygen_comm() {
    ssh-keygen -t rsa -b 2048 -f ~/.ssh/"$1" -C "$1"
}


# alias Apache, MySql
alias aa-apache-restart='/etc/init.d/apache2 restart'
alias aa-apache-stop='/etc/init.d/apache2 stop'
alias aa-apache-start='/etc/init.d/apache2 start'

alias aa-apache-vhost='apache2ctl -S'

alias aa-mysql-start='/etc/init.d/mysql start'
alias aa-mysql-stop='/etc/init.d/mysql stop'
alias aa-mysql-restart='/etc/init.d/mysql restart'

#alias aa-nginx-start ='/etc/init.d/nginx start'
#alias aa-nginx-stop ='/etc/init.d/nginx stop'
#alias aa-nginx-restart ='/etc/init.d/nginx restart'



# |
# | Alias Git
# |:::::::::::::::::::::::::::::::::::::::::::::::::|

gg-config-mquintero () {
    git config user.name  "mquintero"
    git config user.email "miguel.quintero@turrisystem.com"
}

gg-config-mquintero () {
    git config user.name  "Mayccoll"
    git config user.email "mayccoll@gmail.com"
}

gg-echo () {
    echo ""
    echo "gg-ck = git checkout [BRANCH]"
    echo "gg-s = git status"
    echo "gg-b = git branch [NEW BRANCH]"
    echo "gg-bv = git branch -v"
    echo "gg-c = git commit -m [COMMENT]"
    echo "gg-l = git log --graph --pretty=oneline --abbrev-commit"
    echo "gg-ll = git log --pretty=oneline --abbrev=9 -5"
    echo "gg-log = git log --pretty=oneline --abbrev-commit"
    echo "gg-log-cant-user = git shortlog -s -n"
    echo "gg-cl = git clone [URL] ."
    echo "gg-a = git add ."
    echo "gg-unpush = git log origin/master..HEAD --oneline"
    echo "gg-unpull = git log HEAD..origin/master --oneline"
    echo "gg-lme = git log --merges --oneline -20"
    echo "gg-lstat = git log --pretty=format:'%h - %ar - %an, : %s' -30"
    echo "gg-count-b-ups = git log HEAD..upstream/master --oneline | wc -l "
}

alias gg-ck="git checkout $1"
alias gg-s="git status"
alias gg-b="git branch $1"
alias gg-bv="git branch -v"
alias gg-c="git commit -m $1"
alias gg-l="git log --graph --pretty=oneline --abbrev-commit --abbrev=9"
alias gg-ll="git log --pretty=oneline --abbrev=9 -5"
alias gg-log="git log --pretty=oneline --abbrev-commit --abbrev=9 $1"
alias gg-log-cant-user="git shortlog -s -n"
alias gg-cl="git clone $1 ."
alias gg-a="git add ."
alias gg-unpush="git log origin/master..HEAD --oneline"
alias gg-unpull="git log HEAD..origin/master --oneline"
alias gg-unpull-upstream="git log HEAD..upstream/master --oneline"
alias gg-lme="git log --merges --oneline -20"
alias gg-lstat="git log --pretty=format:'%Cred%h%Creset - %Cgreen%ar %Creset- %an, : %s %C(yellow)%d' -30"
alias gg-count-b-ups="echo -e ' Behine upstream \e[0;31m' && git log HEAD..upstream/master --oneline | wc -l && echo -e '\e[0m Commits'"

 # git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --
 # git log HEAD..upstream/master --oneline | wc -l


# |
# | Print all colors in console
# |:::::::::::::::::::::::::::::::::::::::::::::::::|

aa-colors () {

    echo "# Reset color"
    echo -e "\e[0m ***** AaBbCs *** \[\\\e[0m\] *** \\\e[0m \\e[0m ---> rs"

    echo ""
    echo "# Regularcolors"

    #black
    echo -e "\e[0;30m ***** AaBbCs *** \[\\\e[0;30m\] *** \\\e[0;30m \\e[0m ---> black"
    #red
    echo -e "\e[0;31m ***** AaBbCs *** \[\\\e[0;31m\] *** \\\e[0;31m \\e[0m ---> red"
    #green
    echo -e "\e[0;32m ***** AaBbCs *** \[\\\e[0;32m\] *** \\\e[0;32m \\e[0m ---> green"
    #yellow
    echo -e "\e[0;33m ***** AaBbCs *** \[\\\e[0;33m\] *** \\\e[0;33m \\e[0m ---> yellow"
    #blue
    echo -e "\e[0;34m ***** AaBbCs *** \[\\\e[0;34m\] *** \\\e[0;34m \\e[0m ---> blue"
    #purple
    echo -e "\e[0;35m ***** AaBbCs *** \[\\\e[0;35m\] *** \\\e[0;35m \\e[0m ---> purple"
    #cyan
    echo -e "\e[0;36m ***** AaBbCs *** \[\\\e[0;36m\] *** \\\e[0;36m \\e[0m ---> cyan"
    #white
    echo -e "\e[0;37m ***** AaBbCs *** \[\\\e[0;37m\] *** \\\e[0;37m \\e[0m ---> white"

    echo ""
    echo "# Bold"

    #black
    echo -e "\e[1;30m ***** AaBbCs *** \[\\\e[1;30m\] *** \\\e[1;30m \\e[0m ---> bblack"
    #red
    echo -e "\e[1;31m ***** AaBbCs *** \[\\\e[1;31m\] *** \\\e[1;31m \\e[0m ---> bred"
    #green
    echo -e "\e[1;32m ***** AaBbCs *** \[\\\e[1;32m\] *** \\\e[1;32m \\e[0m ---> bgreen"
    #yellow
    echo -e "\e[1;33m ***** AaBbCs *** \[\\\e[1;33m\] *** \\\e[1;33m \\e[0m ---> byellow"
    #blue
    echo -e "\e[1;34m ***** AaBbCs *** \[\\\e[1;34m\] *** \\\e[1;34m \\e[0m ---> bblue"
    #purple
    echo -e "\e[1;35m ***** AaBbCs *** \[\\\e[1;35m\] *** \\\e[1;35m \\e[0m ---> bpurple"
    #cyan
    echo -e "\e[1;36m ***** AaBbCs *** \[\\\e[1;36m\] *** \\\e[1;36m \\e[0m ---> bcyan"
    #white
    echo -e "\e[1;37m ***** AaBbCs *** \[\\\e[1;37m\] *** \\\e[1;37m \\e[0m ---> bwhite"

    echo ""
    echo "# Underline"

    #black
    echo -e "\e[4;30m ***** AaBbCs *** \[\\\e[4;30m\] *** \\\e[4;30m \\e[0m ---> ublack"
    #red
    echo -e "\e[4;31m ***** AaBbCs *** \[\\\e[4;31m\] *** \\\e[4;31m \\e[0m ---> ured"
    #green
    echo -e "\e[4;32m ***** AaBbCs *** \[\\\e[4;32m\] *** \\\e[4;32m \\e[0m ---> ugreen"
    #yellow
    echo -e "\e[4;33m ***** AaBbCs *** \[\\\e[4;33m\] *** \\\e[4;33m \\e[0m ---> uyellow"
    #blue
    echo -e "\e[4;34m ***** AaBbCs *** \[\\\e[4;34m\] *** \\\e[4;34m \\e[0m ---> ublue"
    #purple
    echo -e "\e[4;35m ***** AaBbCs *** \[\\\e[4;35m\] *** \\\e[4;35m \\e[0m ---> upurple"
    #cyan
    echo -e "\e[4;36m ***** AaBbCs *** \[\\\e[4;36m\] *** \\\e[4;36m \\e[0m ---> ucyan"
    #white
    echo -e "\e[4;37m ***** AaBbCs *** \[\\\e[4;37m\] *** \\\e[4;37m \\e[0m ---> uwhite"

    echo ""
    echo "# Background"

    #black
    echo -e "\e[40m ***** AaBbCs *** \[\\\e[40m\] *** \\\e[40m \\e[0m ---> on_black"
    #red
    echo -e "\e[41m ***** AaBbCs *** \[\\\e[41m\] *** \\\e[41m \\e[0m ---> on_red"
    #green
    echo -e "\e[42m ***** AaBbCs *** \[\\\e[42m\] *** \\\e[42m \\e[0m ---> on_green"
    #yellow
    echo -e "\e[43m ***** AaBbCs *** \[\\\e[43m\] *** \\\e[43m \\e[0m ---> on_yellow"
    #blue
    echo -e "\e[44m ***** AaBbCs *** \[\\\e[44m\] *** \\\e[44m \\e[0m ---> on_blue"
    #purple
    echo -e "\e[45m ***** AaBbCs *** \[\\\e[45m\] *** \\\e[45m \\e[0m ---> on_purple"
    #cyan
    echo -e "\e[46m ***** AaBbCs *** \[\\\e[46m\] *** \\\e[46m \\e[0m ---> on_cyan"
    #white
    echo -e "\e[47m ***** AaBbCs *** \[\\\e[47m\] *** \\\e[47m \\e[0m ---> on_white"

    echo ""
    echo "# Highintensity"

    #black
    echo -e "\e[0;90m ***** AaBbCs *** \[\\\e[0;90m\] *** \\\e[0;90m \\e[0m ---> iblack"
    #red
    echo -e "\e[0;91m ***** AaBbCs *** \[\\\e[0;91m\] *** \\\e[0;91m \\e[0m ---> ired"
    #green
    echo -e "\e[0;92m ***** AaBbCs *** \[\\\e[0;92m\] *** \\\e[0;92m \\e[0m ---> igreen"
    #yellow
    echo -e "\e[0;93m ***** AaBbCs *** \[\\\e[0;93m\] *** \\\e[0;93m \\e[0m ---> iyellow"
    #blue
    echo -e "\e[0;94m ***** AaBbCs *** \[\\\e[0;94m\] *** \\\e[0;94m \\e[0m ---> iblue"
    #purple
    echo -e "\e[0;95m ***** AaBbCs *** \[\\\e[0;95m\] *** \\\e[0;95m \\e[0m ---> ipurple"
    #cyan
    echo -e "\e[0;96m ***** AaBbCs *** \[\\\e[0;96m\] *** \\\e[0;96m \\e[0m ---> icyan"
    #white
    echo -e "\e[0;97m ***** AaBbCs *** \[\\\e[0;97m\] *** \\\e[0;97m \\e[0m ---> iwhite"

    echo ""
    echo "# Boldhighintensity"

    #black
    echo -e "\e[1;90m ***** AaBbCs *** \[\\\e[1;90m\] *** \\\e[1;90m \\e[0m ---> biblack"
    #red
    echo -e "\e[1;91m ***** AaBbCs *** \[\\\e[1;91m\] *** \\\e[1;91m \\e[0m ---> bired"
    #green
    echo -e "\e[1;92m ***** AaBbCs *** \[\\\e[1;92m\] *** \\\e[1;92m \\e[0m ---> bigreen"
    #yellow
    echo -e "\e[1;93m ***** AaBbCs *** \[\\\e[1;93m\] *** \\\e[1;93m \\e[0m ---> biyellow"
    #blue
    echo -e "\e[1;94m ***** AaBbCs *** \[\\\e[1;94m\] *** \\\e[1;94m \\e[0m ---> biblue"
    #purple
    echo -e "\e[1;95m ***** AaBbCs *** \[\\\e[1;95m\] *** \\\e[1;95m \\e[0m ---> bipurple"
    #cyan
    echo -e "\e[1;96m ***** AaBbCs *** \[\\\e[1;96m\] *** \\\e[1;96m \\e[0m ---> bicyan"
    #white
    echo -e "\e[1;97m ***** AaBbCs *** \[\\\e[1;97m\] *** \\\e[1;97m \\e[0m ---> biwhite"

    echo ""
    echo "# Highintensitybackgrounds"

    #black
    echo -e "\e[0;100m ***** AaBbCs *** \[\\\e[0;100m\] *** \\\e[0;100m \\e[0m ---> on_iblack"
    #red
    echo -e "\e[0;101m ***** AaBbCs *** \[\\\e[0;101m\] *** \\\e[0;101m \\e[0m ---> on_ired"
    #green
    echo -e "\e[0;102m ***** AaBbCs *** \[\\\e[0;102m\] *** \\\e[0;102m \\e[0m ---> on_igreen"
    #yellow
    echo -e "\e[0;103m ***** AaBbCs *** \[\\\e[0;103m\] *** \\\e[0;103m \\e[0m ---> on_iyellow"
    #blue
    echo -e "\e[0;104m ***** AaBbCs *** \[\\\e[0;104m\] *** \\\e[0;104m \\e[0m ---> on_iblue"
    #purple
    echo -e "\e[0;105m ***** AaBbCs *** \[\\\e[0;105m\] *** \\\e[0;105m \\e[0m ---> on_ipurple"
    #cyan
    echo -e "\e[0;106m ***** AaBbCs *** \[\\\e[0;106m\] *** \\\e[0;106m \\e[0m ---> on_icyan"
    #white
    echo -e "\e[0;107m ***** AaBbCs *** \[\\\e[0;107m\] *** \\\e[0;107m \\e[0m ---> on_iwhite"


}

# |::::::::::::::::::<<<alias
EOF