#!/bin/sh

ffmpeg -i "$1" -vcodec libx265 -crf 28 "$1-compressed.mkv"
