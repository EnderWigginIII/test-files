#
# ~/.bashrc
#

#If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
export PS1="\[\033[38;5;33m\]\u\[\033[38;5;214m\]@\h: \[\033[38;5;222m\]\w \[\033[38;5;33m\]\\$>\[$(tput sgr0)\] "
