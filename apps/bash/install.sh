basedir=$(cd $(dirname $0);pwd)
rm ~/.bashrc
rm ~/.bash_logout
rm ~/.profile
ln -s $basedir/_bashrc ~/.bashrc
ln -s $basedir/_bash_logout ~/.bash_logout
ln -s $basedir/_profile ~/.profile

# rm ~/.bash_local_after
# rm ~/.bash_local_before
# ln -s $basedir/_bash_local_after  ~/.bash_local_after
# ln -s $basedir/_bash_local_before ~/.bash_local_before
