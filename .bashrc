# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="╭─\[\e[1m\]\h\[\e[0m\]: \[\e[1;32m\]\u\[\e[0m\] at \[\e[3;35m\]\w\[\e[0m\]\n╰─\[\e[1m\]>\[\e[0m\] "

# mkcd function
mkcd () {
    mkdir -p "$1" && cd "$1"
}

# Some usefull aliases
alias l="ls -l"
alias ll="ls -Al"
alias la="ls -A"

alias cls=clear
alias cat="cat -n"
alias google="ping google.com"

alias ..="cd ../"
alias ....="cd ../../"
alias ......="cd ../../../"
alias ........="cd ../../../../"

# Color aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"
