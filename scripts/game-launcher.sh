#
# choose a game to open
#

echo_array() {
    arr=("$@")
    for i in "${arr[@]}"; do
        echo "$i"
    done
}

apex="apex legends"
jk="jump king"
lol="league of legends"
eft="escape from tarkov"
hs="hearthstone"
sdv="stardew valley"
mc="minecraft (speedrun ver)"
gt="growtopia"
games="$apex\n$eft\n$gt\n$hs\n$jk\n$lol\n$mc\n$sdv"

option=$(echo -e "$games" | rofi -i -dmenu -p "game launcher" -theme theme)
[[ -z $option ]] && exit

case $option in
    $apex)
        steam steam://rungameid/1172470
        ;;
    $eft)
        env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/3
        ;;
    $jk)
        steam steam://rungameid/1061090
        ;;
    $lol)
        env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/2
        ;;
    $hs)
        env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/4
        ;;
    $sdv)
        steam steam://rungameid/413150
        ;;
    $mc)
        multimc &
		java -jar Downloads/Ninjabrain-Bot-1.3.2.jar
        ;;
    $gt)
        wine .wine/drive_c/users/lassi/AppData/Local/Growtopia/Growtopia.exe
        ;;
esac
