#!/bin/sh

# You can list all packages installed via
# brew leaves

## system
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
brew install blueutil
brew install findutil       # g-prefixed `find`, `locate`, `updatedb`,`xargs`
brew install gawk           # GNU awk utility
brew install watch          # issue commands at regular interval
brew install watchman

## edit
brew install ctags
brew install neovim/neovim/neovim
brew install vim

## crypto
brew install age            # modern and secure encryption too

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
brew install yq

## searching
brew install the_silver_searcher

## network
brew install httrack
brew install nmap
brew install ngrep
brew install magic-wormhole
brew install mobile-shell
brew install ssh-copy-id
brew install telnet

## http
brew install curl
brew install wget

## vcs
brew install diff-so-fancy        # better looking diffs
brew install git                  # dvcs
brew install git-crypt            # encrypt secrets in git
brew install git-extras           # nice git extras
brew install git-lfs              # large file storage
brew install git-open             # open github/gitlab urls from terminal
brew install hub                  # interact with github
brew install svn                  # svn,some packages eg roboto font rely on it

## a/v
brew install asciinema
brew install exiftool
brew install ffmpeg
brew install flac
brew install imagemagick@6
brew install lame
brew install libmp3splt
brew install mp3splt
brew install sox
brew install x264
brew install xvid
brew install yt-dlp

## programming
brew install coursier/formulas/coursier # Pure Scala Artifact Fetching
brew install cloc        # count lines of code
brew install cmake       # cross-platform  build automation
brew install fnm         # node version manger
brew install go          # go
brew install maven       # jvm
brew install node        # javascript
brew install openjdk@11  # jvm
brew install python      # python
brew install poetry      # python
brew install rbenv       # ruby
brew install ruby-build  # ruby
brew install rust        # rust
brew install sbt         # scala
brew install scala       # scala
brew install tectonic    # tex
brew install typescript  # typescript
brew install yarn        # javascript

# cloud
brew install awscli
brew install derailed/k9s/k9s
brew install doctl              # Digital Ocean
brew install helm
brew install kubectl
brew install kubectx
brew install kustomize
brew install krew
brew install kube-linter
brew install minikube
brew install tfenv
brew install traefik
brew install txn2/tap/kubefwd

# macos
brew install dockutil   # configures the dock
brew install fileicon
brew install mas        # install app store apps
