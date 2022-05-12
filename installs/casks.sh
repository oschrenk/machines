#!/bin/sh

brew tap oschrenk/homebrew-casks

function installcask() {
	brew install --cask "${@}" 2> /dev/null
}

# Fonts
installcask mplus-mn-nerd-font-complete-mono
installcask font-victor-mono
installcask font-roboto-mono
installcask font-roboto-mono-nerd-font

# /Applications
installcask 1password
installcask alacritty
installcask bettertouchtool
installcask calibre
installcask cog
installcask discord
installcask docker
installcask google-chrome
installcask grammarly
installcask hammerspoon
installcask handbrake
installcask hex-fiend
installcask iina
installcask intellij-idea-ce
installcask knockknock
installcask karabiner-elements
installcask keyboardcleantool
installcask keycastr             # shows key strokes on screen
installcask kindlegen
installcask lens                 # Kubernetes UI
installcask marp
installcask mindnode-pro
installcask paparazzi
installcask postman
installcask rocket               # quick emoji access
installcask secretive            # store ssh keys in secure enclave
installcask signal-beta
installcask slack
installcask spotify
installcask telegram
installcask the-unarchiver
installcask the-hit-list
installcask transmission
installcask vlc
installcask xact

