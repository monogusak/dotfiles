
gcc check.c
echo no param
./a.out
echo

echo ja_JP.UTF-8
LC_CTYPE=ja_JP.UTF-8 ./a.out
echo

echo en_US.UTF-8
LC_CTYPE=en_US.UTF-8 ./a.out
echo

# echo ja_JP.EUC-JP
# LC_CTYPE=ja_JP.EUC-JP ./a.out

