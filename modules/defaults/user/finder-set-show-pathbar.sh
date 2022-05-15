#!/bin/sh

# Toggles menu item View > "Show/Hide Path Bar"
echo "Requires closing of finder windows"
# Tested on macOS 12.4

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
