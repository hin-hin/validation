#!/bin/sh
apt-get update && apt-get install -y wget make

arch=uname -m

if [ arch -eq 'x86_64' ]
then
wget https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_0.80.0_Linux-64bit.deb
else
wget https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_0.80.0_Linux-ARM64.deb
fi

dpkg -i hugo_0.80.0_Linux-*.deb

make build
