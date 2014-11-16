#!/bin/bash


sudo apt-get update
sudo apt-get install -y zsh

    # - **Install Oh-My-ZSH**
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash

    # - **Setting ZSH as the default shell (instead of bash)**
w=`which zsh` &&  h=`whoami` && sudo chsh -s $w $h

    # - **Install antigen**
cd ~ && git clone https://github.com/zsh-users/antigen.git .antigen

    # - **Install antigen - Add**
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
# antigen bundle rvme
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

antigen theme Mayccoll/oh-my-git-themes dolar-arrow-green

antigen-apply
# |::::::::::::::::::<<<zsh
EOF


    # - **Install antigen - Add**
cat <<-EOF >> ~/.zshrc
# |::::::::::::::::::stars>>>
echo '
　 ･ ·̩　　 ｡　☆　　　ﾟ｡  ＊ 　 ｡*　　+　 　＊ 　･ ｡☆+　 　＊ 　･ ｡☆
＊ 　 ｡*　　+　 　＊ 　･ ｡☆  　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+  ｡　☆　　　ﾟ｡･ ·̩　　
　☆　　　*　　　* 　 。  　 ･ ·̩　　 ｡　☆　　　ﾟ｡　☆　　　*　　　* 　　☆ﾟ　+ 
　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+ 　☆　　　*　　　* 　 。＊ 　 ｡*　　+　 　＊ 　･ ｡☆
'
# |::::::::::::::::::stars<<<
EOF
