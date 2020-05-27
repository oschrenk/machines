#!/bin/sh

# infrastructure
brew install mas        # install app store apps
brew install dockutil   # configures the dock

## system
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
brew install blueutil
brew install duti
brew install gawk       # GNU awk utility
brew install watch      # issue commands at regular interval

## edit
brew install ctags
brew install vim
brew install neovim/neovim/neovim
brew install tmate

## command line
brew install direnv                        # auto load env
brew install fish                          # shell
brew install bash                          # newer bash
brew install fzf                           # fuzzy file finder
brew install tree
brew install tmux                          # terminal multiplexer
brew install tmux-cssh                     # cluster ssh

# cli is life
brew install chrome-cli                    # control chrome via cli
brew install contacts
brew install khal
brew install mutt
brew install newsboat
brew install notmuch
brew install offlineimap
brew install signal-cli
brew install vdirsyncer

# parsing/converting
brew install jq
brew install miller
brew install xmlstarlet
brew install dos2unix

## searching
brew install the_silver_searcher
brew install ripgrep
brew install fd

## tools
brew install multimarkdown
brew install parallel

## network
brew install nmap
brew install ngrep
brew install mobile-shell
brew install ssh-copy-id
brew install telnet

## http
brew install curl
brew install httrack
brew install wget

## git
brew install git
brew install git-extras
brew install git-open
brew install diff-so-fancy
brew install hub

## a/v
brew install ffmpeg
brew install flac
brew install lame
brew install libmp3splt
brew install mp3splt
brew install sox
brew install youtube-dl
brew install x264
brew install xvid

## jvm
brew install maven
brew install drip

## javascript
brew install node
brew install yarn

## scala
brew install sbt
brew install scala

## ruby
brew install rbenv
brew install ruby-build

#go
brew install go

# cloud
brew install awscli
