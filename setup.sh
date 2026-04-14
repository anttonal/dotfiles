#!/bin/bash
# Run once after cloning or on a new machine to set up machine-specific configs.

DOTFILES=$(cd "$(dirname "$0")" && pwd)

if ls /sys/class/power_supply/BAT* &>/dev/null; then
    echo "Detected: laptop"
    cp "$DOTFILES/hypr/monitors.laptop.conf" "$DOTFILES/hypr/monitors.conf"
    ln -sf "$DOTFILES/waybar/config.laptop" "$DOTFILES/waybar/config"
else
    echo "Detected: PC (no battery)"
    cp "$DOTFILES/hypr/monitors.pc.conf" "$DOTFILES/hypr/monitors.conf"
    ln -sf "$DOTFILES/waybar/config.pc" "$DOTFILES/waybar/config"
fi

echo "Done."
