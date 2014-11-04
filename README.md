# Linux Mint After install

Small collection of basic script for installing some essential programs for Linux Mint.
This repo is actually for personal use, but feel free to use it if you find it useful.

## Fast Install

```sh
  # essentials
  wget -O xt  http://git.io/-BDg8Q && chmod +x "xt" && ./xt && rm xt
  
  # Nodejs
  wget -O xt  http://git.io/R7LgJg && chmod +x "xt" && ./xt && rm xt
  
  # rMate
  wget -O xt  http://git.io/gE58Qg && chmod +x "xt" && ./xt && rm xt
  
  # zsh
  wget -O xt  http://git.io/UBJMHQ && chmod +x "xt" && ./xt && rm xt
```

## Install Essentials

Download and save the script file, make this file executable and run it:

```sh
  install.essentials.sh
```

```sh
# One line installer
SCRIPT="install.essentials.sh" && wget https://raw.githubusercontent.com/Mayccoll/Linux/master/$SCRIPT && chmod +x $SCRIPT && ./$SCRIPT && rm $SCRIPT
```

NOTE: **This scrip installs the following packages**

- **Cairo-Dock**
- **Cloc**
- **Curl**
- **DaemonFSk**
- **Essential tools for compiling from sources**
- **Extras**
- **Filezilla**
- **Folder Color**
- **Git Cloc**
- **Git Extras**
- **Git**
- **Grub Customizer**
- **Gufw**
- **Install Pantheon Desktop Environment**
- **Packing software**
- **Progress bar**
- **Puppet**
- **pyrenamer**
- **Python**
- **rmate**
- **Ruby**
- **Samba**
- **shutter**
- **update**
- **Viewnior**
- **zssh**

```sh
# Use Cloc
  $ cloc .
  $ cloc --exclude-lang=DTD,Lua,make,Python .
  $ find . -name "*.php" | xargs cloc
```

- **Git Cloc**

```sh
# Use Git Cloc
    git cloc -r
    git cloc
    git cloc --month 2014-6
```

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## Install ZSH

Download and save the script file, make this file executable and run it:

```sh
  install.essezshntials.sh
```

```sh
# One line installer
SCRIPT="install.zsh.sh" && wget https://raw.githubusercontent.com/Mayccoll/Linux/master/$SCRIPT && chmod +x $SCRIPT && ./$SCRIPT && rm $SCRIPT
```

NOTE: **This scrip installs zsh and antigen**


- **Fix Errors**

```bash
  $ rm ~/.antigen/repos/https-COLON--SLASH--SLASH-gi* -rf
```

- **Installing ZSH Centos**

```bash
  $ yum install zsh

  $ h=`whoami` && usermod -s /bin/zsh $h
```

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## Nodejs

Download and save the script file, make this file executable and run it:

```sh
  install.nodejs.sh
```

```sh
# One line installer
SCRIPT="install.nodejs.sh" && wget https://raw.githubusercontent.com/Mayccoll/Linux/master/$SCRIPT && chmod +x $SCRIPT && ./$SCRIPT && rm $SCRIPT
```

NOTE: **This scrip installs Nodejs and the following packages**

- **bower**
- **less**
- **grunt**
- **grunt-cli**
- **wr**
- **yo**
- **generator-webapp**
- **generator-generator**



::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## rMate

Download and save the script file, make this file executable and run it:

```sh
  install.rmate.sh
```

```sh
# One line installer
SCRIPT="install.rmate.sh" && wget https://raw.githubusercontent.com/Mayccoll/Linux/master/$SCRIPT && chmod +x $SCRIPT && ./$SCRIPT && rm $SCRIPT
```

NOTE: **This scrip installs rmate**


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


## Extras


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


- **Folder Colors**

```sh
  $ sudo add-apt-repository ppa:costales/folder-color -y && sudo apt update && sudo apt install folder-color -y && sudo apt install python-nemo && sudo cp /usr/share/nautilus-python/extensions/folder-color.py /usr/share/nemo-python/extensions/ && sudo sed -i 's/Nautilus/Nemo/g' /usr/share/nemo-python/extensions/folder-color.py && nemo -q
```


- **XBMC**

