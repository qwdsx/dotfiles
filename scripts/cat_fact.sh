. "${HOME}/.Xresources-colors"

url=$(curl -s "https://catfact.ninja/fact?max_length=70")
fact=$(echo "$url" | jq -r '.fact' | awk '{print tolower($0)}' | sed 's/\.$//')
echo "%{F$COLOR15}$fact%{F-}"