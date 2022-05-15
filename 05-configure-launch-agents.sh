#!/bin/sh

# launch agents
cp ./modules/agents/* ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/*.plist
