#!/bin/sh

#Rofi lacks vertical priority but `rofi -sort -theme $TROFI -dmenu` vs Dmenu `dmenu -b`
TROFI="$HOME/.config/rofi/bottom.rofi"
FLIST="./phrases.txt"

NAME=$(cat $FLIST | rofi -sort -theme $TROFI -dmenu -i -l 16 -p "Phrases" | cut -f 2 ) || exit 0
xdotool type --delay 3 "$NAME"
#Type to you later
