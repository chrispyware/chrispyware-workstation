#!/usr/bin/env bash

xrandr \
  --output LVDS2 --auto --primary \
  --output VGA2 --auto --left-of LVDS2
