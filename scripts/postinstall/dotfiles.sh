
cd "${HOME}"
git clone https://github.com/qwdsx/dotfiles.git
git clone https://github.com/qwdsx/wlp.git

dfs=(
	"alacritty"
	"bspwm"
	"dunst"
	"flameshot"
	"mpd"
	"mpv"
	"ncmpcpp"
	"nvim"
	"picom"
	"polybar"
	"ranger"
	"rofi"
	"sxhkd"
	"sxiv"
	"VSCodium"
	"yt-dlp"
)

dfs2=(
	".aliases"
	".bash_profile"
	".bashrc"
	".xprofile"
	".Xresources"
	".Xresources-colors"
)

for df in "${dfs[@]}"; do
	rm -rf "${HOME}/.config/$df"
	ln -s "${HOME}/dotfiles/$df" "${HOME}/.config/$df"
done

for df in "${dfs2[@]}"; do
	rm -f "${HOME}/$df"
	ln -s "${HOME}/dotfiles/$df" "${HOME}/$df"
done

ln -s "${HOME}/dotfiles/scripts" scripts
cp -r "${HOME}/dotfiles/pipewire" "${HOME}/.config/"
