#!/bin/bash

if pgrep -x "rofi" > /dev/null; then
    pkill -x rofi
else
    rofi -modi drun -show drun -matching fuzzy -i -drun-reload-desktop-cache
fi

