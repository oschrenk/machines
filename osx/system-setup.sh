#!/bin/sh

# Install homebrew package manager
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# Install Terminal Font
wget --directory-prefix=$HOME/Downloads/ https://gist.github.com/raw/1627888/c4e92f81f7956d4ceaee11b5a7b4c445f786dd90/Menlo-ForPowerline.ttc.zip
unzip ~/Downloads/Menlo-ForPowerline.ttc.zip -d ~/Downloads
cp ~/Downloads/Menlo-ForPowerline.ttc /Library/Fonts

# osx system defaults
./defaults/system.sh

# Install homebrew packages
./homebrew/homebrew.sh

# Add the fish to the list of legit shells
sudo bash -c "echo /usr/local/bin/fish >> /private/etc/shells"

# Install npm and the global npm modules
. ../common-system/npm.sh

# Symlink editors
ln -s /Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
