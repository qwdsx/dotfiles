#!/bin/sh

monitor=""

if [[ $HOSTNAME == "catshark" ]]; then
	exit 1
elif [[ $HOSTNAME == "sharkcat" ]]; then

	if [[ $(xrandr | grep -w "connected" | wc -l) == 1 ]]; then
		echo "found one monitor, adjusting monitors"
		xrandr --output DP-0 --primary --rate 144 --mode 1920x1080 --pos 0x0 --rotate normal
	elif [[ $(xrandr | grep -w "connected" | wc -l) == 2 ]]; then
		echo "found two monitors, adjusting monitors"
		xrandr --output DP-0 --primary --rate 144 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-0 --rate 60 --mode 1920x1080 --pos 0x0 --rotate normal
	fi

fi
