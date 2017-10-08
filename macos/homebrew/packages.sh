#!/bin/sh

# taps
brew tap homebrew/dupes
brew tap homebrew/binary

## system
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
brew install blueutil
brew install duti
brew install mas        # install app store apps

## edit
brew install ctags
brew install vim
brew install neovim/neovim/neovim
brew install tmate

## command line
brew install direnv                        # auto load env
brew install fish                          # shell
brew install fzf                           # fuzzy file finder
brew install tree
brew install reattach-to-user-namespace    # tmux loses connection to login session
brew install tmux                          # terminal multiplexer
brew install tmux-cssh                     # cluster ssh

# cli is life
brew install contacts
brew install dasht
brew install khal
brew install notmuch
brew install offlineimap
brew install mutt
brew install vdirsyncer

# parsing/converting
brew install jq
brew install miller
brew install xmlstarlet
brew install dos2unix

## searching
brew install the_silver_searcher
brew install ripgrep

## tools
brew install multimarkdown
brew install parallel

## network
brew install nmap
brew install ngrep
brew install mobile-shell
brew install ssh-copy-id
brew install synergy

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

## scms
# brew install svn
# brew install mercurial
# brew install bazaar

## databases
# brew install mongodb
# brew install redis
# brew install mysql
# brew install postgresql
# brew install sqlite

## geo
# brew install proj
# brew install geos
# brew install osmosis
# brew install postgis

## a/v
brew install ffmpeg
brew install flac
brew install lame
brew install libmp3splt
brew install mp3splt
brew install youtube-dl
brew install x264
brew install xvid

## media
brew install kindlegen

## jvm
brew install maven
brew install typesafe-activator
brew install drip

## javascript
brew install node

## clojure
brew install leiningen           # build tool for clojure
brew install boot-clj            # another build tool for clojure

## scala
brew install sbt
brew install scala

## ruby
brew install rbenv
brew install ruby-build

#go
brew install go
