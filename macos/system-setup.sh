#!/bin/sh

# Install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# osx system defaults
./defaults/system.sh

# Install packages
# casks before packages just because of java
./homebrew/casks.sh
./homebrew/packages.sh
./homebrew/apps.sh

# Add the fish to the list of legit shells
sudo bash -c "echo /usr/local/bin/fish >> /private/etc/shells"

# Global npm modules
. ../common-system/npm.sh

# Global pips
# Make sure there are no system packages
pip freeze | sudo xargs pip uninstall -y
. ../common-system/pip.sh
