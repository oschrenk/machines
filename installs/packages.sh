#!/bin/sh

## system
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
brew install blueutil
brew install findutil       # g-prefixed `find`, `locate`, `updatedb`,`xargs`
brew install gawk           # GNU awk utility
brew install watch          # issue commands at regular interval

## edit
brew install ctags
brew install neovim/neovim/neovim
brew install vim

## command line
brew install chrome-cli     # control chrome via cli
brew install direnv         # auto load env
brew install fish           # shell
brew install bash           # newer bash
brew install fzf            # fuzzy file finder
brew install pandoc         # document converter,
brew install tmux           # terminal multiplexer
brew install tmuxp          # tmux session manager

# parsing/converting
brew install dos2unix
brew install jq
brew install miller
brew install xmlstarlet

## searching
brew install the_silver_searcher

## network
brew install nmap
brew install ngrep
brew install mobile-shell
brew install ssh-copy-id
brew install telnet

## http
brew install curl
brew install wget

## vcs
brew install diff-so-fancy        # better looking diffs
brew install git                  # dvcs
brew install git-extras           # nice git extras
brew install git-lfs              # large file storage
brew install hub                  # interact with github
brew install svn                  # svn,some packages eg roboto font rely on it

## a/v
brew install ffmpeg
brew install flac
brew install lame
brew install libmp3splt
brew install mp3splt
brew install sox
brew install x264
brew install xvid
brew install youtube-dl

## programming
brew install openjdk@11  # jvm
brew install maven       # jvm
brew install fnm         # node version manger
brew install node        # javascript
brew install yarn        # javascript
brew install sbt         # scala
brew install scala       # scala
brew install rbenv       # ruby
brew install ruby-build  # ruby
brew install go          # go
brew install python      # python
brew install tectonic    # tex

# cloud
brew install awscli
brew install derailed/k9s/k9s
brew install kubectl
brew install kubectx
brew install minikube

# macos
brew install dockutil   # configures the dock
brew install fileicon
brew install mas        # install app store apps
