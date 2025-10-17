#!/bin/sh

#Rofi lacks vertical priority but `rofi -theme $TROFI -dmenu` vs Dmenu `dmenu -b`
TROFI="$HOME/.config/rofi/bottom.rofi"

FLIST="./OneTab.txt"

#Reorder the file before shifting over to dmenu
NAME=$(cat $FLIST | sed 's/ | /\t/g' | sed s/'.*'/'&\t&'/ | cut -f2,3,4 | rofi -theme $TROFI -dmenu -i -l 16 -p "Bookmarks" | cut -f 1) || exit 0
xdotool type "$NAME"
