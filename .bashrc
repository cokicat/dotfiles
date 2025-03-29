# If not running interactively, don't do anything
[[ $- != *i* ]] && return

RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"
ITALIC="\[\e[3m\]"
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
MAGENTA="\[\e[35m\]"
YELLOW="\[\e[33m\]"
DIM="\[\e[2m\]"

git_prompt() {
	branch=$(git branch --show-current 2>/dev/null)
	tag=$(git describe --tags --exact-match 2>/dev/null)

	if [ -n "$branch" ]; then
		echo -e " on \e[33m\e[3m$branch\e[0m"
	elif [ -n "$tag" ]; then
		echo -e " on \e[33m\e[3m$tag\e[0m"
	fi
}

if [[ "$TERM" == "linux" ]]; then
	PS1="${DIM}[\t]${RESET} ${GREEN}\w${RESET}> "
else
	PROMPT_COMMAND='
	exit_status=$?
	exit_prompt=""
	if [ $exit_status -ne 0 ]; then
		exit_prompt=" !$exit_status";
	fi'
	PS1="╭─[ ${BOLD}\h${RESET} 󰄾 ${GREEN}${BOLD}\u${RESET} at ${MAGENTA}${ITALIC}\w${RESET}\$(git_prompt) ]${RED}${BOLD}\$exit_prompt${RESET}\n╰──> "
fi


# mkcd function
mkcd() {
	mkdir -p "$1" && cd "$1"
}

# Some usefull aliases
alias l="ls -l"
alias ll="ls -Al"
alias la="ls -A"

alias cls=clear
alias google="ping google.com"

alias ..="cd ../"
alias ....="cd ../../"
alias ......="cd ../../../"
alias ........="cd ../../../../"

# Color aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"

