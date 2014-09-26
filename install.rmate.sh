#!/bin/bash
curl https://raw.github.com/aurora/rmate/master/rmate > rmate
sudo mv rmate /usr/local/bin
sudo chmod +x /usr/local/bin/rmate
sudo iptables -A INPUT -p tcp --dport 52698 -j ACCEPT