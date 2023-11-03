# 真のdotfilesから公開されても大丈夫な部分だけ抜き出すスクリプト
here=$(cd $(dirname $0);pwd)

pushd $here

rm -fr org
git clone ~/dotfiles org

cp -r org/apt/apt-brix.txt apt.txt

mkdir -p apps
cp -r org/apps/alacritty/ apps/
rm apps/alacritty/config/alacritty.yml.txt
mkdir -p apps/bash
cp    org/apps/bash/*     apps/bash/
cp -r org/apps/chrome/    apps/
cp -r org/apps/deno/      apps/
cp -r org/apps/fzf/       apps/
cp -r org/apps/i3/        apps/
cp -r org/apps/node/      apps/
cp -r org/apps/nvim/      apps/
cp -r org/apps/ruby/      apps/

#cp -r org/apps/git/      apps/

mkdir -p apps/ssh
sed -e 's/^Port .*$/Port 12345/' \
  org/apps/ssh/sshd_config.base.conf \
  >   apps/ssh/sshd_config.base.conf
cp -r org/apps/ssh/util.sh  apps/ssh
cp -r org/apps/tig/       apps
cp -r org/apps/tmux       apps
cp -r org/apps/ubuntu_login/ apps
sed -i -e 's/.*jpg.*//' apps/ubuntu_login/memo

popd
