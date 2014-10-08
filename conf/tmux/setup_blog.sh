# setup blog environment

tmux new-session -d -s blog

tmux rename-window -t blog:1 'procs'
tmux send-keys -t 1 'cd ~/source/blog && clear && jekyll --server' C-m

tmux new-window -t blog:2 -n 'shell'
tmux send-keys -t 2 'cd ~/source/blog && clear && vim .' C-m

tmux select-window -t blog:2
tmux a

