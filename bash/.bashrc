#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[[ $- == *i* ]] && source "/usr/share/fzf/completion.bash" 2> /dev/null
source "/usr/share/fzf/key-bindings.bash"
