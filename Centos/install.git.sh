#!/bin/bash

sudo yum -y groupinstall "Development Tools"

sudo yum -y install curl-devel \
                    expat-devel \
                    gettext-devel \
                    openssl-devel \
                    zlib-devel gcc \
                    perl-ExtUtils \
                    perl-ExtUtils-MakeMaker \
                    asciidoc \
                    xmlto

sudo wget -O git.tar.gz https://github.com/git/git/archive/v2.8.1.tar.gz

sudo mkdir git

sudo tar xzf git.tar.gz -C git --strip 1

cd git

sudo make prefix=/usr/local/git all

sudo make prefix=/usr/local/git install

echo 'export PATH=$PATH:/usr/local/git/bin' | sudo tee --append /etc/bashrc

sudo source /etc/bashrc
