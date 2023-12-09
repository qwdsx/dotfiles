#
# ~/.bashrc
#

. $HOME/.aliases
# . $HOME/.env

PATH="$HOME/scripts:$HOME/.cargo/bin:/usr/bin/yt-dlp:$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='\e[01;31m\]\w\[\e[01;33m\] >\[\e[01;00m\] '
PS1='\w > '

# pnpm
export PNPM_HOME="/home/lassi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "$HOME/.cargo/env"
