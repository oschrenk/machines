#!/bin/sh

# Sets "System Preferences > Dock & Menu Bar > Dock > Magnification
# Tested on macOS 12.4
echo "Requires 'killall Dock'"

# Disable magnification
defaults write com.apple.dock 'magnification' -bool false
