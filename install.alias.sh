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

alias o--ip='ip addr list | grep eth0$'

alias o--ram-free="echo ' echo 3 > /proc/sys/vm/drop_caches'"

alias o--untar_file="tar -xzvf $1"

alias o--users="cat /etc/passwd | grep /home | cut -d: -f1"

alias o--ssh="cat ~/.ssh/config"

# untar on the same folder
o--untar-here_file() {
    tar --strip-components=1 -zxvf "$1"
}

#wget limit
o--wget_limit_url() {
    wget --limit-rate="$1"k "$2"
}

o--mkdir_cd() {
    mkdir "$1" && cd "$1"
}

o--ssh-keygen_comm() {
    ssh-keygen -t rsa -b 2048 -f ~/.ssh/"$1" -C "$1"
}


# alias Apache, MySql
alias o--apache-restart='/etc/init.d/apache2 restart'
alias o--apache-stop='/etc/init.d/apache2 stop'
alias o--apache-start='/etc/init.d/apache2 start'

alias o--apache-vhost='apache2ctl -S'

alias o--mysql-start='/etc/init.d/mysql start'
alias o--mysql-stop='/etc/init.d/mysql stop'
alias o--mysql-restart='/etc/init.d/mysql restart'

#alias o--nginx-start ='/etc/init.d/nginx start'
#alias o--nginx-stop ='/etc/init.d/nginx stop'
#alias o--nginx-restart ='/etc/init.d/nginx restart'



# |
# | Alias Git
# |:::::::::::::::::::::::::::::::::::::::::::::::::|

g--config-mquintero () {
    git config user.name  "mquintero"
    git config user.email "miguel.quintero@turrisystem.com"
}

g--config-mquintero () {
    git config user.name  "Mayccoll"
    git config user.email "mayccoll@gmail.com"
}

g--echo () {
    echo ""
    echo "g--ck = git checkout [BRANCH]"
    echo "g--s = git status"
    echo "g--b = git branch [NEW BRANCH]"
    echo "g--bv = git branch -v"
    echo "g--c = git commit -m [COMMENT]"
    echo "g--l = git log --graph --pretty=oneline --abbrev-commit"
    echo "g--ll = git log --pretty=oneline --abbrev=9 -5"
    echo "g--log = git log --pretty=oneline --abbrev-commit"
    echo "g--log-cant-user = git shortlog -s -n"
    echo "g--cl = git clone [URL] ."
    echo "g--a = git add ."
    echo "g--unpush = git log origin/master..HEAD --oneline"
    echo "g--unpull = git log HEAD..origin/master --oneline"
    echo "g--lme = git log --merges --oneline -20"
    echo "g--lstat = git log --pretty=format:'%h - %ar - %an, : %s' -30"
    echo "g--count-b-ups = git log HEAD..upstream/master --oneline | wc -l "
}

alias g--ck="git checkout $1"
alias g--s="git status"
alias g--b="git branch $1"
alias g--bv="git branch -v"
alias g--c="git commit -m $1"
alias g--l="git log --graph --pretty=oneline --abbrev-commit --abbrev=9"
alias g--ll="git log --pretty=oneline --abbrev=9 -5"
alias g--log="git log --pretty=oneline --abbrev-commit --abbrev=9 $1"
alias g--log-cant-user="git shortlog -s -n"
alias g--cl="git clone $1 ."
alias g--a="git add ."
alias g--unpush="git log origin/master..HEAD --oneline"
alias g--unpull="git log HEAD..origin/master --oneline"
alias g--unpull-upstream="git log HEAD..upstream/master --oneline"
alias g--lme="git log --merges --oneline -20"
alias g--lstat="git log --pretty=format:'%Cred%h%Creset - %Cgreen%ar %Creset- %an, : %s %C(yellow)%d' -30"
alias g--count-b-ups="echo -e ' Behine upstream \e[0;31m' && git log HEAD..upstream/master --oneline | wc -l && echo -e '\e[0m Commits'"

 # git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --
 # git log HEAD..upstream/master --oneline | wc -l


# |
# | Print all colors in console
# |:::::::::::::::::::::::::::::::::::::::::::::::::|

o--colors () {

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