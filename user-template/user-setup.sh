#!/bin/sh

# Setup bash4 as default shell
# Change the shell for the user
chsh -s /usr/local/bin/bash

# setup dotfiles
cd ~
git clone git@github.com:oschrenk/scripts.git .scripts

deja clone oschrenk/dotfiles
deja link dotfiles