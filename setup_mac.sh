#!/bin/bash

# Set up mac dev tools
echo "Answer prompt, set up dev tools"
git | /dev/null

# Set up kryptonite CLI tool for ssh keygen
curl https://krypt.co/kr | sh

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install 8.9.* --latest-npm

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
npm install -g pure-prompt

# Move respective dotfiles to their rightful places
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.zshrc ~/.zshrc

# Install atom packages
apm install --packages-file atom-packages.txt

# Install homebrew, brew-file, and brew cask
# brew-file gives you idempotent brew
# brew cask gives you binaries via `brew cask install` for things like chrome
curl -fsSL https://raw.github.com/rcmdnk/homebrew-file/install/install.sh |sh
brew tap caskroom/cask
