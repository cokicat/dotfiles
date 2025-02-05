# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT_COMMAND='
if [ $? -ne 0 ]; then
    exit_prompt="[❌$?] ";
else
    exit_prompt="";
fi'

git_prompt() {
	branch=$(git branch --show-current 2>/dev/null)
	tag=$(git describe --tags --exact-match 2>/dev/null)

	if [ -n "$branch" ]; then
		echo " ($branch)"
	elif [ -n "$tag" ]; then
		echo " ($tag)"
	fi
}

PS1="╭─\[\e[1;31m\]\$exit_prompt\[\e[0m\]\[\e[1m\]\h\[\e[0m\]: \[\e[1;32m\]\u\[\e[0m\] at \[\e[3;35m\]\w\[\e[0m\]\[\e[33m\]\$(git_prompt)\[\e[0m\] \n╰─▶ "

# mkcd function
mkcd() {
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
