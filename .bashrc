#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[$(tput setaf 159)\]\u\[$(tput setaf 122)\]@\[$(tput setaf 122)\]\h \[$(tput setaf 189)\]\W \[$(tput sgr0)\]> "