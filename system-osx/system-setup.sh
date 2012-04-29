#!/bin/sh

# Install homebrew package manager
ruby -e "$(curl -fsSLk https://gist.github.com/raw/323731/install_homebrew.rb)"

# Install homebrew packages
./homebrew.sh

# Add the new bash to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"

# Install npm and the global npm modules
. ../system-common/npm.sh

# Install haskell packages
. ../system-common/cabal.sh

# Symlink editors
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
ln -s /Applications/TextMate.app/Contents/Resources/mate /usr/local/bin/mate