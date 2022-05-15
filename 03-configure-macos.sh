#!/bin/sh

# macOS settings
echo TODO macOS settings
# ./modules/defaults/system.sh

# user settings
for FILE in ./modules/defaults/user/*.sh; do
  echo $FILE
 sh -c $FILE
done

# exclude directories from Time Machine backups
tmutil addexclusion ~/Downloads
tmutil addexclusion ~/Movies

