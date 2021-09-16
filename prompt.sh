if [ -f "$HOME/bin/kube-ps1/kube-ps1.sh" ]; then
  echo "kube-ps1.sh exists"
else
  mkdir $HOME/bin
  git clone  https://github.com/jonmosco/kube-ps1 $HOME/bin/kube-ps1
fi
source $HOME/bin/kube-ps1/kube-ps1.sh

NORMAL="\[\033[00m\]"
BLUE="\[\033[01;34m\]"
YELLOW="\[\e[1;33m\]"
GREEN="\[\e[1;32m\]"

PS1="\n${YELLOW}\u${NORMAL}@${BLUE}\h${NORMAL} in ${GREEN}\w ${NORMAL}"'$(kube_ps1)'" [\$(date +%H:%M:%S)]\n\$ "

