#!/bin/bash


sudo apt-get update
sudo apt-get install -y zsh

    # - **Install Oh-My-ZSH**
    # ==============================================
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash


    # - **Setting ZSH as the default shell (instead of bash)**
    # ==============================================

if [[ $EUID -ne 0 ]]; then
# no root
cat <<-EOF >> $HOME/.bash_profile
export SHELL=/bin/zsh
exec /bin/zsh -l
EOF


    # - **Install antigen**
    # ==============================================
cd ~ && git clone https://github.com/zsh-users/antigen.git .antigen


    # Delete Content
echo '' > $HOME/.zshrc


    # Delete text beetwen 2 words
    # ==============================================
FILEZSH="/.zshrc"
WORD1='# |::::::::::::::::::>>>ohmyzsh' # |<=== Config This
WORD2='# |::::::::::::::::::<<<ohmyzsh' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${HOME}${FILEZSH}" > "${HOME}${FILEZSH}_tmp"
cp "${HOME}${FILEZSH}_tmp" "${HOME}${FILEZSH}"
rm "${HOME}${FILEZSH}_tmp"


    # - **Install antigen - Add**
    # ==============================================
cat <<-EOF >> $HOME/.zshrc
# |::::::::::::::::::>>>ohmyzsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# |::::::::::::::::::<<<ohmyzsh
EOF





    # Delete text beetwen 2 words
    # ==============================================
FILEZSH="/.zshrc"
WORD1='# |::::::::::::::::::>>>zsh' # |<=== Config This
WORD2='# |::::::::::::::::::<<<zsh' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${HOME}${FILEZSH}" > "${HOME}${FILEZSH}_tmp"
cp "${HOME}${FILEZSH}_tmp" "${HOME}${FILEZSH}"
rm "${HOME}${FILEZSH}_tmp"


    # - **Install antigen - Add**
    # ==============================================
cat <<-EOF >> $HOME/.zshrc
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


    # Delete text beetwen 2 words
    # ==============================================
FILEZSH="/.zshrc"
WORD1='# |::::::::::::::::::stars>>>' # |<=== Config This
WORD2='# |::::::::::::::::::stars<<<' # |<=== Config This

sed -e "/${WORD1}/,/${WORD2}/d"  "${HOME}${FILEZSH}" > "${HOME}${FILEZSH}_tmp"
cp "${HOME}${FILEZSH}_tmp" "${HOME}${FILEZSH}"
rm "${HOME}${FILEZSH}_tmp"


    # - **Install antigen - Add**
    # ==============================================
cat <<-EOF >> $HOME/.zshrc
# |::::::::::::::::::stars>>>
echo '
　 ･ ·̩　　 ｡　☆　　　ﾟ｡  ＊ 　 ｡*　　+　 　＊ 　･ ｡☆+　 　＊ 　･ ｡☆
＊ 　 ｡*　　+　 　＊ 　･ ｡☆  　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+  ｡　☆　　　ﾟ｡･ ·̩　　
　☆　　　*　　　* 　 。  　 ･ ·̩　　 ｡　☆　　　ﾟ｡　☆　　　*　　　* 　　☆ﾟ　+ 
　　　ﾟ･　　｡ﾟ･　　☆ﾟ　+ 　☆　　　*　　　* 　 。＊ 　 ｡*　　+　 　＊ 　･ ｡☆
'
# |::::::::::::::::::stars<<<
EOF
