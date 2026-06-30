#!/usr/bin/env bash

set -e

echo "==============================================================="
echo " Chrispyware Workstation Bootstrap"
echo "==============================================================="

sudo pacman -Syu --needed \
  git \
  openssh \
  zsh \
  sudo \
  nano \
  xfce4-terminal \
  xorg \
  xorg-xinit \
  i3-wm \
  i3status \
  dmenu \
  networkmanager \
  man-db \
  man-pages \
  wget \
  curl \
  unzip \
  zip \
  htop \
  btop \
  tree \
  ripgrep \
  fzf \
  ttf-jetbrains-mono-nerd \
  feh \
  rofi \
  polybar \
  fastfetch \
  firefox \
  xclip \
  materia-gtk-theme \
  dunst \
  libnotify \
  scrot \
  picom \
  code \
  jdk21-openjdk \
  maven \
  gradle \
  nodejs \
  npm
