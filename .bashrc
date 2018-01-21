#
# ~/.bashrc
#

#If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
export PS1="\[\033[38;5;33m\]\u\[$(tput sgr0)\]\[\033[38;5;220m\]@\h:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;214m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;33m\]\\$>\[$(tput sgr0)\]"
