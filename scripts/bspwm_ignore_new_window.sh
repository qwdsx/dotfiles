#!/bin/sh

bspc subscribe node_add | while read -r Event Monitor Desktop Node
do
    bspc node last -f
    # class="$(xdotool getwindowclassname "$Node")"
    # if [ "$class" = "" ]; then
    #     bspc node last -f
    # fi
done