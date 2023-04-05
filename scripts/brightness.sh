#!/bin/sh

max=$(cat /sys/class/backlight/amdgpu_bl0/max_brightness)
brightness_file="/sys/class/backlight/amdgpu_bl0/brightness"

if [[ "$1" == "max" ]]; then
	sudo echo "$max" > $brightness_file
else
	sudo echo "$1" > $brightness_file
fi
