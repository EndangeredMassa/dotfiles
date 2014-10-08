# Ubuntu-only stuff. Abort if not Ubuntu.
[[ "$(cat /etc/issue 2> /dev/null)" =~ [Uu]buntu ]] || return 1

# Package management
alias update="sudo apt-get -qq update && sudo apt-get upgrade"
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
alias search="apt-cache search"
alias xclip="xclip -selection c"

runst() { nohup /usr/bin/subl $@ > /dev/null & }
alias subl=runst

