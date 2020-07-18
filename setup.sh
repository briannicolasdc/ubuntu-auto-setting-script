#!/bin/bash

#MINHAS CONFIGURAÇOES DO UBUNTU;

cd ~
sudo apt update -qq

#REMOVE O FIREFOX E INSTALA GOOGLE CHROME;

sudo apt purge firefox -yy
sudo apt purge firefox-locale-pt-aa -yy
cd /home/Brian/Downloads 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb
cd ~

#Ajuste;

sudo sysctl -w vm.swappiness = 1 
sudo sysctl -w vm.vfs_cache_pressure = 50 
sudo sysctl -w vm.dirty_background_bytes = 16777216 
sudo sysctl -w vm.dirty_bytes = 50331648

#Algumas instalaçoes;

wget http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/libx264-152_0.152.2854+gite9a5903-2_amd64.deb
sudo dpkg -i libx264-152_0.152.2854+gite9a5903-2_amd64.deb
sudo apt install git -y
sudo snap install vlc -y
sudo apt update
sudo apt upgrade -y
sudo apt install tmux -y
sudo apt install vim -y
sudo apt update
sudo apt upgrade -y
sudo apt update && sudo apt install -y neofetch

#Distro upgrade;
sudo apt-get update && sudo apt full-upgrade -y

#FIM!
echo "Pronto! O PC será reiniciado."
sudo reboot now
