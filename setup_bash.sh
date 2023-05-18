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

## Setup azure-cli
command_name="az"
if ! command_loc="$(type -p "$command_name")" || [[ -z $command_loc ]]; then
  curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
fi
az version

## Setup kubectl
command_name="kubectl"
if ! command_loc="$(type -p "$command_name")" || [[ -z $command_loc ]]; then
  sudo apt update
  sudo apt install -y ca-certificates curl apt-transport-https
  sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
  echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
  sudo apt update
  sudo apt install -y kubectl
fi
kubectl version --client=true

## Setup istioctl
command_name="istioctl"
if ! command_loc="$(type -p "$command_name")" || [[ -z $command_loc ]]; then
  curl -sL https://istio.io/downloadIstioctl | sh -
fi
istioctl version --remote=false
