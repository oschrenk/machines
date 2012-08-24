#!/bin/sh

# Install homebrew package manager
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# osx system defaults
./defaults-system.sh

# Install homebrew packages
./homebrew.sh

# Add the new bash to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"

# Disable Adobe Updater System wide
echo '<?xml version="1.0" encoding="UTF-8" ?><Preferences><Suppressed>1</Suppressed></Preferences>' > /Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0/AdobeUpdaterAdminPrefs.dat

# Install npm and the global npm modules
. ../system-common/npm.sh

# Symlink editors
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# P4Merge

cat > /usr/local/bin/p4merge  <<DELIM
#!/bin/bash

for arg; do [[ $arg = /* ]] || arg=$PWD/$arg; absargs+=("$arg"); done;
/Applications/p4merge.app/Contents/Resources/launchp4merge "${absargs[@]}"
DELIM
chmod +x /usr/local/bin/p4merge