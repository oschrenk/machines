#!/bin/sh

brew tap oschrenk/homebrew-casks

function installcask() {
	brew install --cask "${@}" 2> /dev/null
}

# Fonts
installcask font-fira-code
installcask font-ia-writer-duo
installcask font-ia-writer-quattro
installcask font-iosevka
installcask font-mplus
installcask font-open-sans
installcask font-open-sans-condensed
installcask font-roboto-mono
installcask font-roboto-mono-nerd-font
installcask font-victor-mono
installcask mplus-mn-nerd-font-complete-mono

# /Applications
installcask 1password
installcask alacritty
installcask android-platform-tools
installcask bettertouchtool
installcask calibre
installcask cog
installcask dbeaver-community
installcask discord
installcask docker
installcask google-chrome
installcask grammarly
installcask grammarly-desktop
installcask hammerspoon
installcask handbrake
installcask hex-fiend
installcask iina
installcask intellij-idea-ce
installcask jdk-mission-control
installcask knockknock
installcask karabiner-elements
installcask keyboardcleantool
installcask keycastr             # shows key strokes on screen
installcask kindlegen
installcask lens                 # Kubernetes UI
installcask marp
installcask mindnode-pro
installcask omnidisksweeper
installcask paparazzi
installcask paw
installcask postman
installcask rocket               # quick emoji access
installcask secretive            # store ssh keys in secure enclave
installcask signal-beta
installcask slack
installcask spotify
installcask telegram
installcask the-hit-list
installcask the-unarchiver
installcask transmission
installcask visual-studio-code
installcask vlc
installcask xact

