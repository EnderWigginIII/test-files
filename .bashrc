#
# ~/.bashrc
#

#If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
export PS1="\[$(tput sgr0)\]\[\033[38;5;33m\]\u\[\033[38;5;220m\]@\h: \[\033[38;5;214m\]\w \[\033[38;5;33m\]\\$>"
