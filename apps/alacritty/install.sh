here=$(cd $(dirname $0);pwd)
name=$(basename $here)
echo $name
rm ~/.config/$name
ln -s $here/config ~/.config/$name

