#!/bin/sh

# Require homebrew package manager
if ! command -v brew &> /dev/null
then
    echo "brew could not be found. installing"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# disable analytics
brew analytics off

# Install packages
brew bundle
