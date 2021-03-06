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

## command line
brew install direnv                        # auto load env
brew install fish                          # shell
brew install bash                          # newer bash
brew install fzf                           # fuzzy file finder
brew install tmux                          # terminal multiplexer

# cli is life
brew install chrome-cli                    # control chrome via cli
brew install contacts
brew install mutt
brew install newsboat
brew install notmuch
brew install offlineimap
brew install pandoc
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

## network
brew install nmap
brew install ngrep
brew install mobile-shell
brew install ssh-copy-id
brew tap filippo.io/yubikey-agent https://filippo.io/yubikey-agent
brew install yubikey-agent
brew install telnet

## http
brew install curl
brew install wget

## git
brew install git                           # dvcs
brew install git-extras                    # nice git extras
brew install git-lfs                       # large file storage
brew install diff-so-fancy                 # better looking diffs
brew install hub                           # interact with github
brew install zaquestion/tap/lab            # interact with gitlab

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
brew install openjdk@11
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

# go
brew install go

# python
brew install python

# tex
brew install tectonic

# cloud
brew install awscli
brew install minikube
brew install kubectl
brew install kubectx
brew install derailed/k9s/k9s

# macos
brew install fileicon
