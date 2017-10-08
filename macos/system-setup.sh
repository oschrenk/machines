#!/bin/sh

# Install homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# osx system defaults
./defaults/system.sh

# Install homebrew packages
# casks before packages just because of java
./homebrew/casks.sh

# Add the fish to the list of legit shells
sudo bash -c "echo /usr/local/bin/fish >> /private/etc/shells"

# Global npm modules
. ../common-system/npm.sh

# Global pips
. ../common-system/pip.sh
