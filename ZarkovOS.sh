#!/bin/bash

usuario=$(whoami)
sudo pacman --noconfirm -Syu git base-devel 
pacman -S xorg --ignore xorg-server-xdmx
## Installing yay
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si --noconfirm

## Enabling firewall
sudo pacman -Syu firewalld --noconfirm
sudo systemctl enable --now firewalld.service 
## Installing some dependencies

# Installing fakeroot
sudo pacman -S binutils --noconfirm

## Installing zshell
wget -O zsh-magic-install https://raw.githubusercontent.com/Viniciusalopes/zsh-magic-install/master/zsh-magic-install &&
chmod +x zsh-magic-install
./zsh-magic-install

## i3 Basics ##
sudo pacman -S i3 --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S i3status --noconfirm
sudo pacman -S suckless-tools --noconfirm
sudo pacman -S dmenu --noconfirm

# Wallpaper manager i3 #
sudo pacman -S nitrogen --noconfirm

## Installing brave
sudo snap install brave --noconfirm

 
# Installing Needed programs #
sudo pacman -S nautilus --noconfirm
sudo pacman -S xrandr --noconfirm
sudo pacman -S arandr --noconfirm
sudo pacman -S gwenview --noconfirm
sudo pacman -S python-pip
sudo pacman -S flameshot --noconfirm
sudo pacman -S git --noconfirm
git clone https://github.com/MatheusZarkov/Zarkovi3.git


## Instalando dependencias Java
sudo pacman -S java-runtime-common --noconfirm ; sudo pacman -S java-environment-common --noconfirm ;
sudo pacman -S jre8-openjdk-headless jre8-openjdk jdk8-openjdk openjdk8-doc openjdk8-src --noconfirm ;
sudo pacman -S jre11-openjdk-headless jre11-openjdk jdk11-openjdk openjdk11-doc openjdk11-src --noconfirm ;

## instalando o Nixnote2 ## Nixnote é o melhor client para evernote
yay -Syu
yay -S nixnote2 --noconfirm

## Image and video manipulation
sudo pacman -S gimp --noconfirm

## Installing vim. Pluggins are going to be in ~/.vim/plugged
sudo pacman -S vim --noconfirm
sudo mkdir /home/$usuario/.vim/plugged
## Installing python3
sudo pacman -S python3 --noconfirm
sudo pacman -S pip --noconfirm

## Configurando o teclado para o padrão brasileiro ##
loadkeys br-abnt2 --noconfirm

## Installing fonts
#sudo mv ~/Downloads/Zarkovi3/polybar/fonts/fa-brands-400.ttf ~/.fonts &&
#sudo mv ~/Downloads/Zarkovi3/polybar/fonts/fa-solid-900.ttf ~/.fonts &&
#sudo mv ~/Downloads/Zarkovi3/polybar/fonts/fa-regular-400.ttf ~/.fonts &&
sudo pacman -S xorg-fonts-misc --noconfirm
yay -S siji-git ttf-unifont --noconfirm

## Installing polybar
yay -S polybar --noconfirm
## Instalando bash Snippets ##
git clone https://github.com/alexanderepstein/Bash-Snippets
cd Bash-Snippets/
sudo ./install.sh all

## Installing wine ##
sudo pacman -S wine winetricks wine-mono wine_gecko --noconfirm

## snapstore ##
sudo pacman -S snapd --noconfirm
sudo systemctl enable --now snapd.socket --noconfirm
sudo ln -s /var/lib/snapd/snap /snap &&
sudo snap install qsnapstore --noconfirm

## Installing Picom ##
yay -S picom-tryone-git

## Installing Lxappearence ##
sudo pacman -S lxappearance --noconfirm


## Upgrade final ##
sudo pacman -Syu --noconfirm

## Installing rust ##
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup override set stable
rustup update stable

## Installing alacritty
sudo pacman -S cmake freetype2 fontconfig pkg-config make libxcb alacritty --noconfirm
git clone https://github.com/alacritty/alacritty/
mkdir -p ${ZDOTDIR:-~}/.zsh_functions
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
cp /home/$usuario/Downloads/Zarkovi3/alacritty/extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty

## Installing Flavours
yay -S flavours --noconfirm
flavours update all

sudo cp -r /home/$usuario/Downloads/Zarkovi3/.config /home/$usuario/
sudo cp -r /home/$usuario/Downloads/Zarkovi3/.fonts /home/$usuario/
sudo cp -r /home/$usuario/Downloads/Zarkovi3/.gtkrc-2.0 /home/$usuario/
