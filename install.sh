#!/bin/sh


#
# Install script for new Ubuntu/Debian workstation 
#
#


###########
## Setup ##
###########

## create dirs
mkdir dotfiles #TODO: make conditional
mkdir Workspace #TODO: make conditional 

## Delete any existing dotfiles in the home directory
rm ~/.vimrc
rm ~/.zshrc
rm ~/.bash_profile
rm ~/.bashrc
rm ~/.tmux.conf

## Create symlinks to dotfiles
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf


########################
## Programs - General ##
########################

## Install git
sudo apt-get install git
#git config --global user.name "your username"
#git config --global user.email "your email"

## Install imagemagick
sudo apt-get install imagemagick


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



#######################
## VIM installations ##
#######################



######################################
## Java/Groovy/Grails installations ##
######################################

# install sdkman
curl -s http://get.sdkman.io | bash

# install java 6-8
# only for linux TODO: make conditional
sudo apt-get install openjdk6
sudo apt-get install openjdk7
sudo apt-get install openjdk8

# install groovy
sdk install groovy #latest
sdk install groovy 2.3.9


##############################
## Ruby/Rails Installations ## 
##############################

# install rbenv
sudo apt-get install rbenv

# install ruby
rbenv install (version)
rbenv install (version)

## Install gems

gem install x #bundle
gem install y #rake
gem install z #sinatra
gem install a #
gem install b #

##############################
## JavaScript installations ##
##############################

# install meteor

# install node


###########################
## Python installations ##
##########################

# install pip


