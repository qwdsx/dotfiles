#!/bin/sh

cd ~/dotfiles

commit=$(echo -e "push:)" | rofi -i -dmenu -p "update dotfiles" -theme theme3)
[[ -z $commit ]] && exit

git add .
git commit -m "$commit"
git push

dunstify -t 3000 "updated dotfiles: $commit"