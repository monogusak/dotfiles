
check_command() {
  which $1 > /dev/null || echo $1 is not found!
}

# apt
check_command i3
check_command i3blocks
check_command feh
check_command transset
check_command xdotool
check_command nm-applet
#check_command blueman-applet
check_command picom

# dotfiles/bin
check_command chwp

# https://nextcloud.com/install/#install-clients
test -f $HOME/apps/nextcloud/Nextcloud.AppImage || echo Nextcloud is not found!

# ~/dotfiles/install.sh
fc-list | grep "Yutapon coding Heavy Sl" > /dev/null || echo Yutapon is not found!

