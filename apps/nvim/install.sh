
here=$(cd $(dirname $0);pwd)
rm ~/.config/nvim
ln -s $here/config ~/.config/nvim
mkdir -p ~/.cache/vimswap/

