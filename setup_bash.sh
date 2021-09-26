#!/bin/bash
set -ex

# Run this script to keep update to bash configuration
## Copy helper
mkdir -p $HOME/bin/dotfile
cp prompt.sh $HOME/bin/dotfile/prompt.sh
cp aliases $HOME/bin/dotfile/aliases

## Copy dotfile
cp vimrc $HOME/.vimrc
cp bashrc $HOME/.bashrc
cp bash_profile $HOME/.bash_profile
source $HOME/.bashrc
