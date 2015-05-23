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
git clone git@github.com:oschrenk/notes.git ~/Documents/Notes

# setup dotfiles
git clone https://github.com/oschrenk/dotfiles $HOME/.tilde/.dotfiles
# bootstrap `tilde`
ln -nsf $HOME/.tilde/dotfiles/.config $HOME/.config
source $HOME/.config/fish/functions/tilde.fish
tilde link dotfiles

# setup sleepwatcher
ln -sfv /usr/local/opt/sleepwatcher/*.plist ~/Library/LaunchAgents
launchctl load $HOME/Library/LaunchAgents/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist

# osx user defaults
./defaults/user.sh
./defaults/safari.sh
