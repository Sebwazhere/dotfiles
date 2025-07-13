#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

_GOLD="\[\033[93m\]"
_BLUE="\[\033[34m\]"
_RESET="\[\033[0m\]"
PS1="${_GOLD}\u ${_BLUE}\w${_RESET}\$ "

if [ ! "$TMUX" ]; then
    tmux new -Adefault
fi
