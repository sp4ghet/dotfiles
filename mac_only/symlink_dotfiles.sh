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
remove_and_simlink .zshrc zsh/.zshrc
remove_and_simlink .tmux.conf .tmux.conf
remove_and_simlink .gitconfig ../common/.gitconfig
remove_and_simlink .gitignore ../common/.gitignore
mkdir -p ~/.vim/colors
remove_and_simlink .vim/colors/solarized.vim ../common/colors/solarized.vim
remove_and_simlink .zshenv .zshenv
