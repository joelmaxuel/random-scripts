#!/bin/sh

#Rofi lacks vertical priority but `rofi -sort -theme $TROFI -dmenu` vs Dmenu `dmenu -b`
TROFI="$HOME/.config/rofi/bottom.rofi"
FLIST="./emojis.txt"

NAME=$(cat $FLIST | rofi -sort -theme $TROFI -dmenu -i -l 16 -p "Emojis" | cut -f 1) || exit 0
xdotool type "$NAME"
