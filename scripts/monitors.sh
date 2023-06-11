#!/bin/sh

monitor=""

if [[ $HOSTNAME == "catshark" ]]; then
	exit 1
elif [[ $HOSTNAME == "sharkcat" ]]; then

	if [[ $(xrandr | grep -w "connected" | wc -l) == 1 ]]; then
		echo "found one monitor, adjusting monitors"
		xrandr --output DP-4 --primary --rate 144 --pos 0x0 --rotate normal
	elif [[ $(xrandr | grep -w "connected" | wc -l) == 2 ]]; then
		echo "found two monitors, adjusting monitors"
		#xrandr --output DP-4 --primary --rate 144 --mode 1920x1080 --output HDMI-0 --off
		#xrandr --output DP-0 --pos 1920x0 --primary --rate 144 --rotate normal --output HDMI-0 --pos 0x0 --rate 60 --rotate normal
		xrandr --output DP-4 --primary --mode 1920x1080 --rate 144.00 --output HDMI-0 --mode 1920x1080 --rate 60.00 --left-of DP-4
	fi

fi
