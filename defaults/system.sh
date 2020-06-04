#!/bin/sh

# Sources
# https://github.com/hjuutilainen/dotfiles/blob/master/bin/macos-system-defaults.sh
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

## --------------------------------------------------------------------------
## Name
## --------------------------------------------------------------------------

# Set computer name (as done via System Preferences → Sharing)
scutil --set ComputerName "OlschBook"
scutil --set HostName "OlschBook"
scutil --set LocalHostName "OlschBook"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "OlschBook"

# ==============================================
# Energy settings
# ==============================================

# From https://github.com/rtrouton/rtrouton_scripts/blob/master/rtrouton_scripts/setting_energy_saver_settings/powersettings.sh

# Set separate power management settings for desktops and laptops
#
# If laptop, the power management settings for
#   "Battery" are set to have the
#     computer sleeps in 15 minutes,
#     disk will spin down in 10 minutes,
#     the display will sleep in 5 minutes and
#     the display itself will dim to half-brightness before sleeping.
#   "Charger" are set to have the
#     computer never sleep,
#     the disk doesn't spin down,
#     the display sleeps after 30 minutes and the display dims before sleeping.
#

# If it's not a laptop (i.e. a desktop), the power management settings are set
#   to have the computer never sleep,
#   the disk doesn't spin down,
#   the display sleeps after 30 minutes and the display dims before sleeping.
#
IS_LAPTOP=$(/usr/sbin/system_profiler SPHardwareDataType | grep "Model Identifier" | grep "Book")
if [[ "$IS_LAPTOP" != "" ]]; then
    pmset -b sleep 15 disksleep 10 displaysleep 5 halfdim 1
    pmset -c sleep 0 disksleep 0 displaysleep 30 halfdim 1
else
    pmset sleep 0 disksleep 0 displaysleep 30 halfdim 1
fi

# ==============================================
# Login window
# ==============================================

# Show shut down etc. buttons
sudo defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool false

# Allow fast user switching
sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool true

# ==============================================
# Localization
# ==============================================
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with `Inches`, and `true` with `false`.

# set time
/usr/sbin/systemsetup -settimezone "Europe/Amsterdam"
/usr/sbin/systemsetup -setnetworktimeserver "time.euro.apple.com"
/usr/sbin/systemsetup -setusingnetworktime on
/usr/sbin/sysadminctl -automaticTime on

# Set clock in login screen to 24h schema
sudo defaults write /Library/Preferences/.GlobalPreferences AppleLocale "de_DE"

defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleLocale -string "en_DE@currency=EUR"

# AppleMeasurementUnits
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# ==============================================
# Software update
# ==============================================

# Enable automatic update check and download
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# Enable app update installs
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true

# Enable system data files and security update installs
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool true
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool true

# Enable OS X update installs
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool true

# ==============================================
# Set keyboard & touchpad preferences
# ==============================================
# Enable key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool FALSE

# Set a keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set a delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Disable smart quotes and smart dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable auto correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Scrolling direction
# false = up is up
# true = up is down // natural
# Set scroll direction
sudo defaults write /Library/Preferences/.GlobalPreferences com.apple.swipescrolldirection -bool false

# ==============================================
# Network
# ==============================================

# Increase TCP's initial window (IW) to 10 segments
sudo sysctl -w net.inet.tcp.slowstart_flightsize=10

echo "Done. Note that some of these changes require a logout/restart to take effect."
