#!/bin/sh

# Install native apps
brew tap caskroom/homebrew-cask
brew install brew-cask
brew tap caskroom/fonts

# install to global directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

function installcask() {
	sudo brew cask install "${@}" 2> /dev/null
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
installcask actions-server
installcask bettertouchtool
installcask cheat-sheet
installcask cocoa-rest-client
installcask cog
installcask dash
installcask dropbox
installcask evernote
installcask gfxcardstatus
installcask gitx-rowanj
installcask google-chrome
installcask handbrake
installcask hexfiend
installcask inkscape
installcask intellij-idea
installcask kaleidoscope
installcask keyboard-cleaner
installcask marked2
installcask mindnode-pro
installcask mplayerx
installcask omni-graffle-pro
installcask onepassword
installcask onyx
installcask paparazzi
installcask papers
installcask pixelstick
installcask quicksilver
installcask reggy
installcask sequel-pro
installcask skype
installcask slate
installcask spotify
installcask sublime-text-3
installcask teamviewer
installcask the-unarchiver
installcask the-hit-list
installcask transmission
installcask virtualbox
installcask viscosity
installcask vlc
installcask vox-preference-pane
installcask xact
installcask xld
