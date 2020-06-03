#!/usr/local/bin/fish

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

