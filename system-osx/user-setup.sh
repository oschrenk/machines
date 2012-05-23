#!/bin/sh

# User setup

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

# Symlink sublime user settings
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/
rm -r ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
ln -s ~/.sublime ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

# Setup ssh-agent-locker
mkdir -p ~/Library/LaunchAgents
cp /usr/local/Cellar/ssh-agent-locker/0.1.0/com.seaandco.geoff.ssh-agent-locker.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/com.seaandco.geoff.ssh-agent-locker.plist

# Disable Adobe Updater for user
echo '<?xml version="1.0" encoding="UTF-8" ?><Preferences><UpdaterPrefSchedCheckFreq>3</UpdaterPrefSchedCheckFreq><Automatic>3</Automatic></Preferences>' > ~/Library/Application\ Support/Adobe/AAMUpdater/1.0/AdobeUpdaterPrefs.dat

# Update textmate and sublime
mateup
sublimeup

