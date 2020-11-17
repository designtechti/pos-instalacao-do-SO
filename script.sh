#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install dropbox -y &&
sudo apt install teamviewer -y &&
sudo apt install python3 python-pip wine nautilus-dropbox docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y &&


## Adicionando repositório Flathub ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalando Apps do Flathub ##

sudo flatpak install flathub cc.arduino.arduinoide -y &&
sudo flatpak install flathub com.google.AndroidStudio -y &&
sudo flatpak install flathub org.audacityteam.Audacity -y &&
sudo flatpak install flathub com.rafaelmardojai.Blanket -y &&
sudo flatpak install flathub org.blender.Blender -y &&
sudo flatpak install flathub org.gnome.Boxes -y &&
sudo flatpak install flathub org.gnome.Cheese -y &&
sudo flatpak install flathub org.mozilla.Thunderbird -y &&
sudo flatpak install flathub com.discordapp.Discord -y &&
sudo flatpak install flathub org.electrum.electrum -y &&
sudo flatpak install flathub org.filezillaproject.Filezilla -y &&
sudo flatpak install flathub com.github.johnfactotum.Foliate -y &&
sudo flatpak install flathub com.meetfranz.Franz -y &&
sudo flatpak install flathub com.axosoft.GitKraken -y &&
sudo flatpak install flathub org.inkscape.Inkscape -y &&
sudo flatpak install flathub org.jamovi.jamovi -y &&
sudo flatpak install flathub org.kde.kdenlive -y &&
sudo flatpak install flathub net.codeindustry.MasterPDFEditor -y &&
sudo flatpak install flathub org.apache.netbeans -y &&
sudo flatpak install flathub com.obsproject.Studio -y &&
sudo flatpak install flathub org.onlyoffice.desktopeditors -y &&
sudo flatpak install flathub org.librehunt.Organizer -y &&
sudo flatpak install flathub ch.openboard.OpenBoard -y &&
sudo flatpak install flathub org.gimp.GIMP -y &&
sudo flatpak install flathub com.jetbrains.Pycharm-Community -y &&
sudo flatpak install flathub com.jetbrains.WebStorm -y &&
sudo flatpak install flathub org.videolan.VLC -y &&
sudo flatpak install flathub edu.mit.Scratch -y &&
sudo flatpak install flathub com.skype.Client -y &&
sudo flatpak install flathub com.slack.Slack -y &&
sudo flatpak install flathub com.snes9x.Snes9x -y &&
sudo flatpak install flathub com.spotify.Client -y &&
sudo flatpak install flathub com.valvesoftware.Steam -y &&
sudo flatpak install flathub com.sublimetext.three -y &&
sudo flatpak install flathub org.telegram.desktop -y &&
sudo flatpak install flathub com.transissionbt.Transmission -y &&

## Softwares que precisam de download externo ##

cd ~/Downloads/ && 

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && 
wget -c https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb &&
wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&
wget -c https://launchpad.net/rapid/pyqt/0.9.24/+download/install.py &&
wget -c https://doc-0s-1g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0v83rmt4mij9897co9ufvor2r1jcj1am/1567965600000/07452089978596344616/*/12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && unzip 12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && cd "PHOTOGIMP V2018 - DIOLINUX" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ &&

sudo dpkg -i *.deb &&
sudo python3 install.py && # Instala o Rapid Photo Downloader

## Instalando pacotes Snap ##
 
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install insomnia && 
sudo snap install homeserver &&
sudo snap install notable --classic &&
sudo snap install simplescreenrecorder &&
sudo snap install vokoscreen-ng &&

## Wine softwares ###
## wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe

wine instalar-freenfe.exe ;

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
