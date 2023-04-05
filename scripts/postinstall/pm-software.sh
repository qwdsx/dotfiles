
pkgs=(
	"xorg"
	"xorg-server"
	"discord"
	"grub"
	"efibootmgr"
	"dialog"
	"mtools"
	"dosfstools"
	"base-devel"
	"bspwm"
	"sxhkd"
	"alacritty"
	"feh"
	"sxiv"
	"neovim"
	"firefox"
	"qutebrowser"
	"mpv"
	"mpd"
	"mpc"
	"pipewire"
	"pipewire-pulse"
	"rofi"
	"git"
	"ranger"
	"thunar"
	"flameshot"
	"exa"
	"nvidia"
	"lib32-nvidia-utils"
	"dialog"
	"networkmanager"
	"network-manager-applet"
	"jq"
	"curl"
	"wget"
	"btop"
	"nodejs"
	"npm"
	"gcc"
	"python"
	"lazygit"
	"dhcpcd"
	"ffmpeg"
	"convert"
	"lua"
	"dunst"
	"reflector"
	"obs-studio"
	"noto-fonts"
	"noto-fonts-cjk"
	"noto-fonts-emoji"
	"noto-fonts-extra"
	"picom"
	"virt-manager"
	"dnsmasq"
	"solaar"
)

for pkg in "${pkgs[@]}"; do
    sudo pacman -S "$pkg" --noconfirm --needed
done
