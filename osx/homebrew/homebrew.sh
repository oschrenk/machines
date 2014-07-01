#!/bin/sh

brew tap homebrew/dupes
brew tap homebrew/binary

# ssh agent
brew tap oschrenk/formulae

# jenv
brew tap jenv/jenv

# sentaku
brew tap rcmdnk/rcmdnkpac

./homebrew-packages.sh
./homebrew-casks.sh
