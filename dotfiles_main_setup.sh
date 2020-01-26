#! /bin/bash

# Dotfiles main setup
mkdir $HOME/.dotfiles
git init --bare $HOME/.dotfiles

git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME remote add origin git@github.com:otaviocarvalho/.dotfiles.git

# How to use it
#dotfiles add .tmux.conf
#dotfiles commit -m "Add .tmux.conf"
#dotfiles push