```sh
  $ sudo add-apt-repository ppa:team-xbmc/ppa; sudo apt update; sudo apt install -y xbmc
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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



## **More nice apps**

- Alsamixer
- Angry IP Scanner -  http://angryip.org/
- Bless Hex Editor
- gpick
- haroopad
- htop
- imagemagic
- luckybackup
- meld
- pac
- pidgin
- qshutdown
- springseed
- sublime text
- timeshift
- wine
- Nitro Task



::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


## Themes and Icons

- **Ambiance ¬ Radiante**

```bash
  $ sudo add-apt-repository -y ppa:ravefinity-project/ppa
  $ sudo apt-get update
  $ sudo apt-get install -y ambiance-colors radiance-colors
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



::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


##    Useful Commands

- **Add Usuario**

```sh
  $ sudo adduser [newuser]
```

- **Delete User**

```sh
  $ sudo userdel [newuser]
```

- **Add User to Group**

```sh
  $ sudo adduser [user] [group]
```

- **Permisos**

```sh
  $ sudo chmod -R 755 folder/
```

- **Owner**

```sh
  $ sudo chown -R $USER:$USER vagrant/
```

- **View Folder size**

```sh
  $ du -hs .
  $ du * | sort -n

  $ du -h [FOLDER]
  $ du -hc [FOLDER]
  $ du -hs [FOLDER]
  $ du -hs .
  $ du -hs *
    du -hs . --exclude="*.txt"

        # Find 10 largest files/directories
        $ du -am /var | sort -n -r | head -n 10
        $ du -hsx * | sort -rh | head -10
```

### Find

-  **Get all extensions and their respective file count in a directory**

```sh
  $ find ./ -type f | grep -E ".*\.[a-zA-Z0-9]*$" | sed -e 's/.*\(\.[a-zA-Z0-9]*\)$/\1/' | sort | uniq -c | sort -n
```

- **Make the "tree" command pretty and useful by default**

```sh
    alias tree="tree -CAFa -I 'CVS|*.*.package|.svn|.git' --dirsfirst"
```

- **Find file on specific day**

```sh
  $ find ./ -type f -ls | grep 'jun'
```

- **Find executable files**

```sh
  $ find . -perm /a=x -type f
```

- **Find and count files with extention**

```sh
  $ find . -type f -name "*.php" | wc -l
```

- **Count all the lines of code in a directory recursively**

```sh
  $ find . -name '*.php' | xargs wc -l
```

- **Find modified files on especific day**

```sh
  $ find ./ -type f -ls | grep 'jun'

    #with exclude directory
    $ find ./ -type f ! -path "./.git/*" -ls | grep 'jun'
```

- **Find Dupicate files**

```sh
  $ find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate

    # Duplicate Files
    $ sudo apt-get install -y fdupes

  $ fdupes -r .
```


- **Show users - home**

```sh
  $ cat /etc/passwd | grep "/home" |cut -d: -f1
```

- **Show users all and uid**

```sh
  $ awk -F":" '{ print "User: " $1 "\t\tuid:" $3 }' /etc/passwd
```

- **Show users all**

```sh
  $ cat /etc/passwd | cut -d ":" -f1
```

- **wget**

```sh
  $ wget -r -l1 --no-parent -nH -nd -P/tmp -A".gif,.jpg,.png" http://example.com/images
```

- **Get External IP**

```sh
  $ curl http://ipecho.net/plain; echo

  $ lynx --dump http://ipecho.net/plain

  $ curl http://whatismyip.org/
```

- **Get Internal IP**

```sh
  $ /sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'
```

- **Todos los paquetes instaldados**

```sh
  $ dpkg --get-selections >> paquetes-instalados.txt

  $ grep install /var/log/dpkg.log >> paquetes-instalados.txt
```


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


## Open ports

- **Centos**

```sh
  $ vim /etc/sysconfig/iptables

    +++
    -A INPUT -m state --state NEW -m tcp -p tcp --dport 3000 -j ACCEPT

  $ /sbin/service iptables restart
```



::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


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


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


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

  $ sudo sublime /etc/fstab

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


## Vagrant

  $ vagrant box add [name] [url]

  $ vagrant box list

  $ vagrant box remove [name]

  $ vagrant init ubuntu/trusty64

  $ vagrant init [BOX_NAME] [URL]

  $ vagrant up

  $ vagrant ssh

  $ vagrant suspend

  $ vagrant resume

  $ vagrant halt

  $ vagrant restart

  $ vagrant destroy





    config.vm.synced_folder [Local], [Vagrant box]

## PUPPET

  $ puppet apply --noop

  $ puppet apply --noop

## Web Dev Utils

- **Koala** - http://koala-app.com/
- **Pleeease** - http://pleeease.io/

# Alias

```sh
    alias = git ls-files -v | grep '^[[:lower:]]'
```
