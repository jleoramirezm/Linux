# Linux Mint After install

Small collection of basic script for installing some essential programs for Linux Mint.
This repo is actually for personal use, but feel free to use it if you find it useful.

## Fast Install

```sh
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
  $ wget -O xt  http://git.io/vkvZe && chmod +x xt && ./xt && rm xt


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
      # - io.js


  # | Nodejs | #
  $ wget -O xt  http://git.io/R7LgJg && chmod +x xt && ./xt && rm xt
      # - **Nodejs Packages**
      # - **NVM**
      # Watch files
      # Yeoman
      # Web Generator


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

```sh
  wget --no-check-certificate -O xt  http://git.io/UBJMHQ && chmod +x xt && ./xt && rm xt
```

### Install all

```sh
  $ wget -O xt  http://git.io/azymoA && chmod +x xt && ./xt && rm xt
```

-------------------------------------------------------------------------------

### Install more nice stuffs

- Upgrade libreoffice

```sh
    $
    sudo add-apt-repository ppa:libreoffice/ppa
```

```sh
    $
    sudo apt-get install gparted
    sudo apt-get install inkscape
    sudo apt-get install glipper
    sudo apt-get install uget
    sudo apt-get install hardinfo
```
- Install Brackets and Atom

```sh
    $
    sudo add-apt-repository -y ppa:webupd8team/brackets
    sudo add-apt-repository -y ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get -y install brackets
    sudo apt-get -y install atom
```

- Install Vagrant

```sh
    https://www.vagrantup.com/downloads.html
```

- Install VirtualBox

```sh
    https://www.virtualbox.org/wiki/Downloads
```

- Install Gimp 2.9

```sh
    $
    sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge
```

- Install Gimp Theme photoshop

```sh
    $
    http://doctormo.deviantart.com/art/Gimp-2-8-Photoshop-Tweaks-432736644
```

- Install last version of gThump

```sh
    $
    sudo add-apt-repository -y ppa:webupd8team/gthumb
```

- Install Ansible

```sh
    $
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update && sudo apt-get install -y ansible
```

- Install Docker

```sh
  $
  sudo apt-get install apparmor
  wget -qO- https://get.docker.com/ | sh
  # run without sudo
  sudo gpasswd -a $USER docker
  sudo service docker.io restart
```

- Install Koala

```sh
    http://koala-app.com/
```

- Install Go For It!

```sh
    $
    sudo add-apt-repository ppa:mank319/go-for-it
    sudo apt-get update
    sudo apt-get install go-for-it
```

- Install Krita
```sh
    $
    sudo add-apt-repository ppa:dimula73/krita
    sudo apt-get update
    sudo apt-get install krita-2.9 krita-2.9-dbg
```

- Install inotify
```sh
  $
  sudo echo "deb http://us.archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
  sudo apt-get update
  sudo apt-get install inotify-tools
```

- Install vlc
```sh
  $
  sudo add-apt-repository ppa:videolan/stable-daily
  sudo apt-get update
  sudo apt-get purge vlc
  sudo apt-get install vlc-nox
  sudo apt-get install vlc
```

-------------------------------------------------------------------------------

## More useful programs that are not included in scripts


- **wkhtmltopdf**

``` bash
    # Convert html to pdf
    $ sudo apt install -y  wkhtmltopdf

    Ex:
    $ wkhtmltopdf http://google.com google.pdf
```


- **pandoc**

``` bash
    # Universal document converter
    $ sudo apt install -y pandoc

    # Requirements
    $ sudo apt install texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended

    Ex:
    $ pandoc -f markdown -t html README.md >> README.html
    $ pandoc latex.md -o latex.pdf

```


- **Sigil**

```sh
  $ sudo add-apt-repository -y ppa:sunab/sigil-git
  $ sudo apt-get -y update
  $ sudo apt-get install sigil
```


- **Java**

```sh
  $ sudo apt-get install openjdk-7-jdk openjdk-7-jre icedtea-7-plugin
  $ sudo update-alternatives --config java
```


- **Steam**

```sh
  $ wget -c media.steampowered.com/client/installer/steam.deb
  $ sudo dpkg -i steam.deb
  $ sudo apt install -f
```


- **Calibre**

```sh
  $ sudo apt install calibre
```


- **XBMC**

```sh
  $ sudo add-apt-repository ppa:team-xbmc/ppa
  $ sudo apt-get update
  $ sudo apt-get install xbmc
```


- **php5**

```sh
  $ sudo apt install -y php5 php5-dev php-pear php5-cli
```


- **Mysql**

```sh
  sudo apt install -y mysql-server mysql-client libmysqlclient-dev libmysqld-dev
```


- **Postgresql**

```sh
  sudo apt install -y postgresql postgresql-client postgresql-contrib
```


- **qshutdown**

```sh
  $ sudo apt install -y qshutdown
```

- **imagemagick**

```sh
  $ sudo apt install -y imagemagick
```

- **Bless Hex Editor**

```sh
  $ sudo apt install -y bless
```

- **Luckybackup**

```sh
  $ sudo apt install -y luckybackup
