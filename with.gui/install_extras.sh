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

install_atom="false"
install_minitube="false"
install_inkscape="false"
install_cairo_dock="false"
install_ajenti="false"



response=$(zenity --height=400 --width=600 --list --checklist \
--title='Install Linux Software' --column= --column=2 --column= --column=Description --hide-column=2 \
TRUE 50 "Install Repos              " "" \
TRUE 51 "Install Update             " "" \
"" "" "                             " "" \
TRUE 00 "Install Atom               " "" \
TRUE 01 "Install Minitube           " "" \
TRUE 02 "Install Inkscape           " "" \
TRUE 03 "Install Cairo Dock         " "" \
TRUE 04 "Install Ajenti             " "" \
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
install_atom="true";;
01)
install_minitube="true";;
02)
install_inkscape="true";;
03)
install_cairo_dock="true";;
04)
install_ajenti="true";;
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

  if [ "$install_atom" == "true" ]
  then
  sudo add-apt-repository -y ppa:webupd8team/atom
  fi


fi

# Update
if [ "$make_update" == "true" ]; then
function_message_title "Second update"
sudo apt-get update
fi

# **Progress Atom**
if [ "$install_atom" == "true" ]; then
function_message_title "Install Atom"
sudo apt-get install -y atom
fi

# **Progress Plank**
if [ "$install_minitube" == "true" ]; then
function_message_title "Install Minitube"
sudo apt-get install -y minitube
fi

# **Progress Inkscape**
if [ "$install_inkscape" == "true" ]; then
function_message_title "Install Inkscape"
sudo apt-get install -y inkscape
fi

# **Progress Cairo Dock**
if [ "$install_cairo_dock" == "true" ]; then
function_message_title "Install Cairo Dock"
sudo apt-get install -y cairo-dock
fi

# **Progress Ajenti**
if [ "$install_ajenti" == "true" ]; then
function_message_title "Install Ajenti"
wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh
fi
