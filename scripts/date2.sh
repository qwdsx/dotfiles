#!/bin/sh

. "/home/lassi/.Xresources-colors"

date=$(date +"%a %d %H:%M:%S" | awk '{print tolower($0)}')
echo "%{F$COLOR15}$date%{F-}"
