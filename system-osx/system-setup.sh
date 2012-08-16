#!/bin/sh

# Install homebrew package manager
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

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
ln -s /Applications/TextMate.app/Contents/Resources/mate /usr/local/bin/mate

# Symlink sublime user settings
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/
ln -s ~/.sublime ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

# MultimarkDown Quicklook
cd ~/Downloads
wget https://github.com/downloads/oschrenk/MMD-QuickLook/MultiMarkdown%20QuickLook.qlgenerator.zip
unzip MultiMarkdown\ QuickLook.qlgenerator.zip
sudo cp -r MultiMarkdown\ QuickLook.qlgenerator /Library/QuickLook/
rm -r MultiMarkdown\ QuickLook.qlgenerator*
qlmanage -r

# P4Merge

cat > /usr/local/bin/p4merge  <<DELIM
#!/bin/bash

for arg; do [[ $arg = /* ]] || arg=$PWD/$arg; absargs+=("$arg"); done;
/Applications/p4merge.app/Contents/Resources/launchp4merge "${absargs[@]}"
DELIM
chmod +x /usr/local/bin/p4merge