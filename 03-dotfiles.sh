#!/bin/fish

# setup dotfiles
git clone https://github.com/oschrenk/dotfiles $HOME/.tilde/dotfiles
source $HOME/.tilde/dotfiles/.config/fish/functions/tilde.fish
tilde link dotfiles

# setup env
source $HOME/.tilde/dotfiles/.config/fish/env.fish

