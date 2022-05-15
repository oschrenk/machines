#!/bin/sh

# Toggles "Finder > Preferences > Advanced > "Show all filename extensions"
# Tested on macOS 12.4
echo "Requires 'killall Finder'"

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
