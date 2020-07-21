#!/bin/bash

#MINHAS CONFIGURAÇOES DO UBUNTU;

#Distro upgrade;
sudo apt update && sudo apt dist-upgrade -y

#REMOVE O FIREFOX E INSTALA GOOGLE CHROME;

sudo apt purge firefox -y
sudo apt purge firefox-locale-pt-aa -y
cd Downloads 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install /home/brian/Downloads/google-chrome-stable_current_amd64.deb -y
rm -f google-chrome-stable_current_amd64.deb

#Ajuste;

sudo sysctl -w vm.swappiness=1 
sudo sysctl -w vm.vfs_cache_pressure=50
sudo sysctl -w vm.dirty_background_bytes=16777216
sudo sysctl -w vm.dirty_bytes=50331648

#Algumas instalaçoes;

sudo apt install snapd
wget http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/libx264-152_0.152.2854+gite9a5903-2_amd64.deb
sudo apt install git -y
sudo snap install vlc -y
sudo apt install tmux -y
sudo apt install vim -y
sudo apt update && sudo apt install -y neofetch
cd Downloads
sudo dpkg -i libx264-152_0.152.2854+gite9a5903-2_amd64.deb
sudo apt install /home/brian/Downloads/libx264-152_0.152.2854+gite9a5903-2_amd64.deb
sudo apt update && sudo apt upgrade -y
sudo apt install reaver -y
sudo apt install aircrack-ng -y
#FIM!
echo "Pronto! O PC será reiniciado."
sudo reboot now
