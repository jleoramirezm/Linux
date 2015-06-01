# Linux Mint After install

Small collection of basic script for installing some essential programs for Linux Mint.
This repo is actually for personal use, but feel free to use it if you find it useful.

## Commands

https://github.com/Mayccoll/Linux/blob/master/commands.md

## Fast Install

```bash
  # | Basics | #
  $ wget -O xt  http://git.io/Dncnzw && chmod +x xt && ./xt && rm xt
      # - Extras
      # - Progress bar
      # - Git
      # - Curl
      # - Vim
      # - Htop
      # - Tree
      # - ack


  # | Eessentials | #
  $ wget -O xt  http://git.io/-BDg8Q && chmod +x xt && ./xt && rm xt
      # - Essential tools for compiling from sources
      # - Packing software
      # - zssh
      # - Cloc
      # - Git Cloc
      # - Git Extras


  # | zsh | #
  $ wget -O xt  http://git.io/UBJMHQ && chmod +x xt && ./xt && rm xt
      # - Install zsh
      # - Install Oh-My-ZSH
      # - Install antigen


  # | Alias | #
  $ wget -O xt  http://git.io/vkcDn && chmod +x xt && ./xt && rm xt


  # | Stars | #
  $ wget -O xt  http://git.io/vkvq9 && chmod +x xt && ./xt && rm xt


  # | Customize | #
  $ wget -O xt  http://git.io/h9dVjw && chmod +x xt && ./xt && rm xt
      # - Install Pantheon Desktop Environment
      # - Themes Libra Flattastic
      # - Grub Customizer
      # - Cairo-Dock


  # | Extras | #
  $ wget -O xt  http://git.io/OBOaLQ && chmod +x xt && ./xt && rm xt
      # - Pyrenamer
      # - DaemonFSk
      # - Gufw
      # - Viewnior
      # - Nemo Rabbitvcs


  # | Design | #
  $ wget -O xt  http://git.io/Nov7 && chmod +x xt && ./xt && rm xt
      # - gPick
      # - Shutter


  # | Tools | #
  $ wget -O xt  http://git.io/8yxL5Q && chmod +x xt && ./xt && rm xt
      # - Samba
      # - Filezilla
      # - mysql-workbench
      # - Remmina
      # - Cryptkeeper
      # - Meld


  # | io.js | #
  $ wget -O xt  http://git.io/vkvUs && chmod +x xt && ./xt && rm xt
      # - nvm
      # - npm
      # - io.js


  # | Nodejs | #
  $ wget -O xt  http://git.io/R7LgJg && chmod +x xt && ./xt && rm xt
      # - Nodejs
      # - nvm


  # | Python | #
  $ wget -O xt  http://git.io/S63sLQ && chmod +x xt && ./xt && rm xt
      # - Python


  # | Ruby | #
  $ wget -O xt  http://git.io/ZFV0PA && chmod +x xt && ./xt && rm xt
      # - Ruby


  # | Ruby 2.2.1 | #
  $ wget -O xt  http://git.io/vvNB7 && chmod +x xt && ./xt && rm xt


  # | Syncthing | #
  $ wget -O xt  http://git.io/vkep4 && chmod +x xt && ./xt && rm xt


  # | LAMP | #
  $ wget -O xt  http://git.io/83F6CQ && chmod +x xt && ./xt && rm xt
      # - apache2
      # - libapache2-mod-php5
      # - php-apc
      # - php-pear
      # - php5
      # - php5-cli
      # - php5-common
      # - php5-curl
      # - php5-dev
      # - php5-fpm
      # - php5-gd
      # - php5-geoip
      # - php5-imagick
      # - php5-imap
      # - php5-intl
      # - php5-mcrypt
      # - php5-memcache
      # - php5-memcached
      # - php5-mysql
      # - php5-sqlite
      # - php5-tidy
      # - php5-xdebug
      # - mysql-server
      # - php5-mysql


  # | zsh no root| #
  $ wget -O xt  http://git.io/D_Fw_w && chmod +x xt && ./xt && rm xt


  # | rMate | #
  $ wget -O xt  http://git.io/gE58Qg && chmod +x xt && ./xt && rm xt
```

-------------------------------------------------------------------------------

**Note:** if you get ERROR: certificate add ```--no-check-certificate```

```bash
  wget --no-check-certificate -O xt  http://git.io/UBJMHQ && chmod +x xt && ./xt && rm xt
```


