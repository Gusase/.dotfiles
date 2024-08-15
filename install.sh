#!/bin/bash

# Zsh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Neovim
mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/nvim/init.lua ~/.config/nvim/init.lua

# Kitty
mkdir -p ~/.config/kitty
ln -sf ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# NvChad
if [ -d ~/.config/nvim ]; then
  echo "NvChad configuration already exists. Please manually copy custom configs."
else
  git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
  ln -sf ~/.dotfiles/nvim/custom ~/.config/nvim/lua/custom
fi

# Git
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
