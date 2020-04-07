#!/usr/bin/env bash

cd
apt-get -y update
apt-get -y upgrade

check_and_install() {
    for i in $@; do
        if type $i >/dev/null 2>/dev/null; then
            echo "$i already installed"
        else
            echo "$i does not exist, install it now"
            apt-get install -y -q $i
        fi
    done
}

check_and_install curl

# clone settings and tips
check_and_install git
git clone https://github.com/SanjayZhang/settings.git
git clone https://github.com/SanjayZhang/tips.git
chown -R $(logname):$(logname) settings
chown -R $(logname):$(logname) tips

# Vim, Vundle, Plugins
check_and_install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp settings/.vimrc .
vim +PluginInstall +qall


# Tmux
check_and_install_tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

cp settings/.tmux.conf.local .
chown -R $(logname):$(logname) .tmux*


# git
cp settings/.gitconfig .

# Zsh
check_and_install zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

