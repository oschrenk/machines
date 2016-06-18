#!/bin/sh

# User setup

# Setup fish as default shell
# Change the shell for the user
chsh -s /usr/local/bin/fish

# exclude directories from Time Machine backups
tmutil addexclusion ~/Downloads
tmutil addexclusion ~/Movies

# Create standard directories
mkdir -p ~/Projects
mkdir -p ~/Frameworks/go/bin
mkdir -p ~/Data

# Setup notes
git clone git@github.com:oschrenk/notes.git $HOME/Documents/Notes
cd $HOME/Documents/Notes
git config --local user.email oliver.schrenk@gmail.com
cd $HOME


# setup dotfiles
git clone https://github.com/oschrenk/dotfiles $HOME/tilde/.dotfiles
source $HOME/.tilde/dotfiles/config/fish/functions/tilde.fish
tilde link dotfiles

# osx user defaults
./defaults/user.sh
./defaults/safari.sh
./defaults/chrome.sh
./defaults/transmission.sh