```

- **Wine**

```sh
  $ sudo apt install -y wine
```

- **Salt**

```sh
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



-------------------------------------------------------------------------------


## Themes and Icons

Libra

- **Libra**

```bash
  $
  sudo add-apt-repository ppa:noobslab/themes
  sudo apt-get update
  sudo apt-get install libra-theme
```

- **Libra**
-
```bash
  $
  sudo add-apt-repository ppa:noobslab/themes
  sudo apt-get update
  sudo apt-get install vertex-theme
```

- **Flattastic**

```bash
  $ sudo add-apt-repository ppa:noobslab/themes
  $ sudo apt-get update
  $ sudo apt-get install flattastic-suite
```

- **Ambiance ¬ Radiante**

```bash
  $ sudo add-apt-repository -y ppa:ravefinity-project/ppa
  $ sudo apt-get update
  $ sudo apt-get install -y radiance-colors ambiance-colors
```

- **iOS 7**

``` bash
  $ sudo add-apt-repository ppa:noobslab/icons
  $ sudo apt update
  $ sudo apt install ieos7-icons
```

- **Faience**

``` bash
    http://tiheum.deviantart.com/art/Faience-icon-theme-255099649

   $ sudo add-apt-repository ppa:tiheum/equinox
   $ sudo apt update
   $ sudo apt install faience-theme faience-icon-theme
```

- **Compass Icons**

``` bash
   $ sudo ppa:noobslab/nitrux-os
   $ sudo apt update
   $ sudo apt install compass-icons
```

- **Pacifica Icons**

``` bash
   $ sudo add-apt-repository ppa:fsvh/pacifica-icon-theme
   $ sudo apt update
   $ sudo apt install pacifica-icon-theme
```

- **Nitrux Icons**

``` bash
   $ sudo add-apt-repository ppa:upubuntu-com/nitrux
   $ sudo apt update
   $ sudo apt install nitruxos
```

- **Faience**

``` bash
    >>>    /usr/share/icons

    http://tiheum.deviantart.com/art/Faience-icon-theme-255099649

  $ sudo add-apt-repository ppa:tiheum/equinox
  $ sudo apt update
  $ sudo apt install faience-theme faience-icon-theme

```

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

## Useful



- **Cloc**

```sh
  $ cloc .
  $ cloc --exclude-lang=DTD,Lua,make,Python .
  $ find . -name "*.php" | xargs cloc
```

- **Git Cloc**

```sh
    git cloc -r
    git cloc
    git cloc --month 2014-6
```

## Open ports

- **Ubuntu**

  $ sudo /sbin/iptables -A INPUT -i eth0 -p tcp --destination-port 3306 -j ACCEPT

- **Centos**

```sh
  $ vim /etc/sysconfig/iptables

    +++
    -A INPUT -m state --state NEW -m tcp -p tcp --dport 3000 -j ACCEPT

  $ /sbin/service iptables restart
```

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

## Screencast Animated GIF

```bash
  $
  sudo add-apt-repository -y ppa:fossfreedom/byzanz
  sudo apt-get update
  sudo apt-get install -y byzanz

  # 1/4
byzanz-record --x=2600 --y=310 --width=700 --height=400 out.gif  --duration=3

  # Half
byzanz-record --x=2600 --y=310 --width=700 --height=768 out.gif  --duration=3

  # Full
byzanz-record --x=1921 --y=310 --width=1366 --height=768 out.gif  --duration=3

```

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
## SSH

  $ ssh-keygen -t rsa -b 4096

  $ ssh-keygen -t rsa -b 4096 -f  ~/.ssh/gitlab -C "www.gitlab.com"

  $ ssh-keygen -t dsa

  $ ssh-keygen -t rsa

  $ ssh -X user@host

  $ ssh-keygen -t dsa -f  /home/o/.ssh/NAME

  $ ssh-keygen -t dsa -f  /home/o/.ssh/[NAME] -C [COMENTARIO]

  $ ssh-keygen -t dsa -f  /home/o/.ssh/gitlab -C "www.gitlab.com"

- **SSH Config File**

```sh
    Host *
      ServerAliveInterval 240

    # |::::::: Virtual Machine Centos - Owncloud - Web
    Host vm26
        HostName 192.168.77.26
        Port 22
        User root
        IdentityFile ~/.ssh/turrisystem
        Compression yes
        CompressionLevel 9
        # RemoteForward 52698 127.0.0.1:52698
        # RemoteForward 52698 localhost:52698
        IdentitiesOnly yes


    ## Authentication
    # ssh -p 22 -o PubkeyAuthentication=no root@192.168.0.13

    ## Upload file
    # scp SourceFile user@host:directory/TargetFile

```

- **Upload ssh key**

```sh
  $ scp ~/.ssh/id_rsa.pub user@host:~/.ssh/authorized_keys
```

- **Upload Files SSH**

```sh
  $ scp FILE USER@SERVER:LOCATION
```




## Download full website

```sh
  $ wget \
        -p \
        --recursive \
        --no-clobber \
        --page-requisites \
        --html-extension \
        --convert-links \
        --restrict-file-names=windows \
        --domains www.atlassian.com \
        --no-parent \
            www.atlassian.com/es/git/workflows
```

