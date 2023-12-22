#!/bin/sh

. "$HOME/.Xresources-colors"

IN=$(pactl list sources | grep -A12 -m1 "rnnoise" | grep -i "mute")
ARR_IN=(${IN// / })
LAST_ITEM=${ARR_IN[-1]}

if [[ "$LAST_ITEM" = "yes" ]]; then
	echo "󰍭"
else
	echo "󰍬"
fi