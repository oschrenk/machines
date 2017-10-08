#!/bin/sh

# cask rooms
brew tap caskroom/fonts
brew tap caskroom/versions

function installcask() {
	brew cask install "${@}" 2> /dev/null
}


# /Applications
installcask atom
installcask calibre
installcask cog
installcask cyberduck
installcask dash
installcask docker
installcask dropbox
installcask evernote
installcask google-chrome
installcask hammerspoon
installcask handbrake
installcask hexfiend
installcask hipchat
installcask intellij-idea-ce
installcask iterm2
installcask keyboard-cleaner
installcask knockknock
installcask lunchy
installcask karabiner-elements
installcask marked
installcask mindnode-pro
installcask mplayerx
installcask omni-graffle-pro
installcask onepassword
installcask osxfuse
installcask paparazzi
installcask paw
installcask reggy
installcask rescuetime
installcask robomongo
installcask sequel-pro
installcask skype
installcask slack
installcask spotify
installcask telegram
installcask the-unarchiver
installcask the-hit-list
installcask transmission
installcask viscosity
installcask vlc
installcask xact
installcask xld

# Quicklook
installcask ttscoff-mmd-quicklook
