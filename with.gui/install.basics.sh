#!/bin/bash

L_GREEN='\e[1;32m'
RED='\e[0;31m'
YELLOW="\e[0;33m"
NC='\e[0m' # No Color

echo  -e "${YELLOW}"
echo  -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
echo  -e "# |            Wellcome                           | #"
echo  -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
echo  -e "${NC}"

# **Echo message**
function_message_title () {
echo -e "${L_GREEN}"
echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
echo -e "# |      ${NC} $1 ${L_GREEN}"
echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
echo -e "${NC}"
}

make_update="false"
add_repos="false"
install_bar="false"
install_extras="false"
install_compiling="false"
install_puppet="false"
install_curl="false"
install_php="false"
install_git="false"
install_git_extras="false"
install_zsh="false"
install_ohmyzsh="false"
install_nodejs="false"
install_nodejs_packages="false"
install_composer="false"
install_gufw="false"
install_pandoc="false"
install_daemonfs="false"
install_grub_cuz="false"
install_packing_rar="false"
install_filezilla="false"
install_remarkable="false"
install_jq="false"
install_shutter="false"
install_vim="false"
install_grsync="false"

response=$(zenity --height=400 --width=600 --list --checklist \
--title='Install Linux Software' --column= --column=2 --column= --column=Description --hide-column=2 \
TRUE 50 "Install Repos              " "" \
TRUE 51 "Install Update             " "" \
"" "" "                             " "" \
TRUE 00 "Install Fancy Bar          " "" \
TRUE 01 "Install Extras             " "" \
TRUE 02 "Install Compiling Tools    " "" \
TRUE 03 "Install Puppet             " "" \
TRUE 04 "Install Curl               " "" \
TRUE 05 "Install Php                " "" \
TRUE 06 "Install Git                " "" \
TRUE 07 "Install Git Extras         " "" \
TRUE 08 "Install ZSH                " "" \
TRUE 09 "Install Oh My ZSH          " "" \
TRUE 10 "Install NodeJs             " "" \
TRUE 11 "Install Node Js - Packages " "" \
TRUE 12 "Install Composer           " "" \
TRUE 13 "Install Gufw               " "" \
TRUE 15 "Install DeaemonFs          " "Real time file watcher" \
TRUE 16 "Install Grub Cuz           " "" \
TRUE 17 "Install RAR                " "" \
TRUE 18 "Install Filezilla          " "" \
TRUE 19 "Install Remarkable         " "" \
TRUE 20 "Install jq                 " "Command-line JSON processor." \
TRUE 21 "Install Shutter            " "Take screenshot " \
TRUE 23 "Install Vim                " "Console Editor " \
TRUE 24 "Install Grsync             " "GUI for rsync " \
TRUE 25 "Install Htop               " "" \
TRUE 26 "Install Ssh Server         " "ssh server" \
FALSE 14 "Install Pandoc            " "" \
--separator=':')

if [ -z "$response" ] ; then
echo "No selection"
exit 1
fi

#################################

IFS=":" ; for word in $response ; do
case $word in
50)
add_repos="true";;
51)
make_update="true";;
00)
install_bar="true";;
01)
install_extras="true";;
02)
install_compiling="true";;
03)
install_puppet="true";;
04)
install_curl="true";;
05)
install_php="true";;
06)
install_git="true";;
07)
install_git_extras="true";;
08)
install_zsh="true";;
09)
install_ohmyzsh="true";;
10)
install_nodejs="true";;
11)
install_nodejs_packages="true";;
12)
install_composer="true";;
13)
install_gufw="true";;
14)
install_pandoc="true";;
15)
install_daemonfs="true";;
16)
install_grub_cuz="true";;
17)
install_packing_rar="true";;
18)
install_filezilla="true";;
19)
install_remarkable="true";;
20)
install_jq="true";;
21)
install_shutter="true";;
23)
install_vim="true";;
24)
install_grsync="true";;
25)
install_htop="true";;
26)
install_ssh_server="true";;
esac
done


# Update
if [ "$make_update" == "true" ]; then
function_message_title "First update"
sudo apt-get update
fi



# **Add Repos**
###############
if [ "$add_repos" == "true" ]; then
function_message_title "Install Repos"

  if [ "$install_nodejs" == "true" ]
  then
sudo add-apt-repository -y ppa:chris-lea/node.js
  fi

  if [ "$install_git" == "true" ]
  then
