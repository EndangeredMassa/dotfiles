# setup pull environment

cd ~/source/itier/pull
tmux new-session -d -s pull

tmux rename-window -t pull:1 'procs'
tmux send-keys -t 1 "make reloader" C-m

tmux new-window -t pull:2 -n 'shell'

tmux new-window -t pull:3 -n 'vim'
tmux send-keys -t 3 'vim' C-m

tmux select-window -t pull:2
tmux a

