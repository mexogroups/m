#!/bin/sh

apt-get update

apt install locales
dpkg-reconfigure locales

apt install sudo
usermod -aG sudo codespace

cat /etc/debian_version

sudo apt install devscripts git git-buildpackage lintian

