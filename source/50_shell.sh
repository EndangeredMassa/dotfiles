PATH="/usr/local/bin:$PATH"
PATH="~/bin:$PATH"

#prompt
export PS1='\[$(tput setaf 6)\][\w] \[$(tput setaf 3)\]$(__git_ps1 "(%s) ")\[$(tput setaf 171; tput bold)\]\\$ \[$(tput sgr0)\]'

alias tree="tree -I 'node_modules|tmp|bower_components'"
alias tm="~/.dotfiles/conf/tmux/tmux.sh"
alias exwav="ffmpeg -i"
alias ..="cd .."
alias ls="ls --color"
alias chrome="google-chrome"
alias browser="xargs google-chrome" # allow chrome to take a url from stdin

#disable control flow characters
stty -ixon

#history fixing
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

export CLICOLOR=1
export GREP_COLOR=auto

