#!/bin/sh

# Setup bash4 as default shell
# Change the shell for the user
chsh -s /usr/local/bin/bash

# Create default Development directory layout
mkdir -p ~/Development/projects

cd ~/Development
git clone git@github.com:oschrenk/notes.git
git clone git@github.com:oschrenk/scripts.git

# setup dotfiles	
cd ~
deja clone oschrenk/dotfiles
deja link dotfiles