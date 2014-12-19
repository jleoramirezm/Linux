## **VNC**

- Update

```sh
    $ sudo apt-get update
    $ sudo apt-get dist-upgrade -y --force-yes
```

```sh
    $ sudo apt-get install -y xubuntu-desktop xfce4 firefox nano vim --force-yes
```

- Install VNC

```sh
    $ sudo apt-get install vnc4server
```

- check

```sh
    $ dpkg -l | grep vnc
```

- Add user

```sh
    $ sudo adduser master
```

- Config VNC

```sh
    $ su - master
    $ vncserver
    $ cp ~/.vnc/xstartup ~/.vnc/xstartup.bak
    $ > ~/.vnc/xstartup
    $ vim ~/.vnc/xstartup
```

```sh
#!/bin/sh

[ -r /etc/sysconfig/i18n ] && . /etc/sysconfig/i18n
export LANG
export SYSFONT
vncconfig -iconic &
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
OS=`uname -s`
if [ $OS = 'Linux' ]; then
  case "$WINDOWMANAGER" in
    *gnome*)
      if [ -e /etc/SuSE-release ]; then
        PATH=$PATH:/opt/gnome/bin
        export PATH
      fi
      ;;
  esac
fi
if [ -x /etc/X11/xinit/xinitrc ]; then
  exec /etc/X11/xinit/xinitrc
fi
if [ -f /etc/X11/xinit/xinitrc ]; then
  exec sh /etc/X11/xinit/xinitrc
fi
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey
xterm -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &
#twm &
exec gnome-session &

```


```sh
    $ vncserver -kill :1
    $ exit
    $ sudo vim /etc/init.d/vncserver
```

```sh
#!/bin/bash

unset VNCSERVERARGS
VNCSERVERS=""
[ -f /etc/vncserver/vncservers.conf ] && . /etc/vncserver/vncservers.conf
prog=$"VNC server"
start() {
    . /lib/lsb/init-functions
    REQ_USER=$2
    echo -n $"Starting $prog: "
    ulimit -S -c 0 >/dev/null 2>&1
    RETVAL=0
    for display in ${VNCSERVERS}
    do
    export USER="${display##*:}"
    if test -z "${REQ_USER}" -o "${REQ_USER}" == ${USER} ; then
    echo -n "${display} "
    unset BASH_ENV ENV
    DISP="${display%%:*}"
    export VNCUSERARGS="${VNCSERVERARGS[${DISP}]}"
    su ${USER} -c "cd ~${USER} && [ -f .vnc/passwd ] && vncserver :${DISP} ${VNCUSERARGS}"
    fi
    done
}
stop() {
    . /lib/lsb/init-functions
    REQ_USER=$2
    echo -n $"Shutting down VNCServer: "
    for display in ${VNCSERVERS}
    do
    export USER="${display##*:}"
    if test -z "${REQ_USER}" -o "${REQ_USER}" == ${USER} ; then
    echo -n "${display} "
    unset BASH_ENV ENV
    export USER="${display##*:}"
    su ${USER} -c "vncserver -kill :${display%%:*}" >/dev/null 2>&1
    fi
    done
    echo -e "\n"
    echo "VNCServer Stopped"
}
case "$1" in

    start)
        start $@
    ;;

    stop)
        stop $@
    ;;

    restart|reload)
        stop $@
        sleep 3
        start $@
    ;;

    condrestart)
        if [ -f /var/lock/subsys/vncserver ]; then
            stop $@
            sleep 3
            start $@
        fi
    ;;

    status)
        status Xvnc
    ;;

    *)
    echo $"Usage: $0 {start|stop|restart|condrestart|status}"
    exit 1
esac

```

```sh
    $ sudo chmod +x /etc/init.d/vncserver
    $ sudo mkdir -p /etc/vncserver
    $ sudo vim /etc/vncserver/vncservers.conf
```

```sh
VNCSERVERS="1:master 2:root 3:vagrant"

VNCSERVERARGS[1]="-geometry 1440x768"
VNCSERVERARGS[1]="-geometry 1920x1080 -depth 24"
VNCSERVERARGS[1]="-geometry 800x600 -depth 8"

VNCSERVERARGS[2]="-geometry 1440x768"
VNCSERVERARGS[2]="-geometry 1920x1080 -depth 24"
VNCSERVERARGS[2]="-geometry 800x600 -depth 8"

VNCSERVERARGS[3]="-geometry 1440x768"
VNCSERVERARGS[3]="-geometry 1920x1080 -depth 24"
VNCSERVERARGS[3]="-geometry 800x600 -depth 8"
```

```sh
    $ sudo update-rc.d vncserver defaults 99
    $ sudo reboot
```
# - Start VNC

```sh
    $ vnc4server
```

# ######################################################
#  Notes
# 
# Clean old sessions
# $ rm /tmp/.X*lock && rm /tmp/.X11-unix/X*
