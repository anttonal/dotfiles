#!/usr/bin/env bash
# waybar custom/clock: text = local time (toggle format on-click), tooltip = Helsinki + Portland in FI/US formats
state_file="${XDG_RUNTIME_DIR:-/tmp}/waybar-clock-alt"

if [ "$1" = "toggle" ]; then
  if [ -f "$state_file" ]; then rm -f "$state_file"; else touch "$state_file"; fi
  exit 0
fi

if [ -f "$state_file" ]; then
  text=$(date +'%a %d %b %H:%M')
else
  text=$(date +'%d.%m %H:%M')
fi

hel_fi=$(TZ=Europe/Helsinki date +'%d.%m.%Y %H:%M')
hel_us=$(TZ=Europe/Helsinki date +'%m/%d/%Y %I:%M %p')
pdx_fi=$(TZ=America/Los_Angeles date +'%d.%m.%Y %H:%M')
pdx_us=$(TZ=America/Los_Angeles date +'%m/%d/%Y %I:%M %p')

tooltip=$(printf 'Helsinki:  %s   |   %s\nPortland:  %s   |   %s' "$hel_fi" "$hel_us" "$pdx_fi" "$pdx_us")

jq -nc --arg text "$text" --arg tooltip "$tooltip" '{text:$text, tooltip:$tooltip}'
