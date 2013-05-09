#!/bin/sh

# Update
apt-get update
apt-get upgrade

# Add the new bash to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"

# Install npm and the global npm modules
. ../system-common/npm.sh