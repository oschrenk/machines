#!/bin/sh

# Sets "System Preferences > Dock & Menu Bar > Dock > Position on screen
# Tested on macOS 12.4
echo "Requires 'killall Dock'"

# Position on screen: bottom
# possible values: left|bottom|right
defaults write com.apple.dock 'orientation' -string 'bottom'
