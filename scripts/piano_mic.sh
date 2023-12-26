#!/bin/sh

rofi_theme="with_prompt"
id_file=$HOME/scripts/pianomic.txt

option=$(echo -e "load\nunload" | rofi -i -dmenu -p "load/unload sink" -theme $rofi_theme)
[[ -z $option ]] && exit

case $option in
	"load")
		module1=$(pactl load-module module-null-sink media.class=Audio/Sink sink_name=my-combined-sink channel_map=stereo)
		module2=$(pactl load-module module-null-sink media.class=Audio/Source/Virtual sink_name=my-virtualmic channel_map=front-left,front-right)
		> "$id_file"
		echo "$module1" >> "$id_file"
		echo "$module2" >> "$id_file"
		echo "loaded sinks"
		;;
	"unload")
		while read -r line;
		do
			pactl unload-module "$line"
			echo "unloaded sink id $line"
		done < "$id_file"
		;;
esac
