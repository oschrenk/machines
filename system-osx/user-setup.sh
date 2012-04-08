#!/bin/sh

# User setup

# Setup ssh-agent-locker
mkdir -p ~/Library/LaunchAgents
cp /usr/local/Cellar/ssh-agent-locker/0.1.0/com.seaandco.geoff.ssh-agent-locker.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/com.seaandco.geoff.ssh-agent-locker.plist

# Setup common user
. ../user-common/user-setup.sh