sudo add-apt-repository -y ppa:git-core/ppa
  fi

  if [ "$install_cairo" == "true" ]
  then
sudo add-apt-repository -y ppa:cairo-dock-team/ppa
  fi

  if [ "$install_grub_cuz" == "true" ]
  then
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
  fi

  if [ "$install_shutter" == "true" ]
  then
sudo add-apt-repository -y ppa:shutter/ppa
  fi

fi

# Update
if [ "$make_update" == "true" ]; then
function_message_title "Second update"
sudo apt-get update
fi

# **Progress bar**
if [ "$install_bar" == "true" ]; then
function_message_title "Install Progress Fancy Bar"
echo 'Dpkg:Progress-Fancy "1";' | sudo tee /etc/apt/apt.conf.d/99progressbar
fi

# **Extras**
if [ "$install_extras" == "true" ]; then
function_message_title "Install Extra Libs "
sudo ln -sf /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so.0
sudo apt-get install -y autoconf automake  build-essential libxslt1-dev re2c libxml2 libxml2-dev bison libbz2-dev libreadline-dev libfreetype6 libfreetype6-dev libpng12-0 libpng12-dev libjpeg-dev libjpeg8-dev libjpeg8  libgd-dev libgd3 libxpm4 libssl-dev openssl gettext libgettextpo-dev libgettextpo0 libicu-dev libmhash-dev libmhash2 libmcrypt-dev libmcrypt4 python-software-properties software-properties-common g++ build-essential libssl-dev pkg-config
fi

# Essential tools for compiling from sources
if [ "$install_compiling" == "true" ]; then
function_message_title "Install Compiling Tools"
sudo apt-get install -y checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check
fi

# **Puppet**
if [ "$install_puppet" == "true" ]; then
function_message_title "Install Puppet"
sudo apt-get install -y puppet puppet-common
fi

# **Curl**
if [ "$install_curl" == "true" ]; then
function_message_title "Install Curl"
sudo apt-get install -y curl
fi

# **php5**
if [ "$install_php" == "true" ]; then
function_message_title "Install php5"
sudo apt-get install -y php5 php5-dev php-pear php5-cli
fi

# **Git**
if [ "$install_git" == "true" ]; then
function_message_title "Install Git"
sudo apt-get install -y git git-gui gitk
fi

# **Git Extras**
# https://github.com/visionmedia/git-extras
if [ "$install_git_extras" == "true" ]; then
function_message_title "Install Git Extras"
mkdir $HOME/tmp
(cd $HOME/tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)
fi

# **Install ZSH**
if [ "$install_zsh" == "true" ]; then
function_message_title "Install ZSH"
sudo apt-get install -y zsh
fi

# **Install Oh-My-ZSH**
if [ "$install_ohmyzsh" == "true" ]; then
function_message_title "Install Oh My ZSH"
(curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash)

# **Setting ZSH as the default shell (instead of bash)**
w=`which zsh` &&  h=`whoami` && sudo chsh -s $w $h

