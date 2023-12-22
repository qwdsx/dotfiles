#!/bin/sh

if ! mpc >/dev/null 2>&1; then
  echo "mpd offline"
  exit 1
elif mpc status | grep -q playing; then
  current=$(mpc current | sed 's:.*/::' | grep -Po '.*(?=\.)' | awk '{print tolower($0)}')
  vol=$(mpc volume | grep "^volume")
  arr_in=(${vol// / })
  last_item=${arr_in[-1]}

  echo "$current" > ~/currentmpc.txt
#echo "$vol $current"
  ( zscroll -l 30 -d 0.2 -n t -b "vol: $last_item " "$current" ) &
else
  echo "paused"
fi

# Block until an event is emitted
mpc idle >/dev/null
