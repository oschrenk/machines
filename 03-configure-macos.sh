#!/bin/sh

# macOS settings
echo TODO macOS settings
# ./modules/defaults/system.sh

# user settings
echo TODO user settings
# ./modules/defaults/user.sh

# exclude directories from Time Machine backups
tmutil addexclusion ~/Downloads
tmutil addexclusion ~/Movies

