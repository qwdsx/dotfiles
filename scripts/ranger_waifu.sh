#!/bin/sh

if [ ! -d $HOME/waifu_pics ]; then
	mkdir $HOME/waifu_pics
fi

waifu2x-converter-cpp --scale-ratio 2 -i "$1" -o "$HOME/waifu_pics/$1"
