#!/usr/bin/env bash

set -e

echo "==============================================================="
echo " Chrispyware Workstation Installer"
echo "==============================================================="
echo

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from:"
echo "$DOTFILES_DIR"
echo

mkdir -p ~/.config

echo "Installing .zshrc..."
cp "$DOTFILES_DIR/dotfiles/home/.zshrc" ~/.zshrc

echo "Installing i3 config..."
cp "$DOTFILES_DIR/dotfiles/config/i3/config" ~/.config/i3/config

echo "Installing Chrispyware config..."
cp -r "$DOTFILES_DIR/dotfiles/config/chrispyware" ~/.config/

echo
echo "Done!"
