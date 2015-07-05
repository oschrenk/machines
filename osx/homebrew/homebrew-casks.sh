#!/bin/sh

# Install native apps
brew tap caskroom/homebrew-cask
brew install brew-cask

# cask rooms
brew tap caskroom/fonts
brew tap caskroom/versions

function installcask() {
	sudo brew cask install --appdir=/Applications "${@}" 2> /dev/null
}

# app store

# due
# data-graph
# msgfiler
# one day
# readkit
# vox
# xcode

# applications
installcask cog
installcask cyberduck
installcask dash
installcask dropbox
installcask evernote
installcask gfxcardstatus
installcask google-chrome-dev
installcask handbrake
installcask hexfiend
installcask hipchat
installcask inkscape
installcask intellij-idea
installcask iterm2
installcask kaleidoscope
installcask keyboard-cleaner
installcask marked
installcask mindnode-pro
installcask mplayerx
installcask omni-graffle-pro
installcask onepassword
installcask onyx
installcask paparazzi
installcask papers2
installcask pixelstick
installcask reggy
installcask sequel-pro
installcask skype
installcask slate
installcask spotify
installcask teamviewer
installcask the-unarchiver
installcask the-hit-list
installcask transmission
installcask virtualbox
installcask viscosity
installcask vlc
installcask vox
installcask vox-preference-pane
installcask xact
installcask xld

# Quicklook
installcask ttscoff-mmd-quicklook
