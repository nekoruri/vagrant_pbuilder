#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

export DEBIAN_FRONTEND=noninteractive
/bin/sed -i".bak" 's/http:\/\/..\.archive\.ubuntu\.com\/ubuntu/http:\/\/ftp.jaist.ac.jp\/pub\/Linux\/ubuntu/' /etc/apt/sources.list

/usr/bin/apt-get -q -y update
/usr/bin/apt-get -q -y upgrade
/usr/bin/apt-get -q -y install devscripts language-pack-ja vim-nox pbuilder
/usr/sbin/update-locale LANG=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"

pbuilder create --debootstrapopts --variant=buildd
