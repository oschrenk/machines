#!/bin/sh

if grep -Fxq "/usr/local/bin/fish" /private/etc/shells
then
  echo "fish is already configured as acceptable shell"
else
  echo "Adding fish list of acceptable shells in /private/etc/shells"
  sudo zsh -c "echo /usr/local/bin/fish >> /private/etc/shells"
fi

# Setup fish as default shell
# Change the shell for the user
sudo chsh -s /usr/local/bin/fish