## Cron


- View Root User Cronjob

```sh
  $ crontab -l
```

- View Users Cronjob

```sh
  $ crontab -u userName -l
  $ crontab -u vivek -l
```

- Install or create or edit my own cron jobs

```sh
  $ crontab -e
```

- Syntax of crontab

```sh
    1 2 3 4 5 /path/to/command arg1 arg2

    # or

    1 2 3 4 5 /root/backup.sh

    # or

    1 2 3 4 5 USERNAME /path/to/command arg1 arg2

    # Format

    * * * * * command to be executed
    - - - - -
    | | | | |
    | | | | ----- Day of week (0 - 7) (Sunday=0 or 7)
    | | | ------- Month (1 - 12)
    | | --------- Day of month (1 - 31)
    | ----------- Hour (0 - 23)
    ------------- Minute (0 - 59)
```

**Cron examples**

```sh
    # Pull and log
    */1 * * * *   /root/crons/prototiposena.sh  >> /root/crons/logs/prototiposena.$(date +\%Y\%m\%d).log 2>&1
    */1 * * * *   /root/crons/time_stamp.sh  >> /root/crons/logs/prototiposena.$(date +\%Y\%m\%d).log 2>&1


    */3 * * * *   /root/crons/prototiposena_prueba.sh  >> /root/crons/logs/prototiposena_prueba.$(date +\%Y\%m\%d).log 2>&1
    */3 * * * *   /root/crons/time_stamp.sh  >> /root/crons/logs/prototiposena_prueba.$(date +\%Y\%m\%d).log 2>&1


    # prototiposena_dropbox.sh
    00 20 * * *    /root/crons/prototiposena_dropbox.sh  >> /root/crons/logs/prototiposena_dropbox.$(date +\%Y\%m\%d).log 2>&1
    00 20 * * *    /root/crons/time_stamp.sh  >> /root/crons/logs/prototiposena_dropbox.$(date +\%Y\%m\%d).log 2>&1

    # Remove file older than 7 days
    0 0 * * *     find /root/crons/logs -mtime +7 -exec rm {} \;
```


## Keymap cambiar techas

#### Usando el comando `xmodmap`

-  Crear archivo

```sh
  $ touch ~/.xmodmap
  $ vim ~/.xmodmap
```

- Editar .xmodmap agregando:

```sh
    !
    ! make shift-, be < and shift-. be >
    !
    keysym comma = comma semicolon less less less
    keysym period = period colon greater greater greater


    !
    ! Add <> to zx
    ! ORIGINAL
    ! keycode  52 = z Z z Z guillemotleft less guillemotleft less
    ! keycode  53 = x X x X guillemotright greater guillemotright greater
    !
    keycode  52 = z Z z Z guillemotleft less less less
    keycode  53 = x X x X guillemotright greater greater greater

```

- Ejecutar

```sh
    xmodmap -verbose ~/.xmodmap
```

## Otros comados utiles

- Ver teclas

```sh
  $ xmodmap -pke | less
```

- Ver las lista de dispositivos

```sh
  $ xinput list
```

- Diagnostico de las teclas

```sh
  $ xinput query-state 9
```

## Config Bandwidth

```sh
  $ sudo apt install -y trickle
```



## Montar Driver

```sh
  $ ll /dev/disk/by-uuid/ && ll /dev/disk/by-label/

  $ sudo nano /etc/fstab

+++ UUID=e2a5bf75-e511-4330-9f1e-efc114b9a47e /media/oo/Tera  ext4    errors=remount-ro 0       1

```


**Descargar MountManager**

```sh
    http://ubuntuforums.org/showthread.php?t=1604251
```

**Edit fstab**
```sh
  $ sudo blkid -c /dev/null

    +++ UUID=3ABC75AEBC756573 /home/o/Media/Disk-2  ntfs-3g defaults,auto,uid=1000,gid=1000,umask=002 0 0

    or /* BEST OPTION install NTFS config */

    +++ UUID=55aa3897-145f-4dc3-8d23-1e27c804e7ba    /    ext4    errors=remount-ro    0    1
        /dev/sda3    /home/o/Media/Disk-2    ntfs-3g    defaults,rw,users,auto,uid=0000,gid=1000,fmask=000,dmask=000,umask=000    0    0

    or

     UUID=3ABC75AEBC756573 /home/o/Media/Disk-2  ntfs-3g defaults,rw,users,auto,uid=0000,gid=1000,fmask=000,dmask=000,umask=000 0 0000
```

## Descomprimir a traves de php

```php
    exec('tar -xzf SecretariaSalud.tar.gz',$ret);
```

## Clear Memory Cache

```bash
  sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
```

## Web Dev Utils

- **Koala** - http://koala-app.com/
- **Pleeease** - http://pleeease.io/

## add-apt-repository: command not found

```bash
  $
  sudo apt-get install python-software-properties
  Update apt-file:
  apt-file update
  apt-file search add-apt-repository
  sudo apt-get install software-properties-common
```

## Remove All Unused Linux Kernel Headers, Images and Modules

```
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge
```
