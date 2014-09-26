

# |
# | Colors
# |:::::::::::::::::::::::::::::::::::::::::::::::::|

# Reset color
RS="\[\e[0m\]"


#regularcolors

#black
black="\[\e[0;30m\]"
#red
red="\[\e[0;31m\]"
#green
green="\[\e[0;32m\]"
#yellow
yellow="\[\e[0;33m\]"
#blue
blue="\[\e[0;34m\]"
#purple
purple="\[\e[0;35m\]"
#cyan
cyan="\[\e[0;36m\]"
#white
white="\[\e[0;37m\]"




#bold

#black
bblack="\[\e[1;30m\]"
#red
bred="\[\e[1;31m\]"
#green
bgreen="\[\e[1;32m\]"
#yellow
byellow="\[\e[1;33m\]"
#blue
bblue="\[\e[1;34m\]"
#purple
bpurple="\[\e[1;35m\]"
#cyan
bcyan="\[\e[1;36m\]"
#white
bwhite="\[\e[1;37m\]"



#underline

#black
ublack="\[\e[4;30m\]"
#red
ured="\[\e[4;31m\]"
#green
ugreen="\[\e[4;32m\]"
#yellow
uyellow="\[\e[4;33m\]"
#blue
ublue="\[\e[4;34m\]"
#purple
upurple="\[\e[4;35m\]"
#cyan
ucyan="\[\e[4;36m\]"
#white
uwhite="\[\e[4;37m\]"



#background

#black
on_black="\[\e[40m\]"
#red
on_red="\[\e[41m\]"
#green
on_green="\[\e[42m\]"
#yellow
on_yellow="\[\e[43m\]"
#blue
on_blue="\[\e[44m\]"
#purple
on_purple="\[\e[45m\]"
#cyan
on_cyan="\[\e[46m\]"
#white
on_white="\[\e[47m\]"



#highintensity

#black
iblack="\[\e[0;90m\]"
#red
ired="\[\e[0;91m\]"
#green
igreen="\[\e[0;92m\]"
#yellow
iyellow="\[\e[0;93m\]"
#blue
iblue="\[\e[0;94m\]"
#purple
ipurple="\[\e[0;95m\]"
#cyan
icyan="\[\e[0;96m\]"
#white
iwhite="\[\e[0;97m\]"



#boldhighintensity

#black
biblack="\[\e[1;90m\]"
#red
bired="\[\e[1;91m\]"
#green
bigreen="\[\e[1;92m\]"
#yellow
biyellow="\[\e[1;93m\]"
#blue
biblue="\[\e[1;94m\]"
#purple
bipurple="\[\e[1;95m\]"
#cyan
bicyan="\[\e[1;96m\]"
#white
biwhite="\[\e[1;97m\]"


#highintensitybackgrounds
#black
on_iblack="\[\e[0;100m\]"
#red
on_ired="\[\e[0;101m\]"
#green
on_igreen="\[\e[0;102m\]"
#yellow
on_iyellow="\[\e[0;103m\]"
#blue
on_iblue="\[\e[0;104m\]"
#purple
on_ipurple="\[\e[0;105m\]"
#cyan
on_icyan="\[\e[0;106m\]"
#white
on_iwhite="\[\e[0;107m\]"


COLORS="
${RS} *******  RS  ${RS}

${black} *******  black  ${RS}
${red} *******  red  ${RS}
${green} *******  green  ${RS}
${yellow} *******  yellow  ${RS}
${blue} *******  blue  ${RS}
${purple} *******  purple  ${RS}
${cyan} *******  cyan  ${RS}
${white} *******  white  ${RS}

${bblack} *******  bblack  ${RS}
${bred} *******  bred  ${RS}
${bgreen} *******  bgreen  ${RS}
${byellow} *******  byellow  ${RS}
${bblue} *******  bblue  ${RS}
${bpurple} *******  bpurple  ${RS}
${bcyan} *******  bcyan  ${RS}
${bwhite} *******  bwhite  ${RS}

${ublack} *******  ublack  ${RS}
${ured} *******  ured  ${RS}
${ugreen} *******  ugreen  ${RS}
${uyellow} *******  uyellow  ${RS}
${ublue} *******  ublue  ${RS}
${upurple} *******  upurple  ${RS}
${ucyan} *******  ucyan  ${RS}
${uwhite} *******  uwhite  ${RS}

${on_black} *******  on_black  ${RS}
${on_red} *******  on_red  ${RS}
${on_green} *******  on_green  ${RS}
${on_yellow} *******  on_yellow  ${RS}
${on_blue} *******  on_blue  ${RS}
${on_purple} *******  on_purple  ${RS}
${on_cyan} *******  on_cyan  ${RS}
${on_white} *******  on_white  ${RS}

${iblack} *******  iblack  ${RS}
${ired} *******  ired  ${RS}
${igreen} *******  igreen  ${RS}
${iyellow} *******  iyellow  ${RS}
${iblue} *******  iblue  ${RS}
${ipurple} *******  ipurple  ${RS}
${icyan} *******  icyan  ${RS}
${iwhite} *******  iwhite  ${RS}

${biblack} *******  biblack  ${RS}
${bired} *******  bired  ${RS}
${bigreen} *******  bigreen  ${RS}
${biyellow} *******  biyellow  ${RS}
${biblue} *******  biblue  ${RS}
${bipurple} *******  bipurple  ${RS}
${bicyan} *******  bicyan  ${RS}
${biwhite} *******  biwhite  ${RS}

${on_iblack} *******  on_iblack  ${RS}
${on_ired} *******  on_ired  ${RS}
${on_igreen} *******  on_igreen  ${RS}
${on_iyellow} *******  on_iyellow  ${RS}
${on_iblue} *******  on_iblue  ${RS}
${on_ipurple} *******  on_ipurple  ${RS}
${on_icyan} *******  on_icyan  ${RS}
${on_iwhite} *******  on_iwhite  ${RS}
"
echo $COLORS
