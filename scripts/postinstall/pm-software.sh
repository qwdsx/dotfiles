
pkgs=(

	# essentials
	"xorg"
	"xorg-server"
	"efibootmgr"
	"dialog"
	"mtools"
	"dosfstools"
	"base-devel"
	"grub"
	"nvidia"
	"lib32-nvidia-utils"
	"networkmanager"
	"network-manager-applet"
	"picom"
	"dhcpcd"

	# terminal
	"alacritty"
	"feh"
	"sxiv"
	"neovim"
	"firefox"
	"qutebrowser"

	# media
	"mpv"
	"mpd"
	"mpc"

	"discord"
	
	# wm and keyboard shortcuts
	"bspwm"
	"sxhkd"

	# audio
	"pipewire"
	"pipewire-pulse"

	# development
	"jq"
	"nodejs"
	"npm"
	"gcc"
	"lua"
	"python"

	# git
	"git"
	"lazygit"

	# fonts
	"noto-fonts"
	"noto-fonts-cjk"
	"noto-fonts-emoji"
	"noto-fonts-extra"
	"ttf-nerd-fonts-symbols"

	# virtual manager
	"virt-manager"
	"dnsmasq"

	# other
	"rofi"
	"flameshot"
	"exa"
	"curl"
	"wget"
	"btop"
	"ffmpeg"
	"convert"
	"dunst"
	"reflector"
	"obs-studio"
	"solaar"
)

for pkg in "${pkgs[@]}"; do
    sudo pacman -S "$pkg" --noconfirm --needed
done
