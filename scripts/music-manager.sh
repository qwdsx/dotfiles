#!/bin/sh

rofi_theme="theme"
playlist_url="https://www.youtube.com/playlist?list=PLuZPZXDmytnFez6pV1ZXpFMauG6bwH-uz"

option=$(echo -e "search\ndelete\nupdate" | rofi -i -dmenu -p "music manager" -theme $rofi_theme)
[[ -z $option ]] && exit

case $option in
    "search")
        song=$(ls ~/Music/qwdsx3/ | rofi -i -dmenu -p "search" -theme $rofi_theme)
        [[ -z "$song" ]] && exit
		play=$(mpc searchplay filename "$song")

		if [[ -z "$play" ]]; then
			dunstify -t 3000 "error: playlist contains on matching song"
		else
			dunstify -t 3000 "playing: $song"
		fi
		;;
    "delete")
        song=$(ls ~/Music/qwdsx3/ | rofi -i -dmenu -p "delete" -theme $rofi_theme)
        [[ -z $song ]] && exit
        rm ~/Music/qwdsx3/"$song"
        dunstify -t 3000 "deleted: $song"
        ;;
    "update")
        playlist=$(yt-dlp $playlist_url --get-title --flat-playlist)
        echo "$playlist" > ${HOME}/scripts/playlist.txt
        node ${HOME}/scripts/music-manager-helper.js
        alacritty -e yt-dlp
        rm ${HOME}/Music/qwdsx3/*.webm
		mpc update
		mpc clear
		mpc add /
        dunstify -t 3000 "updated music library"
        ;;
esac
