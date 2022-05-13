#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# exclude directories from Time Machine backups
tmutil addexclusion ~/Downloads
tmutil addexclusion ~/Movies

# Frameworks
mkdir -p ~/Frameworks/go/bin

# Project diretories
mkdir -p ~/Projects/devops
mkdir -p ~/Projects/external

# Create Wiki
mkdir -p ~/Documents/Wiki

# Setup notes
git clone https://github.com/oschrenk/notes.git $HOME/Documents/Notes
cd $HOME/Documents/Notes
git config --local user.email oliver.schrenk@gmail.com
cd $HOME

# Setup ruby
mkdir -p $HOME/.rbenv
# filters non-MRI versions with hyphen, select latest
export LAST_RUBY_VERSION=$(rbenv install -l | grep -v - | tail -1)
rbenv install $LAST_RUBY_VERSION
rbenv global $LAST_RUBY_VERSION

# switch back to install dir
cd $DIR

# setup user bins
./installs/go.sh
./installs/npm.sh

# homebrew
# disable analytics
brew analytics off

# osx user defaults
./defaults/user.sh

# application defaults
./defaults/chrome.sh
./defaults/hammerspoon.sh
./defaults/mail.sh
./defaults/safari.sh
./defaults/terminal.sh

# launch agents
cp ./agents/* ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/*.plist


# Setup fish as default shell
# Change the shell for the user
sudo chsh -s /usr/local/bin/fish


