#!/usr/bin/env bash

set -e

echo "==============================================================="
echo " Chrispyware Workstation Installer"
echo "==============================================================="
echo

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Chrispyware Workstation configs..."
echo

echo "Installing dotfiles from:"
echo "$DOTFILES_DIR"
echo

mkdir -p ~/.config/i3
mkdir -p ~/.config/rofi
mkdir -p ~/.config/polybar
mkdir -p ~/.config/fastfetch
mkdir -p ~/.config/chrispyware

echo "Installing .zshrc..."
cp "$DOTFILES_DIR/dotfiles/home/.zshrc" ~/.zshrc

echo "Installing i3 config..."
cp "$DOTFILES_DIR/dotfiles/config/i3/config" ~/.config/i3/config

echo "Installing Rofi config..."
cp "$DOTFILES_DIR/dotfiles/config/rofi/config.rasi" ~/.config/rofi/config.rasi

echo "Installing Polybar config..."
cp "$DOTFILES_DIR/dotfiles/config/polybar/config.ini" ~/.config/polybar/config.ini

echo "Installing fastfetch config..."
cp "$DOTFILES_DIR/dotfiles/config/fastfetch/config.jsonc" ~/.config/fastfetch/config.jsonc

echo "Installing Chrispyware config..."
cp -r "$DOTFILES_DIR/dotfiles/config/chrispyware" ~/.config/

echo
echo "Done!"