-------------------------------------------------------------------------------

### Install more nice stuffs



- **Upgrade libreoffice**

```bash
    $
    sudo add-apt-repository ppa:libreoffice/ppa
```


```bash
    $
    sudo apt-get install uget
    sudo apt-get install inkscape
    sudo apt-get install gparted
    sudo apt-get install glipper
    sudo apt-get install hardinfo
```
- **Brackets and Atom**

```bash
    $
    sudo add-apt-repository -y ppa:webupd8team/brackets
    sudo add-apt-repository -y ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get -y install brackets
    sudo apt-get -y install atom
```

- **Vagrant**

```bash
    https://www.vagrantup.com/downloads.html
```

- **VirtualBox**

```bash
    https://www.virtualbox.org/wiki/Downloads
```

- **Gimp 2.9**

```bash
    $
    sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge
```

- **Install Gimp Theme photoshop**

```bash
    $
    http://doctormo.deviantart.com/art/Gimp-2-8-Photoshop-Tweaks-432736644
```

- **Install last version of gThump**

```bash
    $
    sudo add-apt-repository -y ppa:webupd8team/gthumb
```

- **Install Ansible**

```bash
    $
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update && sudo apt-get install -y ansible
```

- **Install Docker**

```bash
  $
  sudo apt-get install apparmor
  wget -qO- https://get.docker.com/ | sh
  # run without sudo
  sudo gpasswd -a $USER docker
  sudo service docker.io restart
```

- **Install Koala**

```bash
    http://koala-app.com/
```

- **Install Go For It!**

```bash
    $
    sudo add-apt-repository ppa:mank319/go-for-it
    sudo apt-get update
    sudo apt-get install go-for-it
```

- **Install Krita**

```bash
    $
    sudo add-apt-repository ppa:dimula73/krita
    sudo apt-get update
    sudo apt-get install krita-2.9 krita-2.9-dbg
```

- **Install inotify**

```bash
  $
  sudo echo "deb http://us.archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
  sudo apt-get update
  sudo apt-get install inotify-tools
```

- **Install vlc**

```bash
  $
  sudo add-apt-repository ppa:videolan/stable-daily
  sudo apt-get update
  sudo apt-get purge vlc
  sudo apt-get install vlc-nox
  sudo apt-get install vlc

  ##
  sudo add-apt-repository ppa:mc3man/trusty-media
  sudo apt-get update && sudo apt-get install vlc
```

- **wkhtmltopdf**

``` bash
    # Convert html to pdf
    $
    sudo apt install -y  wkhtmltopdf

    ### Ex:
    $
    wkhtmltopdf http://google.com google.pdf
```


- **pandoc**

``` bash
    # Universal document converter
    $
    sudo apt install -y pandoc

    # Requirements
    $
    sudo apt install texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended

    ## Ex:
    $
    pandoc -f markdown -t html README.md >> README.html
    $
    pandoc latex.md -o latex.pdf

```


- **Sigil**

```bash
  $
  sudo add-apt-repository -y ppa:sunab/sigil-git
  sudo apt-get -y update
  sudo apt-get install sigil
```


- **Java**

```bash
  $
  sudo apt-get install openjdk-7-jdk openjdk-7-jre icedtea-7-plugin
  sudo update-alternatives --config java
```


- **Steam**

```bash
  $
  wget -c media.steampowered.com/client/installer/steam.deb
  sudo dpkg -i steam.deb
  sudo apt install -f
```


- **Calibre**

```bash
  $
  sudo apt install calibre
```


- **XBMC**

```bash
  $
  sudo add-apt-repository ppa:team-xbmc/ppa
  sudo apt-get update
  sudo apt-get install xbmc
```


- **php5**

```bash
  $
  sudo apt install -y \
                    php5 \
                    php5-dev \
                    php-pear \
                    php5-cli
```


- **Mysql**

```bash
  $
  sudo apt install -y \
                    mysql-server \
                    mysql-client \
                    libmysqlclient-dev \
                    libmysqld-dev
```


- **Postgresql**

```bash
  $
  sudo apt install -y postgresql \
                                postgresql-client \
                                postgresql-contrib
```


- **qshutdown**

```bash
  $
  sudo apt install -y qshutdown
```

- **imagemagick**

```bash
  $
  sudo apt install -y imagemagick
```

