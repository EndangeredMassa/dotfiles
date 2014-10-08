# setup personal (me) environment

# build the tmux session
cd ~/source/node/jarvis
tmux new-session -d -s me

tmux new-window -t me:1 -n 'shell'

tmux new-window -t me:2 -n 'downloads'

tmux select-window -t cs:2
tmux a
