#!/bin/sh


#
# Install script for new UNIX workstation
#
#


###########
## Setup ##
###########

## create dirs
mkdir dotfiles #TODO: make conditional
mkdir Workspace #TODO: make conditional 


########################
## Programs - General ##
########################

# install imagemagick


#######################
## Zsh installations ##
#######################

# Install Zsh
mkdir ~/.zsh #make directory for zsh plugins


# Install OhMyZsh

#

# Install zsh-autosuggestions
git clone git://github.com/tarruda/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting # plugin delcared in .zshrc

# install Base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# install powerline & fonts


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


