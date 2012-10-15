#!/bin/sh
# Mainly taken from https://github.com/mathiasbynens/dotfiles/blob/master/.osx

## --------------------------------------------------------------------------
# Hardware & Energy settings
## --------------------------------------------------------------------------

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true
# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

## --------------------------------------------------------------------------
## System
## --------------------------------------------------------------------------

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with `Inches`, and `true` with `false`.
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

## --------------------------------------------------------------------------
# Spotlight
## --------------------------------------------------------------------------

### Spotlight menu keyboard shortcut: none
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Delete AppleSymbolicHotKeys:64' > /dev/null 2>&1
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Add AppleSymbolicHotKeys:64:enabled bool false'

### Spotlight window keyboard shortcut: none
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Delete AppleSymbolicHotKeys:65' > /dev/null 2>&1
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Add AppleSymbolicHotKeys:65:enabled bool false'

## --------------------------------------------------------------------------
# Time Machine
## --------------------------------------------------------------------------

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

# Enable tap to click (Trackpad) for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# active corner top left: All Windows
defaults write com.apple.dock wvous-tl-corner -int 2
# active corner top right: All Windows
defaults write com.apple.dock wvous-tr-corner -int 2
# active corner bottom left: Aplications Windows
defaults write com.apple.dock wvous-bl-corner -int 3
# active corner bottom right: Desktop
defaults write com.apple.dock wvous-br-corner -int 4

## --------------------------------------------------------------------------
# Finder
## --------------------------------------------------------------------------

# Use Column view in all Finder windows by default
# Four-letter codes for the other view modes:
# `icnv` (Icon), `clmv` (Column), `Flwv` (Cover Flow), `Nlsv` (List)
defaults write com.apple.Finder FXPreferredViewStyle -string "clmv"

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

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled 1

# Delay spring loading for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Sidebar icon size: Small
defaults write -g 'NSTableViewDefaultSizeMode' -int 1

# Number of recent items: Applications: None
/usr/bin/osascript -e 'tell application "System Events" to tell appearance preferences to set recent applications limit to 0'

# Number of recent items: Documents: None
/usr/bin/osascript -e 'tell application "System Events" to tell appearance preferences to set recent documents limit to 0'

# Number of recent items: Servers: None
/usr/bin/osascript -e 'tell application "System Events" to tell appearance preferences to set recent servers limit to 0'

# Show scroll bars: {Always, Automatic, WhenScrolling}
defaults write -g 'AppleShowScrollBars' -string 'Automatic'

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
# Dock
## --------------------------------------------------------------------------

# Size: 56 pixels
defaults write com.apple.dock 'tilesize' -int 56

# Disable magnification
defaults write com.apple.dock 'magnification' -bool false

# Lock size
defaults write com.apple.Dock size-immutable -bool true

# Position on screen: bottom
defaults write com.apple.dock 'orientation' -string 'bottom'

# Autohide
defaults write com.apple.dock 'autohide' -bool yes

# Autohide delay
defaults write com.apple.Dock autohide-delay -float 0

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

## --------------------------------------------------------------------------
# Desktop
## --------------------------------------------------------------------------

# change wallpaper
# sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture /Users/Shared/mynewbackground.jpg

# Show item info below desktop icons
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

## --------------------------------------------------------------------------
# Mail
## --------------------------------------------------------------------------

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

# Forces messages in Mail to be displayed as plain text instead of formatted (0 to reverse)
defaults write com.apple.mail PreferPlainText -bool TRUE

# Add invitations to iCal automatically
# defaults write com.apple.mail AddInvitationsToICalAutomatically -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Disable send and reply animations in Mail.app
#defaults write com.apple.Mail DisableReplyAnimations -bool true
#defaults write com.apple.Mail DisableSendAnimations -bool true

# Enable Mail Bundles
defaults write com.apple.mail EnableBundles -bool true
defaults write com.apple.mail BundleCompatibilityVersion 4

## --------------------------------------------------------------------------
# iTunes
## --------------------------------------------------------------------------

# Disable the iTunes store link arrows
defaults write com.apple.iTunes show-store-link-arrows -bool false

# Disable the Genius sidebar in iTunes
defaults write com.apple.iTunes disableGeniusSidebar -bool true

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Disable radio stations in iTunes
defaults write com.apple.iTunes disableRadio -bool true

# Make ⌘ + F focus the search input in iTunes
# To use these commands in another language, browse iTunes’s package contents,
# open `Contents/Resources/your-language.lproj/Localizable.strings`, and look
# for `kMenuItemFullScreen` and `kHiddenMenuItemTargetSearch`.
# for English
#defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Zielsuchfeld" "@F"

## --------------------------------------------------------------------------
# Terminal
## --------------------------------------------------------------------------

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use the IR_Black theme/settings by default in Terminal.app
open "./application-settings/IR_Black.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.Terminal "Default Window Settings" -string "IR_Black"
defaults write com.apple.Terminal "Startup Window Settings" -string "IR_Black"

# Enable “focus follows mouse” for Terminal.app and all X11 apps
# This means you can hover over a window and start typing in it without clicking first
#defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Calendar" "Contacts" "Dock" "Finder" "Mail" \
	"Safari" "SystemUIServer" "Terminal"  \
	"iTunes"; do
	killall "$app" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."