source ~/.dotfiles/conf/git/completion.bash
alias gpr="gu && git pull --rebase origin master"
alias gg='git grep -n'
alias gu='git fetch --all && git prune && git remote prune origin && git gc'
