#!/bin/sh
# Sources
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh

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
defaults write NSGlobalDomain AppleLanguages -array "en" "de"
defaults write NSGlobalDomain AppleLocale -string "en_DE@currency=EUR"

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
# Notification Center
## --------------------------------------------------------------------------

# Disable notification center & remove the menu bar icon
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

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
# Keyboard
## --------------------------------------------------------------------------

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set a keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 0

# Set a delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 12

## --------------------------------------------------------------------------
# Keyboard shortcuts
## --------------------------------------------------------------------------

# http://hints.macworld.com/article.php?story=20131123074223584
# @ for Command, $ for Shift, ~ for Alt and ^ for Ctrl
#
# The key of the dictionary entry is the exact name of the menu item
# If you need to drill down menu levels use \033 eg
# \033Format\033Quote Level\033Decrease

# ⌘⌥← and ⌘⌥→ to decrease/increase select next/previous tab
defaults write com.apple.Terminal NSUserKeyEquivalents -dict-add "Select Next Tab" "@~\\U2192"
defaults write com.apple.Terminal NSUserKeyEquivalents -dict-add "Select Previous Tab" "@~\\U2190"

# ⌘⌥← and ⌘⌥→ to decrease/increase quote level
defaults write -app Mail NSUserKeyEquivalents -dict-add "\033Format\033Quote Level\033Decrease" "@~\\U2190"
defaults write -app Mail NSUserKeyEquivalents -dict-add "\033Format\033Quote Level\033Increase" "@~\\U2192"
# Command Enter to send
defaults write -app Mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

## --------------------------------------------------------------------------
# Access and Input
## --------------------------------------------------------------------------

# Hot corners
# 0  : noop
# 2  : Mission Control
# 3  : Application Windows
# 4  : Desktop
# 5  : Start screen saver
# 6  : Disable screen saver
# 7  : Dashboard
# 10 : Put Display to sleep
# 11 : Launchpad
# 12 : Notification Center
# active corner top left: Mission Control
defaults write com.apple.dock wvous-tl-corner -int 2
# active corner top right: Mission Control
defaults write com.apple.dock wvous-tr-corner -int 2
# active corner bottom left: Application Windows
defaults write com.apple.dock wvous-bl-corner -int 3
# active corner bottom right: Desktop
defaults write com.apple.dock wvous-br-corner -int 4

## --------------------------------------------------------------------------
# Mouse and Trackpad
## --------------------------------------------------------------------------

# Scrolling direction
# false = up is up
# true = up is down
defaults write -g com.apple.swipescrolldirection -bool false

# Enable tap to click (Trackpad) for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Secondary click:
# Possible values: OneButton, TwoButton, TwoButtonSwapped
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string OneButton

# Smart zoom enabled, double-tap with one finger (set to 1 to enable)
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseOneFingerDoubleTapGesture -int 1

# Double-tap with two fingers to Mission Control (set to 0 to diable)
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseTwoFingerDoubleTapGesture -int 3

# Two finger horizontal swipe
# 0 = Swipe between pages with one finger
# 1 = Swipe between pages
# 2 = Swipe between full screen apps with two fingers, swipe between pages with one finger (Default Mode)
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseTwoFingerHorizSwipeGesture -int 2

## --------------------------------------------------------------------------
# Trackpad
## --------------------------------------------------------------------------

# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Tap with two fingers to emulate right click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# Enable three finger tap (look up)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2

# Disable three finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool false

# Zoom in or out
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -bool true

# Smart zoom, double-tap with two fingers
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -bool true

# Rotate
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -bool true

# Notification Center
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3

# Swipe between pages with two fingers
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true

# Swipe between full-screen apps
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 2

# Configure other multi-finger gestures
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -int 2

defaults write com.apple.dock showMissionControlGestureEnabled -bool true
defaults write com.apple.dock showAppExposeGestureEnabled -bool true
defaults write com.apple.dock showLaunchpadGestureEnabled -bool false

## --------------------------------------------------------------------------
# Finder
## --------------------------------------------------------------------------

# Finder: new window location set to $HOME/Downloads. Same as Finder > Preferences > New Finder Windows show
# For $HOME use "PfHm" and "file://${HOME}/"
# For other path use "PfLo" and "file:///foo/bar/"
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Downloads"

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

# Prevent app icons from staying in the Dock after being closed
defaults write com.apple.dock static-only -bool true

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

# Forces messages in Mail to be displayed as plain text instead of formatted (0 to reverse)
defaults write com.apple.mail PreferPlainText -bool TRUE

# Add invitations to iCal automatically
defaults write com.apple.mail AddInvitationsToICalAutomatically -bool false

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool false

# Disable send and reply animations in Mail.app
#defaults write com.apple.Mail DisableReplyAnimations -bool true
#defaults write com.apple.Mail DisableSendAnimations -bool true

# Enable Mail Bundles
defaults write com.apple.mail EnableBundles -bool true
defaults write com.apple.mail BundleCompatibilityVersion 4

## --------------------------------------------------------------------------
# iTunes (for iTunes 10.x)
## --------------------------------------------------------------------------


## --------------------------------------------------------------------------
# Terminal
## --------------------------------------------------------------------------

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use the IR_Black theme/settings by default in Terminal.app
open "./settings/IR_Black.terminal"
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
