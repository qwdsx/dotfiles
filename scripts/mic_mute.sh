#!/bin/sh

. "$HOME/.Xresources-colors"

IN=$(pactl list sources | grep -A12 -m1 "rnnoise" | grep -i "mute")
ARR_IN=(${IN// / })
LAST_ITEM=${ARR_IN[-1]}

VOLUME=$(pactl list sources | grep -A12 -m1 "rnnoise" | grep -i "volume: aux0" | awk '{split($0, arr," "); print arr[5]}')

if [[ "$LAST_ITEM" = "yes" ]]; then
	# echo "󰍭 0%"
	echo "muted"
else
	# echo "󰍬 $VOLUME"
	echo "$VOLUME"
fi
