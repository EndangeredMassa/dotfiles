# setup facile environment

cd ~/source/ccg-engine
tmux new-session -d -s ccg

tmux rename-window -t ccg:1 'server'
tmux send-keys -t 1 'make reloader' C-m

tmux new-window -t ccg:2 -n 'test'
tmux send-keys -t 2 'make test-unit' C-m

tmux new-window -t ccg:3 -n 'shell'

tmux new-window -t ccg:4 -n 'vim'
tmux send-keys -t 4 'vim .' C-m

tmux select-window -t ccg:4
tmux a

