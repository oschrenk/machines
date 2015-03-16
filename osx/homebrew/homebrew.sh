#!/bin/sh

brew tap homebrew/dupes
brew tap homebrew/binary

# ssh agent
brew tap oschrenk/formulae

# sentaku
brew tap rcmdnk/rcmdnkpac

# mpv
brew tap mpv-player/mpv

./homebrew-packages.sh
./homebrew-casks.sh
