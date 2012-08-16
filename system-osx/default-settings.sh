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
sudo defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -bool false

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
# sudo rm /var/vm/sleepimage

# Don't put hard disks to sleep. x is time in minute
sudo pmset disksleep 0

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true
# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

## --------------------------------------------------------------------------
## System
## --------------------------------------------------------------------------

# Set computer name (as done via System Preferences → Sharing)
scutil --set ComputerName "OlschBook Pro"
scutil --set HostName "OlschBook Pro"
scutil --set LocalHostName "OlschBook-Pro"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "MathBook-Pro"

# Restart automatically if the computer freezes
systemsetup -setrestartfreeze on

# Enable fast user switching
defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool YES

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with `Inches`, and `true` with `false`.

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

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Increase TCP's initial window (IW) to 10 segments
sudo sysctl -w net.inet.tcp.slowstart_flightsize=10

## --------------------------------------------------------------------------
# Time Machine
## --------------------------------------------------------------------------

# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

## --------------------------------------------------------------------------
# General UI/UX
## --------------------------------------------------------------------------

# Take screenshots as png
defaults write com.apple.screencapture type png

# Save screenshots to ...
defaults write com.apple.screencapture location ~/Downloads

# Disable shadow in screenshots
# defaults write com.apple.screencapture disable-shadow -bool true

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean yes

## --------------------------------------------------------------------------
# Finder
## --------------------------------------------------------------------------

# Force expanded dialogs
# These commands force expanded dialog boxes for saving (top) and printing (bottom),
# if an app doesn't already have a custom setting. Use 'false' to reverse the commands.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -boolean true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -boolean true

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Sidebar icon size: Small
defaults write -g 'NSTableViewDefaultSizeMode' -int 1

# Number of recent items: Applications: None
/usr/bin/osascript -e 'tell application "System Events" to tell appearance preferences to set recent applications limit to 0'

# Number of recent items: Documents: None
/usr/bin/osascript -e 'tell application "System Events" to tell appearance preferences to set recent documents limit to 0'

# Number of recent items: Servers: None
/usr/bin/osascript -e 'tell application "System Events" to tell appearance preferences to set recent servers limit to 0'

# Show scroll bars: Always
defaults write -g 'AppleShowScrollBars' -string 'Always'

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Hide Statusbar
defaults write com.apple.finder 'ShowStatusBar' -bool false

# Disable Sounds
# /usr/bin/defaults write com.apple.finder 'FinderSounds' -bool false

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Enable the ability to highlight text in QuickLook
defaults write com.apple.finder QLEnableTextSelection -bool TRUE

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
# defaults write com.apple.finder QuitMenuItem -bool true

# Disable the animation for showing and hiding information panels in Finder
# defaults write com.apple.finder AnimateInfoPanes -bool false

## --------------------------------------------------------------------------
# Menubar
## --------------------------------------------------------------------------

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Set Date/Time Format in Menubar like 17. Apr 17:58
defaults write com.apple.menuextra.clock DateFormat -string "d. MMM  HH:mm"

# Show fast user switching menu as: 0: Full Name, 1: Short Name, 2: Icon
defaults write -g userMenuExtraStyle -int 1

# Menu bar: hide the useless Time Machine and Volume icons
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# Show remaining battery time; hide percentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

## --------------------------------------------------------------------------
# Access and Input
## --------------------------------------------------------------------------

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Enable non-natural scrolling
defaults write -g com.apple.swipescrolldirection -bool false

# Enable access for assistive devices
echo -n 'a' | sudo tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1
sudo chmod 444 /private/var/db/.AccessibilityAPIEnabled
# TODO: avoid GUI password prompt somehow (http://apple.stackexchange.com/q/60476/4408)
#sudo osascript -e 'tell application "System Events" to set UI elements enabled to true'

# Use the IR_Black theme/settings by default in Terminal.app
open "../application-settings/IR_Black.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.Terminal "Default Window Settings" -string "IR_Black"
defaults write com.apple.Terminal "Startup Window Settings" -string "IR_Black"

# Enable “focus follows mouse” for Terminal.app and all X11 apps
# This means you can hover over a window and start typing in it without clicking first
#defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true

# active corner top left: All Windows
defaults write com.apple.dock wvous-tl-corner -int 2
# active corner top right: All Windows
defaults write com.apple.dock wvous-tr-corner -int 2
# active corner bottom left: Aplications Windows
defaults write com.apple.dock wvous-bl-corner -int 3
# active corner bottom right: Desktop
defaults write com.apple.dock wvous-br-corner -int 4

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

## --------------------------------------------------------------------------
# Dock
## --------------------------------------------------------------------------

# Size: 56 pixels
defaults write com.apple.dock 'tilesize' -int 56

# Disable magnification
defaults write com.apple.dock 'magnification' -bool false

# Lock size
defaults write com.apple.Dock size-immutable -bool true

### Position on screen: bottom
defaults write com.apple.dock 'orientation' -string 'bottom'

### Autohide
defaults write com.apple.dock 'autohide' -bool yes

### Autohide delay
defaults write com.apple.Dock autohide-delay -float 0

## --------------------------------------------------------------------------
# Desktop
## --------------------------------------------------------------------------

## change wallpaper
# sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture /Users/Shared/mynewbackground.jpg

# Show item info below desktop icons
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

## --------------------------------------------------------------------------
# Mail
## --------------------------------------------------------------------------

## Forces messages in Mail to be displayed as plain text instead of formatted (0 to reverse)
defaults write com.apple.mail PreferPlainText -bool TRUE

## Add invitations to iCal automatically
defaults write com.apple.mail AddInvitationsToICalAutomatically -bool true

## Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Disable send and reply animations in Mail.app
#defaults write com.apple.Mail DisableReplyAnimations -bool true
#defaults write com.apple.Mail DisableSendAnimations -bool true

## Enable Mail Bundles
defaults write com.apple.mail EnableBundles -bool true
defaults write com.apple.mail BundleCompatibilityVersion 4

## --------------------------------------------------------------------------
# iTunes
## --------------------------------------------------------------------------

## Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Changes arrows next to artists and albums to search your library instead of iTunes Store (0 to revert)
defaults write com.apple.iTunes invertStoreLinks 1

 # Make ⌘ + F focus the search input in iTunes
# To use these commands in another language, browse iTunes’s package contents,
# open `Contents/Resources/your-language.lproj/Localizable.strings`, and look
# for `kMenuItemFullScreen` and `kHiddenMenuItemTargetSearch`.
# for English
#defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Zielsuchfeld" "@F"

## --------------------------------------------------------------------------
# Spotlight
## --------------------------------------------------------------------------

## Disable Spotlight indexing
# sudo mdutil -a -i on

## Remove Spotlight icon
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in Finder Dock Mail Safari iTunes iCal Address\ Book SystemUIServer; do
	killall "$app" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."