# **Install antigen**
(cd ~ && git clone https://github.com/zsh-users/antigen.git .antigen)

# Remove pre zsh config
FILEZSH="/.zshrc"
WORD1='# |::::::::::::::::::>>>zsh' # |<=== Config This
WORD2='# |::::::::::::::::::<<<zsh' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${HOME}${FILEZSH}" > "${HOME}${FILEZSH}_tmp"
cp "${HOME}${FILEZSH}_tmp" "${HOME}${FILEZSH}"
rm "${HOME}${FILEZSH}_tmp"

# Insert zsh config
cat <<-EOF >> ~/.zshrc

# |::::::::::::::::::>>>zsh
source "$HOME/.antigen/antigen.zsh"

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

antigen theme Mayccoll/oh-my-git-themes arrow-green

antigen-apply
# |::::::::::::::::::<<<zsh
EOF

fi




# **Install NodeJs**
if [ "$install_nodejs" == "true" ]; then
function_message_title "Install NodeJs"
sudo apt-get install -y  nodejs
npm config set prefix ~/.npm
sudo mkdir ~/tmp
sudo mkdir ~/.npm
sudo chown -R $USER:$USER ~/tmp/
sudo chown -R $USER:$USER ~/.npm
sudo npm update -g
sudo chown -R $USER:$USER ~/.npm

# Remove pre nodejs config
FILEZSH="/.zshrc"
WORD1='# |::::::::::::::::::>>>npm' # |<=== Config This
WORD2='# |::::::::::::::::::<<<npm' # |<=== Config This
sed -e "/${WORD1}/,/${WORD2}/d"  "${HOME}${FILEZSH}" > "${HOME}${FILEZSH}_tmp"
cp "${HOME}${FILEZSH}_tmp" "${HOME}${FILEZSH}"
rm "${HOME}${FILEZSH}_tmp"

# **Insert nodejs config**
cat <<-EOF >> ~/.zshrc

# |::::::::::::::::::>>>npm
# | Path for nodejs and npm
export PATH=$HOME/npm/.bin:$PATH
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules:$HOME/.npm:$HOME/.npm/lib/node_modules
export PATH=$HOME/.npm/bin:$PATH
# |::::::::::::::::::<<<npm
EOF

source ~/.zshrc

fi

# **Install Nodejs Packages**
if [ "$install_nodejs_packages" == "true" ]; then
function_message_title "Install NodeJs Packages"
npm install -g bower
npm install -g less
npm install -g grunt
npm install -g grunt-cli
# **Watch files and run a command when they change**
npm install -g wr
# **Yeoman**
npm install -g yo
# **Web Generator**
npm install -g generator-webapp
npm install -g generator-generator

# **Install Phyton**
sudo apt-get install -y python-dev libxml2-dev libxslt1-dev antiword poppler-utils pstotext
mkdir tmp
cd tmp
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
sudo python ez_setup.py
sudo easy_install pip
sudo pip install textract
cd ..
rm -rf tmp
fi

# **Install Composer**
if [ "$install_composer" == "true" ]; then
function_message_title "Install Composer"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
fi

# **Install Firewall**
if [ "$install_gufw" == "true" ]; then
function_message_title "Install Firewall gufw"
sudo apt-get install -y  gufw
fi

# **Install Grub Customizer**
if [ "$install_grub_cuz" == "true" ]; then
function_message_title "Install Grub Customizer"
sudo apt-get update
sudo apt-get install -y grub-customizer
fi

# **Install Cairo-Dock**
if [ "$install_cairo" == "true" ]; then
function_message_title "Install Cairo Docks"
sudo apt-get install -y cairo-dock cairo-dock-plug-ins
fi

# **Packing software**
if [ "$install_packing_rar" == "true" ]; then
function_message_title "Install Packing Software"
sudo apt-get install -y unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller
fi

# **Install Filezilla**
if [ "$install_filezilla" == "true" ]; then
function_message_title "Install Filezilla"
sudo apt-get install -y filezilla filezilla-common
fi

# **Install Remarkable - Markdown Editor**
if [ "$install_remarkable" == "true" ]; then
function_message_title "Remarkable"
sudo apt-get install -y remarkable
fi

# **Install daemonfs**
# Real time file watcher.
if [ "$install_daemonfs" == "true" ]; then
function_message_title "Install daemonfs - Real time file watcher"
sudo apt-get install -y daemonfs
fi

# **Install pandoc**
# Universal document converter
#    Ex:
#    $ pandoc -f markdown -t html README.md >> README.html
#    $ pandoc latex.md -o latex.pdf
if [ "$install_pandoc" == "true" ]; then
function_message_title "Install Pandoc - Universal document converter"
sudo apt-get install -y texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended
sudo apt-get install -y pandoc
fi

if [ "$install_jq" == "true" ]; then
wget http://stedolan.github.io/jq/download/linux64/jq
chmod +x ./jq
sudo cp jq /usr/bin
sudo rm ./jq
fi

# **Install Shutter**
if [ "$install_shutter" == "true" ]; then
function_message_title "Install Shutter - Take Screenshots"
sudo apt-get install -y shutter
fi

# **Install Marlin**
if [ "$install_marlin" == "true" ]; then
function_message_title "Install Marlin - File Manager"
sudo apt-get install -y marlin
fi

# **Install Grsync**
if [ "$install_grsync" == "true" ]; then
function_message_title "Install Grsync - GUI for rsync"
sudo apt-get install -y grsync
fi

# **Install Htop**
if [ "$install_htop" == "true" ]; then
function_message_title "Install Htop"
sudo apt-get install -y htop
fi

# **Install ssh server**
if [ "$install_ssh_server" == "true" ]; then
function_message_title "Install ssh server"
sudo apt-get install -y openssh-server
fi
