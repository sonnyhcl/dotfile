#!/bin/bash
set -ex

# Run this script to keep update to bash configuration

## Copy bashrc related
mkdir -p $HOME/bin/dotfile
cp prompt.sh $HOME/bin/dotfile/prompt.sh
cp aliases $HOME/bin/dotfile/aliases

cp bashrc $HOME/.bashrc
cp bash_profile $HOME/.bash_profile
source $HOME/.bashrc

## Copy vimrc related
if [ ! -f "$HOME/.vim/colors/monokai.vim" ]; then
  mkdir -p $HOME/.vim/colors
  curl -L https://github.com/sickill/vim-monokai/raw/master/colors/monokai.vim -o $HOME/.vim/colors/monokai.vim
fi 
cp vimrc $HOME/.vimrc

## Copy k9s/kubecolor related
mkdir -p $HOME/bin
cp -r k9s $HOME/bin
cp -r kubecolor $HOME/bin
