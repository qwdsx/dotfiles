#!/bin/sh

TYPE=$(file -b --mime-type "$1")
#echo "$TYPE"
xclip -sel clip -t "image/png" -i "$1"
