#!/bin/sh

brew tap homebrew/dupes
brew tap homebrew/binary
brew tap homebrew/dupes
brew tap jenv/jenv

./homebrew-packages.sh
./homebrew-casks.sh
./homebrew-pips.sh