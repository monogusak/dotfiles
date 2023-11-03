
check_command() {
  which $1 > /dev/null || echo $1 is not found!
}

check_command nvim

