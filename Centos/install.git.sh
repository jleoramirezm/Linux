#!/bin/bash

yum groupinstall "Development Tools"

yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils perl-ExtUtils-MakeMaker asciidoc xmlto

wget -O git.zip https://github.com/git/git/archive/master.zip

unzip git.zip

cd git-master

make configure

./configure --prefix=/usr/local

make all doc

make install install-doc install-html
