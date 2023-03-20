#
# powermenu
#

echo_array() {
    arr=("$@")
    for i in "${arr[@]}"; do
        echo "$i"
    done
}

rofi_theme="theme"

logout="log out"
shutdown="shut down"
reboot="reboot"
lock="lock"
fpb="kill wm :))))))"
options="$logout\n$shutdown\n$reboot\n$lock\n$fpb"

option=$(echo -e "$options" | rofi -i -dmenu -p "power menu" -theme $rofi_theme)
[[ -z $option ]] && exit

case $option in
    $logout)
        #if [[ "$DESKTOP_SESSION" == "bspwm" ]]; then
            bspc quit
        #elif [[ "$DESKTOP_SESSION" == "i3" ]]; then
            i3-msg exit
        #fi
        ;;
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        ${HOME}/scripts/i3lock.sh
        ;;
	$fpb)
		killall bspwm && killall bspwm
		;;
esac
