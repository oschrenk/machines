#!/bin/sh

# Layout
OPS_DIR=$HOME/Projects/ops
PERSONAL_DIR=$HOME/Projects/oliver
mkdir -p $OPS_DIR
mkdir -p $PERSONAL_DIR

# Setup notes
NOTES_DIR=$PERSONAL_DIR/notes
if [ -d "$NOTES_DIR/.git" ]; then
  echo "Syncing $NOTES_DIR"
  git -C "$NOTES_DIR" pull --rebase
else
  git clone https://github.com/oschrenk/notes.git $NOTES_DIR
  git -C "$NOTES_DIR" config --local user.email oliver.schrenk@gmail.com
fi
