#!/bin/bash

# sudo dpkg-reconfigure keyboard-configuration
sudo truncate -s 0 /etc/issue
sudo truncate -s 0 /etc/motd

sudo bash -c 'echo deb http://ftp.us.debian.org/debian trixie main >> /etc/apt/sources.list'


sudo apt install -y git
sudo apt install -y stow
git clone https://github.com/asherqnovick/dotfiles_linux/ $HOME/dotfiles
stow -d $HOME/dotfiles .


sudo apt -y update

sudo apt install -y software-properties-common
sudo apt install -y zsh
sudo apt install -y ripgrep
sudo apt install -y neovim
sudo apt install -y curl
sudo apt install -y bat
sudo apt install -y lf
sudo apt install -y fzf
sudo apt install -y chromium-browser
sudo apt install -y xinit
sudo apt install -y i3
sudo apt install -y yt-dlp
sudo apt install -y gh
sudo apt install -y golang

./reaper.sh

sudo apt -y upgrade
sudo apt -y clean
sudo apt -y autoremove

echo "exec i3" > $HOME/.initrc
chsh -s /bin/zsh

gh auth login
gh auth setup-git
