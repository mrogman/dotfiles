#!/bin/sh

#
# Install script for new Ubuntu/Debian workstation 
#

###########
## Setup ##
###########

cd ~

## Delete any existing dotfiles in the home directory
rm ~/.vimrc
rm ~/.zshrc
rm ~/.bash_profile
rm ~/.tmux.conf

## create dirs
mkdir ~/Workspace
mkdir -p ~/.vim/tmp #tmp dir for swap & backup files

## Create symlinks to dotfiles
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gemrc ~/.gemrc


########################
## Programs - General ##
########################

## Install git
sudo apt-get install git
#git config --global user.name "your username"
#git config --global user.email "your email"

## Install VLC
sudo apt-get install vlc

## -- Ubuntu -- ## TODO: wrap in if statement

## Install cairo dock
sudo apt-get install cairo-dock

## Tweak tools
sudo apt-get install unity-tweak-tool

## Package managers
sudo apt-get install synaptic
#sudo apt-get install 

## Install graphics tools
sudo apt-get install imagemagick
sudo apt-get install gimp
sudo apt-get install inkscape

#######################
## Zsh installations ##
#######################

## Install Zsh
sudo apt-get install zsh
mkdir ~/.zsh #make directory for zsh stuff

## Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Install zsh-autosuggestions
git clone git://github.com/tarruda/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

## Install zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting # plugin delcared in .zshrc

## Install Base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

## Install powerline & fonts
sudo apt-get install powerline


########################
## Tmux installations ##
########################

## Install Tmux
sudo apt-get install tmux

#######################
## VIM installations ##
#######################

## Install vim
sudo apt-get install vim

## Install NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/install.sh
sh ~/install.sh
rm ~/install.sh #remove install script after installing

######################################
## Java/Groovy/Grails installations ##
######################################

## Install sdkman
curl -s http://get.sdkman.io | bash

## Install java 6-8
## only for linux TODO: make conditional
sudo apt-get install openjdk-6-jdk
sudo apt-get install openjdk-7-jdk
sudo apt-get install openjdk-8-jdk

## Install groovy
#sdk install groovy #latest
sdk install groovy 2.3.9


##############################
## Ruby/Rails Installations ## 
##############################

## Install rbenv
sudo apt-get install rbenv

## Install ruby-build as a rbenv plugin
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

## Install ruby
rbenv install 2.2.3 #latest stable
rbenv global 2.2.3

## Install gems

gem install bundler
gem install rails
gem install pg
gem install thin
gem install foreman
gem install rake
gem install sinatra
gem install rubocop
gem install slim
gem install haml


##############################
## JavaScript installations ##
##############################

## Install meteor
curl https://install.meteor.com/ | sh

## Install node
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install nodejs #node from APT
sudo ln -s /usr/bin/nodejs /usr/bin/node #create symlink as many node tools use 'node'

## Install npm
sudo apt-get install npm

##########################
## Python installations ##
##########################

## Install pip
sudo apt-get install python-pip python-dev build-essential


###########################
## Finalize installation ##
###########################

## Install Neobundle plugins
vim +NeoBundleInstall +qall
