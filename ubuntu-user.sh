#!/usr/bin/env bash

cd 

set http_proxy='http://127.0.0.1:6666'
set https_proxy='http://127.0.0.1:6666'

# clone settings and tips
check_and_install git
git clone https://github.com/SanjayZhang/settings.git
git clone https://github.com/SanjayZhang/tips.git

# git
cp settings/.gitconfig .

# Vim, Vundle, Plugins
check_and_install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp settings/.vimrc .
vim +PluginInstall +qall


# Tmux
check_and_install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

cp settings/.tmux.conf.local .
chown -R $(logname):$(logname) .tmux*

# Zsh
check_and_install zsh 
cp settings/install-oh-my-zsh.sh .
chmod +x install-oh-my-zsh.sh
./install-oh-my-zsh.sh
