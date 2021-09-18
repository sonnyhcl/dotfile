#!/bin/bash
set -ex

# Run this script to keep update to bash configuration

mkdir -p $HOME/bin/dotfile
cp prompt.sh $HOME/bin/dotfile/prompt.sh
 
cp .bashrc $HOME/.bashrc
cp .bash_aliases $HOME/.bash_aliases
cp .bash_profile $HOME/.bash_profile
