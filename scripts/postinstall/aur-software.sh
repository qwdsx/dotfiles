
pacman -S --needed git base-devel

mkdir "${HOME}/git" && cd "${HOME}/git"
cd "yay"
makepkg -si

pkgs=(
	"polybar"
	"ttf-mononoki"
	"llpp"
	"vscodium"
	"uim"
)

for pkg in "${pkgs[@]}"; do
    yay -S "$pkg"
done