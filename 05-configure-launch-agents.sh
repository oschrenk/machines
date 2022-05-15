#!/bin/sh

# launch agents
for FILE in ./modules/agents/*; do
  # copy it to user's library
  cp $FILE $HOME/Library/LaunchAgents

  # enable it
  # we rely on the filename being the name of the service
  # first cut removes ./modules/agents prefix
  # seond cut removes .plist postfix
  SERVICE_NAME=$(echo $FILE | cut -d '/' -f 4- | rev | cut -d '.' -f 2- | rev)
  USER_ID=$(id -u)
  TARGET_SPECIFIER="gui/$USER_ID/$SERVICE_NAME"
  echo "Enabling $SERVICE_NAME"
  launchctl enable $TARGET_SPECIFIER
done
# launchctl load $HOME/Library/LaunchAgents/*.plist
