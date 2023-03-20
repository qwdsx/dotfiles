#!/bin/sh
 
YAD_WIDTH=222  # 222 is minimum possible value
YAD_HEIGHT=193 # 193 is minimum possible value
 
case "$1" in
--popup)
 
    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons --posx=900 --posy=130\
        --title="calendar" --borders=0 >/dev/null &
    ;;
*)
    echo ""
    ;;
esac
