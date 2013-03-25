#!/bin/sh

# User setup

# Setup bash4 as default shell
# Change the shell for the user
chsh -s /usr/local/bin/bash

# osx userdefaults
./defaults-user.sh
./defaults-quicksilver.sh

# Create standard directories
mkdir -p ~/Projects
git clone git@github.com:oschrenk/notes.git ~/Documents/Notizen


# setup dotfiles
cd ~
deja clone oschrenk/dotfiles
deja link dotfiles

# setup sleepwatcher
ln -sfv /usr/local/opt/sleepwatcher/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist ~/Library/LaunchAgents/com.oschrenk.sleepwatcher.plist
launchctl load ~/Library/LaunchAgents/com.oschrenk.sleepwatcher.plist

# install jenv https://github.com/hikage/jenv/
git clone https://github.com/hikage/jenv.git ~/.jenv

# Symlink sublime user settings
SUBLIME_PACKAGES="$HOME/Library/Application Support/Sublime Text 2/Packages"
SUBLIME_USER_SETTINGS="$SUBLIME_PACKAGES/User"
mkdir -p "$SUBLIME_PACKAGES"
rm -rf "$SUBLIME_USER_SETTINGS"
ln -s $HOME/.sublime "$SUBLIME_USER_SETTINGS"

# Disable Adobe Updater for user
echo '<?xml version="1.0" encoding="UTF-8" ?><Preferences><UpdaterPrefSchedCheckFreq>3</UpdaterPrefSchedCheckFreq><Automatic>3</Automatic></Preferences>' > ~/Library/Application\ Support/Adobe/AAMUpdater/1.0/AdobeUpdaterPrefs.dat

# MultimarkDown Quicklook
cd ~/Downloads
git clone https://github.com/oschrenk/MMD-QuickLook
cd MMD-QuickLook
make compile
make install
qlmanage -r

# Update sublime
sublimeup

# install vim bundles via vundle
vim +BundleInstall +qall