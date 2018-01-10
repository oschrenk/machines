#!/bin/sh

brew tap oschrenk/homebrew-casks

function installcask() {
	brew cask install "${@}" 2> /dev/null
}

# Fonts
brew cask install mplus-powerline

# /Applications
installcask 1password
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
installcask little-snitch
installcask marked
installcask marp
installcask mindnode-pro
installcask mplayerx
installcask muzzle               # stops os-notifications during presentations
installcask omnigraffle
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
installcask timing
installcask transmission
installcask vlc
installcask xact
installcask xld

installcask mendeley-desktop

# Quicklook
installcask ttscoff-mmd-quicklook
