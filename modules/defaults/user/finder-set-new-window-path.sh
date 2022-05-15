#!/bin/sh

# Finder: new window location set to $HOME/Downloads. Same as Finder > Preferences > New Finder Windows show
# For $HOME use "PfHm" and "file://${HOME}/"
# For other path use "PfLo" and "file:///foo/bar/"
echo "old 'com.apple.finder NewWindowTarget': '`defaults read com.apple.finder NewWindowTarget`'"
defaults write com.apple.finder NewWindowTarget -string "PfLo"

echo "old 'com.apple.finder NewWindowTargetPath': '`defaults read com.apple.finder NewWindowTargetPath`'"
defaults write com.apple.finder NewWindowTargetPath -string "file://$(HOME)/Downloads"
