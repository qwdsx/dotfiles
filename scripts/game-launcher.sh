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

games="$apex\n$hs\n$jk\n$lol\n$mc\n$mcsr\n$rw"

option=$(echo -e "$games" | rofi -i -dmenu -p "game launcher" -theme theme)
[[ -z $option ]] && exit

case $option in
    $apex)
        steam steam://rungameid/1172470
        ;;
    $jk)
        steam steam://rungameid/1061090
        ;;
    $lol)
        # leagueoflegends kill
        # leagueoflegends start
	    python3 ~/Games/leagueoflegends/launch-league-of-legends.py
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
esac
