#!/bin/bash

remove_and_simlink(){

if [ -a ~/$1 ]; then
  rm ~/$1
fi

ln -s $(pwd)/$1 ~/$1

}

# Move respective dotfiles to their rightful places
remove_and_simlink .vimrc
remove_and_simlink .zshrc
remove_and_simlink .tmux.conf
remove_and_simlink .gitconfig
remove_and_simlink .gitignore

