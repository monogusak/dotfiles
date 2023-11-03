basedir=$(cd $(dirname $0);pwd)
rm ~/.tigrc
ln -s $basedir/_tigrc ~/.tigrc
