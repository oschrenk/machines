#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install packages
brew bundle

# osx system defaults
./defaults/system.sh

# Add the fish to the list of legit shells
sudo bash -c "echo /usr/local/bin/fish >> /private/etc/shells"



# exclude directories from Time Machine backups
tmutil addexclusion ~/Downloads
tmutil addexclusion ~/Movies

# Frameworks
mkdir -p ~/Frameworks/go/bin

# Project diretories
mkdir -p ~/Projects/devops
mkdir -p ~/Projects/oliver

# Setup notes
git clone https://github.com/oschrenk/notes.git $HOME/Projects/oliver/notes
cd $HOME/Projects/oliver/notes
git config --local user.email oliver.schrenk@gmail.com
cd $HOME

# Setup ruby
mkdir -p $HOME/.rbenv
# filters non-MRI versions with hyphen, select latest
export LAST_RUBY_VERSION=$(rbenv install -l | grep -v - | tail -1)
rbenv install $LAST_RUBY_VERSION
rbenv global $LAST_RUBY_VERSION

# switch back to install dir
cd $DIR

# homebrew
# disable analytics
brew analytics off

# osx user defaults
./defaults/user.sh

# application defaults
./defaults/chrome.sh
./defaults/hammerspoon.sh
./defaults/mail.sh
./defaults/safari.sh
./defaults/terminal.sh

# launch agents
cp ./agents/* ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/*.plist

# Setup fish as default shell
# Change the shell for the user
sudo chsh -s /usr/local/bin/fish

# setup dotfiles
git clone https://github.com/oschrenk/dotfiles $HOME/.tilde/dotfiles
cd $HOME/.tilde/dotfiles
git config --local user.email oliver.schrenk@gmail.com

source $HOME/.tilde/dotfiles/.config/fish/functions/tilde.fish
tilde link dotfiles

source $HOME/.tilde/dotfiles/.config/fish/functions/append-to-path.fish
source $HOME/.tilde/dotfiles/.config/fish/functions/prepend-to-path.fish

# setup env
source $HOME/.tilde/dotfiles/.config/fish/env.fish

