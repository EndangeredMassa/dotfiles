# setup facile environment

cd ~/source/node/facile
tmux new-session -d -s facile

tmux rename-window -t facile:1 'test'
tmux send-keys -t 1 'npm test' C-m

tmux new-window -t facile:2 -n 'shell'
tmux send-keys -t 2 'clear' C-m

tmux new-window -t facile:3 -n 'vim'
tmux send-keys -t 3 'vim .' C-m

tmux select-window -t facile:3
tmux a

