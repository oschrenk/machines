#!/bin/sh

# Install native apps
brew tap caskroom/homebrew-cask
brew install brew-cask
brew install homebrew/completions/brew-cask-completion

# cask rooms
brew tap caskroom/fonts
brew tap caskroom/versions

function installcask() {
	brew cask install --appdir=/Applications "${@}" 2> /dev/null
}

# app store

# 1password
# affinity designer
# afiinity photo
# due
# data-graph
# msgfiler
# one day
# readkit
# vox
# xcode

# external
# docker for mac

# /Applications
installcask atom
installcask ealibre
installcask cog
installcask cyberduck
installcask dash
installcask dropbox
installcask evernote
installcask google-chrome
installcask hammerspoon
installcask handbrake
installcask hexfiend
installcask hipchat
installcask inkscape
installcask intellij-idea
installcask iterm2
installcask keyboard-cleaner
installcask knockknock
installcask lunchy
installcask marked
installcask mindnode-pro
installcask mplayerx
installcask omni-graffle-pro
installcask onepassword
installcask paw
installcask reggy
installcask rescuetime
installcask sequel-pro
installcask skype
installcask slack
installcask teamviewer
installcask telegram
installcask the-unarchiver
installcask the-hit-list
installcask transmission
installcask virtualbox
installcask viscosity
installcask vlc
installcask xact
installcask xld

# Quicklook
installcask ttscoff-mmd-quicklook
