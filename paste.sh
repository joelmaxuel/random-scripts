#!/bin/sh

#Rofi lacks vertical priority but `rofi -sort -theme $TROFI -dmenu` vs Dmenu `dmenu -b`
TROFI="$HOME/.config/rofi/bottom.rofi"

#Offer Manual list before handing off to dmenu
ACTION=$(printf "1	Output Selection Contents\n2	Output Clipboard Contents" | rofi -sort -theme $TROFI -dmenu -i -l 4 -p "Special-Paste" | cut -f 1) || exit 0

case "$ACTION" in

  #doesn't mean anything as a forked process1)
  #  #Paste Selection
  #  xclip -o -sel p
  #  ;;

  1)
    #Type out select
    ACTOUT=$(xclip -o -sel p)
    xdotool type --delay 3 $ACTOUT
    ;;

  2)
    #Type out clip
    ACTOUT=$(xclip -o -sel c)
    xdotool type --delay 3 $ACTOUT
    ;;

esac
