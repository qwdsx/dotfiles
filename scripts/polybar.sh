#!/usr/bin/env bash

# Terminate already running bar instances
killall -9 polybar
# If all your bars have ipc enabled, you can also use 
#polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example 2>&1 & disown
#polybar example2 2>&1 & disown

echo "Bars launched..."