#! /bin/bash

# Editor.
sudo pacman -S neovim

# Fonts.
sudo pacman -S nerd-fonts

# LSP.
sudo pacman -S clang
sudo pacman -S rust-analyzer
sudo pacman -S jdtls
sudo pacman -S gopls
sudo pacman -S pyright
sudo pacman -S lua-language-server

# Treesitter
sudo pacman -S tree-sitter-cli

# Install plugins.
nvim
