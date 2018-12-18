#!/bin/sh

brew tap oschrenk/homebrew-casks

function installcask() {
	brew cask install "${@}" 2> /dev/null
}

# Fonts
brew cask install mplus-powerline

# /Applications
installcask 1password
installcask bettertouchtool
installcask calibre
installcask cog
installcask dash
installcask docker
installcask dropbox
installcask evernote
installcask google-chrome
installcask grammarly
installcask hammerspoon
installcask handbrake
installcask hex-fiend
installcask intellij-idea-ce
installcask iterm2
installcask keyboard-cleaner
installcask knockknock
installcask lunchy
installcask karabiner-elements
installcask keycastr             # shows key strokes on screen
installcask marked
installcask marp
installcask mindnode-pro
installcask mplayerx
installcask muzzle               # stops os-notifications during presentations
installcask omnigraffle
installcask paparazzi
installcask paw
installcask plan
installcask postman
installcask reggy
installcask rocket               # quick emoji access
installcask selfcontrol
installcask sequel-pro
installcask skype
installcask slack
installcask spotify
installcask telegram
installcask the-unarchiver
installcask the-hit-list
installcask timing
installcask transmission
installcask vlc
installcask xact
installcask xld

# Quicklook
installcask ttscoff-mmd-quicklook
