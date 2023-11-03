here=$(cd $(dirname $0);pwd)
rm -f ~/.tmux.conf
ln -s $here/config/tmux.conf ~/.tmux.conf

