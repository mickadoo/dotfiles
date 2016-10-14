#!/usr/bin/env bash

sudo add-apt-repository -y \
ppa:hda-me/keepassx2-yubico \
ppa:otto-kesselgulasch/gimp

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get install -y \
curl \
vim \
keepassx \
apt-transport-https \
ca-certificates \
docker-engine \
git \
gimp \
terminator \
default-jdk \
xclip \
ruby-dev

sudo gem install jekyll

sudo groupadd docker
sudo usermod -aG docker $(whoami)

wget "https://download.jetbrains.com/webide/PhpStorm-2016.2.1.tar.gz"
tar xf PhpStorm-2016.2.1.tar.gz

rm PhpStorm-2016.2.1.tar.gz
sudo mv PhpStorm* /opt

echo ".idea" > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

