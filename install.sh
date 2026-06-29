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
cp "$DOTFILES_DIR/home/.zshrc" ~/.zshrc

echo "Installing Chrispyware config..."
cp -r "$DOTFILES_DIR/config/chrispyware" ~/.config/

echo
echo "Done!"
