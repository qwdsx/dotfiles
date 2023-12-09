#
# powermenu
#

uptime=$(uptime -p | sed -e 's/up //g')

log_out="log out"
shutdown="shut down"
reboot="reboot"
lock="lock"
fpb="kill wm"
options="$log_out\n$shutdown\n$reboot\n$lock\n$fpb"

option=$(echo -e "$options" | rofi -i -dmenu -p " uptime: $uptime" -theme "without_prompt")
[[ -z $option ]] && exit

case $option in
    $logout)
        bspc quit
        ;;
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        $HOME/scripts/i3lock.sh
        ;;
	$fpb)
		killall bspwm && killall bspwm
		;;
esac
