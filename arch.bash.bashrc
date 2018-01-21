#
#/etc/bash.bashrc
#

#If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize
PS1='\[\033[38;5;160m\]\u\[\033[38;5;220m\]@\h:\[\033[38;5;214m\]\w\[\033[38;5;160m\]\\$>\[$(tput sgr0)\]'

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
