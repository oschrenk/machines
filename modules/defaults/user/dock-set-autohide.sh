#!/bin/sh

# Sets "System Preferences > Dock & Menu Bar > Dock > Automatically hide and shiw the Dock
# Tested on macOS 12.4
echo "Requires 'killall Dock'"

# Autohide
defaults write com.apple.dock 'autohide' -bool yes
