pserver=brix
ifile=~/.ssh/serial-server.pem.pub

# 鍵の作り方
create_new_key() {
  ssh-keygen -t ed25519 -P "" -f ${ifile:0:-4}
}

show_authorized() {
  cat config \
    | awk 'BEGIN{print "("}END{print ")"} /^Host/{print "echo;echo "$2";ssh "$2" cat .ssh/authorized_keys;"}' \
    | bash
}

# 新しい公開鍵
dist_new_key() {
  if [ "$forced" = "1" ]
  then
    lcmd=
  else
    lcmd=echo
  fi
  cat config \
    | awk '/^Host/{print $2} ' \
    | xargs -I {} $lcmd ssh-copy-id -i $ifile {}
}

# 紹介
acquaint_new_key() {
  if [ "$forced" = "1" ]
  then
    lcmd=bash
  else
    lcmd=cat
  fi
  scp $ifile $pserver:.ssh/tmp.pub
  cat config \
    | grep -v $pserver \
    | grep -v `hostname` \
    | grep -v vlhr \
    | awk '/^Host/{print "ssh '$pserver' ssh-copy-id -f -i .ssh/tmp.pub "$2}' \
    | $lcmd
  ssh $pserver rm .ssh/tmp.pub
}

set_force() {
  forced=1
}

print() {
  echo public_key: $ifile
  echo proxy: $pserver
  echo forced: $forced
}

print
select cmd in set_force show_authorized dist_new_key acquaint_new_key create_new_key
do
  $cmd
  print
done

