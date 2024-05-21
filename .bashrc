# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[1m\]\h\[\e[0m\]: \[\e[1;32m\]\u\[\e[0m\] at \[\e[1;36m\]\w\[\e[0m\]\n-> '

mkcd () {
    mkdir -p "$1" && cd "$1"
}

alias ll='ls -l'
alias la='ls -A'

alias cls=clear

alias ..='cd ../'
alias ....='cd ../../'
alias ......='cd ../../../'
alias ........='cd ../../../../'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
