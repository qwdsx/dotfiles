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
hs="hearthstone"
mc="minecraft"
mcsr="minecraft (speedrun)"
rw="rain world"
gt="growtopia"
lc="lethal company"
gi="genshin impact"

games="$apex\n$gt\n$hs\n$jk\n$lc\n$lol\n$mc\n$mcsr\n$rw\n$gi"

option=$(echo -e "$games" | sort | rofi -i -dmenu -p " game launcher" -theme "with_prompt")
[[ -z $option ]] && exit

case $option in
    $apex)
        steam steam://rungameid/1172470
        ;;
    $jk)
        steam steam://rungameid/1061090
        ;;
    $lol)
        leagueoflegends kill
        leagueoflegends start
        ;;
    $hs)
        env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/4
        ;;
    $mc)
        minecraft-launcher
        ;;
    $mcsr)
        multimc &
	    java -jar Downloads/ninjabrainbot.jar
	    ;;
	$rw)
		steam steam://rungameid/312520
        ;;
	$gt)
		WINEPREFIX=~/Games/growtopia/ /home/lassi/Games/growtopia/drive_c/users/lassi/AppData/Local/Growtopia/Growtopia.exe
		;;
	$lc)
		steam steam://rungameid/1966720
		;;
	$gi)
		pgrep -x wineserver && killall -9 wineserver
		WINEPREFIX=/home/lassi/Games/genshin \
		/home/lassi/Games/genshin/lutris-GE-Proton8-25-x86_64/bin/wine "/home/lassi/Games/genshin-impact/drive_c/Program Files/Genshin Impact/Genshin Impact game/GenshinImpact.exe"
		;;
esac
