#!/bin/sh

# Install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# osx system defaults
./defaults/system.sh

# Install packages
# casks before packages just because of java
./installs/casks.sh
./installs/packages.sh
./installs/mas.sh

# Add the fish to the list of legit shells
sudo bash -c "echo /usr/local/bin/fish >> /private/etc/shells"

