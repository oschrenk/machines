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

# applications
installcask bettertouchtool
installcask bodega
installcask cheat-sheet
installcask cocoa-rest-client
installcask cog
installcask dash
installcask dropbox
installcask eclipse-ide
installcask evernote
installcask firefox
installcask gfxcardstatus
installcask gimp
installcask gitx-rowanj
installcask google-chrome
installcask handbrake
installcask hexfiend
installcask inkscape
installcask i-stumbler
installcask intellij-community
installcask kaleidoscope
installcask keyboard-cleaner
installcask libre-office
installcask marked2
installcask mou
installcask mplayerx
installcask omni-graffle-pro
installcask onepassword
installcask onyx
installcask paparazzi
installcask papers
installcask quicksilver
installcask reggy
installcask rdio
installcask sequel-pro
installcask skype
installcask spotify
installcask sublime-text-3
installcask the-unarchiver
installcask the-hit-list
installcask transmission
installcask virtualbox
installcask vlc
installcask xld
