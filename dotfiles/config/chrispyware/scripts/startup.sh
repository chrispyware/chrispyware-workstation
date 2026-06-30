#!/usr/bin/env bash

# Configure displays first
~/.config/chrispyware/scripts/display.sh

# Give X a moment to apply the new layout
sleep 0.5

# Restore wallpaper
~/.config/chrispyware/scripts/wallpaper.sh

# Restart Polybar
~/.config/chrispyware/scripts/polybar.sh

# Restart Picom
pkill picom 2>/dev/null
picom --config ~/.config/picom/picom.conf &

# Restart Dunst
pkill dunst 2>/dev/null
dunst &
