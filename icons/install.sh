#!/usr/bin/env sh

_BASEDIR="$( cd "$( dirname "$0" )" && pwd )"

sudo fileicon set /Applications/Alacritty.app/ $_BASEDIR/icns/alacritty.icns
sudo fileicon set /Applications/Blackmagic\ ATEM\ Switchers/ATEM\ Software\ Control.app/ $_BASEDIR/icns/atem.icns
sudo fileicon set /Applications/Boost\ Note.app/ $_BASEDIR/icns/boost-note.icns
sudo fileicon set /Applications/calibre.app $_BASEDIR/icns/calibre.icns
sudo fileicon set /Applications/Firefox.app/ $_BASEDIR/icns/firefox.icns
sudo fileicon set /Applications/Google\ Chrome.app $_BASEDIR/icns/google-chrome.icns
# the default icon is to similar to Noteplan 3, switch to a green icon
sudo fileicon set /Applications/GoToMeeting.app/ $_BASEDIR/icns/google_meet.icns
sudo fileicon set /Applications/HandBrake.app/ $_BASEDIR/icns/handbrake.icns
sudo fileicon set /Applications/IntelliJ\ IDEA\ CE.app $_BASEDIR/icns/intellij.icns
sudo fileicon set /Applications/JDownloader2.app/ $_BASEDIR/icns/jdownloader.icns
sudo fileicon set /Applications/NordVPN\ IKE.app/ $_BASEDIR/icns/nordvpn.icns
sudo fileicon set /Applications/Slack.app/ $_BASEDIR/icns/slack.icns
sudo fileicon set /Applications/Spotify.app/ $_BASEDIR/icns/spotify.icns
sudo fileicon set /Applications/Steam.app/ $_BASEDIR/icns/steam.icns
sudo fileicon set /Applications/Telegram.app/ $_BASEDIR/icns/telegram.icns
sudo fileicon set /Applications/Transmission.app/ $_BASEDIR/icns/transmission.icns
sudo fileicon set /Applications/Vimac.app/ $_BASEDIR/icns/vimac.icns
sudo fileicon set /Applications/VLC.app/ $_BASEDIR/icns/vlc.icns
sudo fileicon set /Applications/zoom.us.app $_BASEDIR/icns/zoom.icns

echo "Killing Dock"
killall Dock
