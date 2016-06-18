#!/bin/sh

# Install native apps
brew tap caskroom/homebrew-cask
brew install brew-cask
brew install homebrew/completions/brew-cask-completion

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


# /Applications
installcask cog
installcask cyberduck
installcask dash
installcask dropbox
installcask evernote
installcask google-chrome
installcask handbrake
installcask hexfiend
installcask hipchat
installcask inkscape
installcask intellij-idea
installcask iterm2
installcask keyboard-cleaner
installcask marked
installcask mindnode-pro
installcask mplayerx
installcask omni-graffle-pro
installcask onepassword
installcask reggy
installcask sequel-pro
installcask skype
installcask teamviewer
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
