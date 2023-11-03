
here=$(cd $(dirname $0);pwd)
rm ~/.config/i3
ln -s $here/config ~/.config/i3
pushd ~/.config/i3
./refresh.sh
popd

