#!/bin/bash

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

# Setup notes
git clone git@github.com:oschrenk/notes.git $HOME/Documents/Notes
cd $HOME/Documents/Notes
git config --local user.email oliver.schrenk@gmail.com
cd $HOME

# Setup ruby
mkdir $HOME/.rbenv
# filters non-MRI versions with hyphen, select latest
LAST_RUBY_VERSION = rbenv install -l | grep -v - | tail -1
rbenv install $LAST_RUBY_VERSION
rbenv global $LAST_RUBY_VERSION

# setup dotfiles
git clone https://github.com/oschrenk/dotfiles $HOME/tilde/.dotfiles
source $HOME/.tilde/dotfiles/.config/fish/functions/tilde.fish
tilde link dotfiles

# homebrew
# disable analytics
brew analytics off

# osx user defaults
./defaults/user.sh
./defaults/safari.sh
./defaults/chrome.sh
./defaults/dayone.sh

cp ./files/agents/* ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/*.plist
