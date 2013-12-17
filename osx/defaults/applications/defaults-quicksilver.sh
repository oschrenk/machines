#!/bin/sh

defaults write com.blacktree.quicksilver "Hide Dock Icon" 1
defaults write com.blacktree.quicksilver "QSShowMenuIcon" 0
defaults write com.blacktree.quicksilver "Reset Delay" -float 1.0
defaults write com.blacktree.quicksilver "Search Delay" -float 0.2
defaults write com.blacktree.quicksilver "Use Effects" 0
defaults write com.blacktree.quicksilver "Setup Assistant Completed" 1
defaults write com.blacktree.quicksilver "QSAgreementAccepted" 1
defaults write com.blacktree.quicksilver "QSLoadImagePreviews" YES


# restart Quicksilver
killall Quicksilver
open /Applications/Quicksilver.app