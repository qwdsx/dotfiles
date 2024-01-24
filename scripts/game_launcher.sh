#
# choose a game to open
#

echo_array() {
    arr=("$@")
    for i in "${arr[@]}"; do
        echo "$i"
    done
}

rofi_theme="with_prompt"

apex="apex legends"
jk="jump king"
lol="league of legends"
mc="minecraft"
mcsr="minecraft (speedrun)"
rw="rain world"
lc="lethal company"
gi="genshin impact"

games="$apex\n$gt\n$hs\n$jk\n$lc\n$lol\n$mc\n$mcsr\n$rw\n$gi"

option=$(echo -e "$games" | sort | rofi -i -dmenu -p " game launcher" -theme $rofi_theme)
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
        # WINEDEBUG=-all WINEPREFIX=/home/lassi/.local/share/leagueoflegends/ /home/lassi/Downloads/lutris-GE-Proton8-27-LoL-x86_64/bin/wine "/home/lassi/.local/share/leagueoflegends/drive_c/Riot Games/League of Legends/LeagueClient.exe"
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
	$lc)
		steam steam://rungameid/1966720
		;;
	$gi)
		options="game\nupdate"
		option=$(echo -e "$options" | sort | rofi -i -dmenu -p "genshin launcher" -theme $rofi_theme)
		[[ -z $option ]] && exit
		
		case $option in
			"game")
				pgrep -x wineserver && killall -9 wineserver
				WINEPREFIX=/home/lassi/Games/genshin \
        		DXVK_HUG="fps,frametimes" \
				/home/lassi/Games/genshin/lutris-GE-Proton8-25-x86_64/bin/wine "/home/lassi/Games/genshin/drive_c/Program Files/Genshin Impact/Genshin Impact game/GenshinImpact.exe"
				;;
			"update")
				pgrep -x wineserver && killall -9 wineserver
				WINEPREFIX=/home/lassi/Games/genshin \
        		DXVK_HUG="fps,frametimes" \
				/home/lassi/Games/genshin/lutris-GE-Proton8-25-x86_64/bin/wine "/home/lassi/Games/genshin/drive_c/Program Files/Genshin Impact/launcher.exe"
				;;
		esac
		;;
esac
