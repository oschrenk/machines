#!/bin/sh

brew tap homebrew/dupes
brew tap oschrenk/homebrew-formulae

## node.js - install early to setup user in parallel
brew install node

## system
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# osx lion broke keyhchain/ssh-agent
brew install ssh-agent-locker # configuration on user level
brew install blueutil
brew install duti

## command line
brew install bash # configuration as shell happens on user level
brew install bash-completion
brew install tree
brew install z

## tools
brew install ack
brew install the_silver_searcher
brew install dos2unix
brew install multimarkdown
brew install synergy
brew install xmlstarlet

## network
brew install nmap
brew install ngrep

## http
brew install curl
brew install httrack
brew install wget

## git
brew install git
brew install git-extras
brew install git-flow
brew install git-sh
brew install hub

## scms
brew install svn
brew install mercurial
brew install bazaar

## databases
brew install mongodb
brew install redis
brew install mysql
brew install postgresql
brew install sqlite

## geo
brew install proj
brew install geos
brew install osmosis
brew install postgis

## a/v
brew install ffmpeg
brew install flac
brew install lame
brew install libmp3splt
brew install mp3splt
brew install x264
brew install xvid

## java
brew install maven
brew install maven-shell
brew install play

## haskell
brew install haskell-platform
