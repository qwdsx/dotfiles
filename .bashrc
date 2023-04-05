#
# ~/.bashrc
#

# source aliases
. ~/.aliases

PATH="$HOME/scripts:$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function dynamic_ps1() {
    pwd=$(pwd)
    slash_count=$(awk -F/ '{print NF-1}' <<< "$pwd")
    if [[ "$pwd" == "/home/lassi" || $slash_count == "1" ]]; then
        PS1='\w > '
    else
        PS1='\e[01;101m\] \w \[\e[01;00m\]\[\e[01;91m\]  \[\e[01;00m\] '
    fi
}

#PROMPT_COMMAND="dynamic_ps1"
#PS1='\e[01;31m\]\w\[\e[01;33m\] >\[\e[01;00m\] '
PS1='\w > '
