#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

_GREEN=$(tput setaf 10)
_BLUE=$(tput setaf 12)
_RESET=$(tput sgr0)
export PS1='${_GREEN}\u@\h ${_BLUE}\w${_RESET}\$ '
