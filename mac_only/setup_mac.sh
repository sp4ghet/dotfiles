#!/bin/bash

set -e

# Set up mac dev tools
echo "Answer prompt, set up dev tools"
#xcode-select --install

# Set up kryptonite CLI tool for ssh keygen
curl https://krypt.co/kr | sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#npm install -g pure-prompt

# Install spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install homebrew, brew-file, and brew cask
# brew-file gives you idempotent brew
# brew cask gives you binaries via `brew cask install` for things like chrome
curl -fsSL https://raw.github.com/rcmdnk/homebrew-file/install/install.sh |sh

brew install rcmdnk/file/brew-file
brew file set_repo

brew file install

# Install atom packages
apm install --packages-file ../common/atom-packages.txt

