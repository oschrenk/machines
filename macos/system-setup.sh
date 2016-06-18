#!/bin/sh

# Install homebrew package manager
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# osx system defaults
./defaults/system.sh

# Install homebrew packages
./homebrew/packages.sh
./homebrew/casks.sh

# Add the fish to the list of legit shells
sudo bash -c "echo /usr/local/bin/fish >> /private/etc/shells"

# Global npm modules
. ../common-system/npm.sh

# Global pips
. ../common-system/pip.sh
