#!/bin/sh

filename=$(basename -- "$1")
path="$(cd "$(dirname "$1")"; pwd -P)"

mv "$path/$(basename "$1")" "$path/$(echo "$filename" | cut -f1 -d "?")"
