#!/bin/sh

# Update
apt-get update
apt-get upgrade

# Add the new bash to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"

# Install npm and the global npm modules
. ../system-common/npm.sh

# Create default directory layout
cd $HOME
mkdir -p Projects/external

# Install git-sh
cd $HOME/Projects/external
git clone git://github.com/rtomayko/git-sh.git
cd git-sh
make
sudo make install
