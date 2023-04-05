
pacman -S --needed git base-devel

mkdir "${HOME}/git" && cd "${HOME}/git"
git clone https://aur.archlinux.org/yay.git
cd "yay"
makepkg -si

pkgs=(
	"ly"
	"polybar"
	"ttf-mononoki"
	"llpp"
	"vscodium"
	"uim"
)

for pkg in "${pkgs[@]}"; do
    yay -S "$pkg"
done