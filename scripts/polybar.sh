#!/usr/bin/env bash

# Terminate already running bar instances
killall -9 polybar
# If all your bars have ipc enabled, you can also use 
#polybar-msg cmd quit

polybar bar1 2>&1 & disown
