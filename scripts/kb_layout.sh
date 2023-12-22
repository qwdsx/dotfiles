
option=$(echo -e "fi\nus" | rofi -i -dmenu -p "change kb layout" -theme "with_prompt")
[[ -z $option ]] && exit

setxkbmap "$option"
