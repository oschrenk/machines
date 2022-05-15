#!/bin/sh

# Sets "System Preferences > Dock & Menu Bar > Dock > Size
# Tested on macOS 12.4
echo "Requires 'killall Dock'"

# Size: 56 pixels
defaults write com.apple.dock 'tilesize' -int 56
