#!/bin/sh

# Toggles menu item View > "Show/Hide Status Bar"
echo "Requires closing of finder windows"
# Tested on macOS 12.4

# Hide Statusbar
defaults write com.apple.finder 'ShowStatusBar' -bool false
