#!/bin/sh

# Install homebrew package manager
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# Install Terminal Font
wget --directory-prefix=$HOME/Downloads/ https://gist.github.com/raw/1627888/c4e92f81f7956d4ceaee11b5a7b4c445f786dd90/Menlo-ForPowerline.ttc.zip
unzip ~/Downloads/Menlo-ForPowerline.ttc.zip -d ~/Downloads
cp ~/Downloads/Menlo-ForPowerline.ttc /Library/Fonts

# osx system defaults
./defaults-system.sh

# Install homebrew packages
./homebrew/homebrew.sh

# Add the new bash to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"

# Disable Adobe Updater System wide
echo '<?xml version="1.0" encoding="UTF-8" ?><Preferences><Suppressed>1</Suppressed></Preferences>' > /Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0/AdobeUpdaterAdminPrefs.dat

# Install npm and the global npm modules
. ../common-system/npm.sh

# Use black and white menu bar icons” setting for Dropbox
for p in /Applications/Dropbox.app/Contents/Resources/*-lep.tiff; do echo cp $p ${p%-lep.tiff}.tiff; done

# Symlink editors
ln -s /Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
