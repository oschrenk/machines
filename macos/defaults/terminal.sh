#!/bin/sh

## --------------------------------------------------------------------------
# Terminal
## --------------------------------------------------------------------------

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use the IR_Black theme/settings by default in Terminal.app
open "./settings/IR_Black.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.Terminal "Default Window Settings" -string "IR_Black"
defaults write com.apple.Terminal "Startup Window Settings" -string "IR_Black"

# Enable “focus follows mouse” for Terminal.app and all X11 apps
# This means you can hover over a window and start typing in it without clicking first
#defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true
