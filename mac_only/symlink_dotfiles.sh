#!/bin/bash

remove_and_simlink(){
    if [ -e ~/$1 ] || [ -h ~/$1 ]; then
        echo "removing $1"
        rm ~/$1
    fi

    ln -s $(pwd)/$2 ~/$1
}

# Move respective dotfiles to their rightful places
remove_and_simlink .vimrc ../common/.vimrc
remove_and_simlink .zshrc .zshrc
remove_and_simlink .tmux.conf .tmux.conf
remove_and_simlink .gitconfig ../common/.gitconfig
remove_and_simlink .gitignore ../common/.gitignore
