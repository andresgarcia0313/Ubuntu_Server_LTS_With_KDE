#!/bin/bash
# Después de instalar ubuntu server lts se procede con lo siguiente para dejar la estación de trabajo operativa
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo apt update
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo apt full-upgrade
sudo apt install -y kde-standard
sudo apt install -y kde-config-flatpak
sudo apt install -y firefox
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y unzip
sudo apt install -y git gh
sudo apt install -y libreoffice
sudo apt install -y libreoffice-kf5
sudo apt install -y libreoffice-style-breeze
sudo apt install -y libreoffice-l10n-es
sudo apt install -y libreoffice-help-es
sudo apt install -y hunspell-es
sudo apt install -y hyphen-es
sudo apt install -y mythes-es
sudo apt install -y fonts-crosextra-carlito
sudo apt install -y fonts-crosextra-caladea
sudo apt install -y fonts-croscore
sudo apt install -y fonts-noto
sudo apt install -y fonts-liberation
sudo apt install -y fonts-dejavu
sudo apt install -y fonts-roboto
sudo apt install -y fonts-firacode
sudo apt install -y fonts-ubuntu
sudo apt install -y fonts-droid-fallback
sudo apt install -y fonts-croscore
sudo apt install -y fonts-ebgaramond
sudo apt install -y fonts-wenquanyi-wenquanyi-zenhei
sudo apt install -y kdeconnect
sudo apt install -y nextcloud-desktop
sudo apt install -y rclone
sudo apt install -y kwin-addons
sudo apt install -y blueman


sudo fc-cache -fv
flatpak install -y flathub org.gnome.Evolution
flatpak install -y flathub org.gnome.Calendar
flatpak install -y flathub us.zoom.Zoom
flatpak install -y flathub com.github.wwmm.easyeffects
flatpak install -y flathub com.github.IsmaelMartinez.teams_for_linux
flatpak install -y flathub com.rustdesk.RustDesk
wget -qO /tmp/onlyoffice.deb https://github.com/ONLYOFFICE/DesktopEditors/releases/latest/download/onlyoffice-desktopeditors_amd64.deb
sudo dpkg -i /tmp/onlyoffice.deb || sudo apt -f install -y

sudo apt install -y unattended-upgrades
sudo dpkg-reconfigure unattended-upgrades
sudo apt install -y gdm3
sudo apt install -y ttf-mscorefonts-installer

sudo systemctl set-default multi-user.target
sudo systemctl stop systemd-networkd
sudo systemctl disable systemd-networkd
sudo apt install -y network-manager
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
#Configurar renderer: NetworkManager
sudo netplan apply
nmcli device status
# nmcli device connect wlo1
# sudo systemctl set-default graphical.target
sudo reboot

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm use --lts
npm install -g npm
npm i -g bash-language-server

gh auth login
# gh repo create . --public --source=. --push