- **Bless Hex Editor**

```bash
  $
  sudo apt install -y bless
```

- **Luckybackup**

```bash
  $
  sudo apt install -y luckybackup
```

- **Wine**

```bash
  $
  sudo apt install -y wine
```

- **Salt**

```bash
  $ sudo apt-get install -y python-software-properties
  $ sudo add-apt-repository -y ppa:saltstack/salt
  $ sudo apt-get update
  $ sudo apt-get install -y salt-master
  $ sudo apt-get install -y salt-minion
  $ sudo apt-get install -y salt-syndic
```

- **Zentyal**

```bash
  $
  sudo add-apt-repository "deb http://archive.zentyal.org/zentyal 4.1 main"
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 10E239FF
  wget -q http://keys.zentyal.org/zentyal-4.1-archive.asc -O- | sudo apt-key add -
  sudo apt-get update
  sudo apt-get install zentyal
  #
  # https://SERVER IP
  # https://SERVER IP:8443
```


- **Trickle**

```bash
  ## Config Bandwidth
  $
  sudo apt install -y trickle
```

- **Composer, Laravel, Artisan**

```bash
  $
  sudo apt-get install php5-cli
  curl -sS https://getcomposer.org/installer | php
  
  sudo mv composer.phar /usr/bin/composer

  composer global require "laravel/installer=~1.1"
  
  echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ${HOME}/.zshrc

  echo 'alias artisan="php artisan"' >> ${HOME}/.zshrc
```

- **Megadown**

```bash
  $
  sudo apt-get install pv
  sudo apt-get install php5-cli
  git clone https://github.com/tonikelope/megadown.git
  cd megadown
  sudo chmod +x megadown
```

-------------------------------------------------------------------------------

## **More nice apps**

- Alsamixer
- Angry IP Scanner  - http://angryip.org/
- haroopad          - http://pad.haroopress.com/
- Koala             - http://koala-app.com/
- pac               - http://sourceforge.net/projects/pacmanager/files/
- springseed        - http://getspringseed.com/
- Sublime text      - http://www.sublimetext.com/3
- timeshift         - http://www.teejeetech.in/p/timeshift.html
- Nitro Task        - http://nitrotasks.com/#
- Koala             - http://koala-app.com/
- Pleeease          - http://pleeease.io/

-------------------------------------------------------------------------------


## Themes and Icons



- **Libra**

```bash
  $
  sudo add-apt-repository ppa:noobslab/themes && \
  sudo apt-get update && \
  sudo apt-get install libra-theme
```

- **vertex**

```bash
  $
  sudo add-apt-repository ppa:noobslab/themes && \
  sudo apt-get update && \
  sudo apt-get install vertex-theme
```

- **Flattastic**

```bash
  $
  sudo add-apt-repository ppa:noobslab/themes
  sudo apt-get update
  sudo apt-get install flattastic-suite
```

- **Ambiance ¬ Radiante**

```bash
  $
  sudo add-apt-repository -y ppa:ravefinity-project/ppa
  sudo apt-get update
  sudo apt-get install -y radiance-colors ambiance-colors
```

- **iOS 7**

```bash
  $
  sudo add-apt-repository ppa:noobslab/icons
  sudo apt update
  sudo apt install ieos7-icons
```

- **Faience**

```bash
  $
    ### http://tiheum.deviantart.com/art/Faience-icon-theme-255099649

   sudo add-apt-repository ppa:tiheum/equinox
   sudo apt update
   sudo apt install faience-theme faience-icon-theme
```

- **Compass Icons**

```bash
  $
   sudo ppa:noobslab/nitrux-os
   sudo apt update
   sudo apt install compass-icons
```

- **Pacifica Icons**

```bash
  $
   sudo add-apt-repository ppa:fsvh/pacifica-icon-theme
   sudo apt update
   sudo apt install pacifica-icon-theme
```

- **Nitrux Icons**

```bash
  $
   sudo add-apt-repository ppa:upubuntu-com/nitrux
   sudo apt update
   sudo apt install nitruxos
```

- **Faience**

>>>    /usr/share/icons

``` bash
  ### http://tiheum.deviantart.com/art/Faience-icon-theme-255099649

  $
  sudo add-apt-repository ppa:tiheum/equinox
  sudo apt update
  sudo apt install faience-theme faience-icon-theme

```
