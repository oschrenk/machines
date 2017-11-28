#!/bin/sh

brew tap oschrenk/homebrew-casks

function installcask() {
	brew cask install "${@}" 2> /dev/null
}

# Fonts
brew cask install mplus-powerline

# /Applications
installcask atom
installcask bettertouchtool
installcask calibre
installcask cog
installcask dash
installcask docker
installcask dropbox
installcask evernote
installcask flux
installcask google-chrome
installcask hammerspoon
installcask handbrake
installcask hex-fiend
installcask intellij-idea-ce
installcask iterm2
installcask keyboard-cleaner
installcask knockknock
installcask lunchy
installcask karabiner-elements
installcask little-snitch
installcask marked
installcask marp
installcask mindnode-pro
installcask mplayerx
installcask omnigraffle
installcask onepassword
installcask osxfuse
installcask paparazzi
installcask paw
installcask plan
installcask reggy
installcask rescuetime
installcask robo-3t
installcask selfcontrol
installcask sequel-pro
installcask skype
installcask slack
installcask spotify
installcask telegram
installcask the-unarchiver
installcask the-hit-list
installcask transmission
installcask vlc
installcask xact
installcask xld

installcask mendeley-desktop

# Quicklook
installcask ttscoff-mmd-quicklook
