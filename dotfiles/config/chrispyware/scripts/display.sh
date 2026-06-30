#!/usr/bin/env bash

# Wait until X has finished enumerating displays.
for i in {1..20}; do
    LAPTOP=$(xrandr | awk '/^(LVDS|eDP)/ && / connected/ {print $1; exit}')
    EXTERNAL=$(xrandr | awk '/^(VGA|HDMI|DP)/ && / connected/ {print $1; exit}')

    if [[ -n "$LAPTOP" ]]; then
        break
    fi

    sleep 0.25
done

# Configure displays if an external monitor exists.
if [[ -n "$EXTERNAL" ]]; then
    xrandr \
        --output "$LAPTOP" --mode 1280x800 --primary \
        --output "$EXTERNAL" --mode 1680x1050 --left-of "$LAPTOP"
else
    xrandr \
        --output "$LAPTOP" --mode 1280x800 --primary
fi
