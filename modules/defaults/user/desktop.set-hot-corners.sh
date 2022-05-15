#!/bin/sh

echo "Requires "killall Dock" to take effect"

# Hot corners
# 0  : noop
# 2  : Mission Control
# 3  : Application Windows
# 4  : Desktop
# 5  : Start screen saver
# 6  : Disable screen saver
# 7  : Dashboard
# 10 : Put Display to sleep
# 11 : Launchpad
# 12 : Notification Center
# active corner top left: Mission Control
defaults write com.apple.dock wvous-tl-corner -int 2
# active corner top right: Mission Control
defaults write com.apple.dock wvous-tr-corner -int 2
# active corner bottom left: Application Windows
defaults write com.apple.dock wvous-bl-corner -int 4
# active corner bottom right: Desktop
defaults write com.apple.dock wvous-br-corner -int 12
