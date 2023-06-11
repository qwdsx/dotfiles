
option=$(echo -e "fi\nus" | rofi -i -dmenu -p "change kb layout" -theme "theme")
[[ -z $option ]] && exit

setxkbmap "$option"