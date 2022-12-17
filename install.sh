#!/bin/bash

#Neovim Config
rm -rf ~/.config/nvim
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim
#Fish Config
rm -rf ~/.config/fish
ln -sf ~/.dotfiles/.config/fish ~/.config/fish
