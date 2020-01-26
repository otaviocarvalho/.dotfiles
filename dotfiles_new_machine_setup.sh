#! /bin/bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/otaviocarvalho/.dotfiles.git ~

git clone --separate-git-dir=$HOME/.dotfiles https://github.com/otaviocarvalho/.dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
