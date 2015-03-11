# setup vim swap path
mkdir -p ~/.vim/swap

# install vundle
if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

# vim colorscheme
mkdir -p ~/.vim/colors
cp ~/.dotfiles/conf/vim/colors/* ~/.vim/colors

# git settings
git config --global --add color.ui true

