#!/bin/sh

if [ $# -eq 0 ]; then
  echo attaching to most recent session
  tmux a
else
  if [ "$1" == "ls" ]; then
    ls ~/.dotfiles/conf/tmux/setup_*.sh | sed 's|/Users/smassa/.dotfiles/conf/tmux/setup_||' | sed s/.sh//
  else
    echo attaching to or creating: $1
    tmux a -t $1 \
      || ~/.dotfiles/conf/tmux/setup_$1.sh \
      || tmux new-session -s $1
  fi
fi

