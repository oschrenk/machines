#!/bin/sh

brew tap homebrew/dupes
brew tap homebrew/binary

# sentaku
brew tap rcmdnk/rcmdnkpac

./homebrew-packages.sh
./homebrew-casks.sh
