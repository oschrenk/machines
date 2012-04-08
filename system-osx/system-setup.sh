#!/bin/sh

# Install homebrew package manager
ruby -e "$(curl -fsSLk https://gist.github.com/raw/323731/install_homebrew.rb)"

# Install homebrew packages
./homebrew.sh

# Add the new bash to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"

# Install npm and the global npm modules
. ../system-common/npm.sh