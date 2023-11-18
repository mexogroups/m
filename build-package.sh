#!/bin/sh 

#Package name
PACKAGE=$1

#Clone the all the repo
gbp clone --pristine-tar git@salsa.debian.org:js-team/$PACKAGE.git 

cd $PACKAGE
uscan --verbose

read -p "Enter upstream tarball name (Without path): " tarball

gbp import-orig --pristine-tar ../$tarball

gbp dch -a

sudo apt build-dep $PACKAGE 

dpkg-buildpackage

debclean

lintian
