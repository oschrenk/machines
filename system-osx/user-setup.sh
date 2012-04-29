#!/bin/sh

# User setup

# Setup ssh-agent-locker
mkdir -p ~/Library/LaunchAgents
cp /usr/local/Cellar/ssh-agent-locker/0.1.0/com.seaandco.geoff.ssh-agent-locker.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/com.seaandco.geoff.ssh-agent-locker.plist

# Disable Adobe Updater for user
echo '<?xml version="1.0" encoding="UTF-8" ?><Preferences><UpdaterPrefSchedCheckFreq>3</UpdaterPrefSchedCheckFreq><Automatic>3</Automatic></Preferences>' > ~/Library/Application\ Support/Adobe/AAMUpdater/1.0/AdobeUpdaterPrefs.dat

# Setup common user
. ../user-common/user-setup.sh