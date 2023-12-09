#!/bin/sh

rofi_theme="without_prompt"

search="search"
delete="delete"
update="update"

option=$(echo -e "$search\n$delete\n$update" | rofi -i -dmenu -p " music manager" -theme $rofi_theme)
[[ -z $option ]] && exit

case $option in
    "$search")
        song=$(ls ~/Music/x3/ | rofi -i -dmenu -p "$search" -theme $rofi_theme)
        [[ -z "$song" ]] && exit

		play=$(mpc searchplay filename "$song")
		if [[ -z "$play" ]]; then
			dunstify -t 3000 "error: playlist contains on matching song"
		else
			dunstify -t 3000 "playing: $song"
		fi
		;;
    "$delete")
        song=$(ls ~/Music/qwdsx3/ | rofi -i -dmenu -p "$delete" -theme $rofi_theme)
        [[ -z $song ]] && exit
        rm ~/Music/qwdsx3/"$song"
        dunstify -t 3000 "deleted: $song"
        ;;
    "$update")
        alacritty -e yt-dlp
        rm ${HOME}/Music/**/*.webm
        mpc update
		mpc clear
		mpc add /
        dunstify -t 3000 "updated music library"
		;;
esac