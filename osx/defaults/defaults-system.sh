	#!/bin/sh
# Mainly taken from https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

## --------------------------------------------------------------------------
# Hardware & Energy settings
## --------------------------------------------------------------------------

# Disable InfraredController
# sudo defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -bool false

# Disable motion sensor (I have an SSD disk)
sudo pmset -a sms 0

# Only use RAM to hibernate
# hibernatemode = 0 (binary 0000) by default on supported desktops.
# The system will not back memory up to persistent storage.
# hibernatemode = 3 (binary 0011) by default on supported portables.
# The system will store a copy of memory to persistent storage (the disk), and will power memory during sleep.
# hibernatemode = 25 (binary 0001 1001) is only settable via pmset.
# The system will store a copy of memory to persistent storage (the disk), and will remove power to memory.
# The system will restore from disk image. If you want “hibernation” – slower sleeps, slower wakes, and better battery life, you should use this setting.
sudo pmset -a hibernatemode 0

# Once you turn off hibernation you can remove the sleep image
## Remove the sleep image file to save disk space
sudo rm /Private/var/vm/sleepimage

## Create a zero-byte file instead…
sudo touch /Private/var/vm/sleepimage

## …and make sure it can’t be rewritten
sudo chflags uchg /Private/var/vm/sleepimage

# Don't put hard disks to sleep. x is time in minute
sudo pmset disksleep 0

## --------------------------------------------------------------------------
## System
## --------------------------------------------------------------------------

# Set computer name (as done via System Preferences → Sharing)
scutil --set ComputerName "OlschBook"
scutil --set HostName "OlschBook"
scutil --set LocalHostName "OlschBook"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "OlschBook"

# Restart automatically if the computer freezes
systemsetup -setrestartfreeze on

# Enable fast user switching
defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool YES

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with `Inches`, and `true` with `false`.

# --------------------------------------------------------------------------
# Localization
# --------------------------------------------------------------------------

# set time zone
/usr/sbin/systemsetup -settimezone "Europe/Berlin"

# Set clock in login screen to 24h schema
sudo defaults write /Library/Preferences/.GlobalPreferences AppleLocale "de_DE"

defaults write NSGlobalDomain AppleLanguages -array "de" "en"
defaults write NSGlobalDomain AppleLocale -string "de_DE@currency=EUR"

# AppleMeasurementUnits
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

## --------------------------------------------------------------------------
# Network
## --------------------------------------------------------------------------

# Increase TCP's initial window (IW) to 10 segments
sudo sysctl -w net.inet.tcp.slowstart_flightsize=10

## --------------------------------------------------------------------------
# Spotlight
## --------------------------------------------------------------------------

# Disable Spotlight indexing
# sudo mdutil -a -i on

# Remove Spotlight icon
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

## --------------------------------------------------------------------------
# Time Machine
## --------------------------------------------------------------------------

# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Calendar" "Contacts" "Dock" "Finder" "Mail" \
	"Safari" "SystemUIServer" "Terminal"  \
	"iTunes"; do
	killall "$app" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."