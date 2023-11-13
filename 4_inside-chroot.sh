#!/bin/sh

apt-get update

rm -rf /var/lib/dpkg/statoverride
touch /var/lib/dpkg/statoverride

apt install locales
dpkg-reconfigure locales

apt install sudo
usermod -aG sudo codespace

echo "codespace ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /srv/chroot/debian-sid/etc/sudoers

git config --global user.email "nwekegodwin65@gmail.com"
git config --global user.name "Godwin Nweke"

cat /etc/debian_version

apt install devscripts git git-buildpackage lintian lintian-brush

