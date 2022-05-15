#!/bin/sh

# No UI available
# Tested on macOS 12.4
echo "Requires 'killall Dock'"

# Autohide delay in seconds
defaults write com.apple.Dock autohide-delay -float 0
