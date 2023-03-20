
pacman -S --needed git base-devel

mkdir "${HOME}/git" && cd "${HOME}/git"
cd "yay"
makepkg -si

pkgs=(
	"polybar"
	"ttf-mononoki"
	"llpp"
	"vscodium"
)

for pkg in "${pkgs[@]}"; do
    yay -S "$pkg"
done