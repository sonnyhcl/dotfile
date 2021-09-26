
if [ ! -f "$HOME/bin/kube-ps1/kube-ps1.sh" ]; then
  mkdir -p $HOME/bin
  git clone  https://github.com/jonmosco/kube-ps1 $HOME/bin/kube-ps1
fi
source $HOME/bin/kube-ps1/kube-ps1.sh

if [ ! -f "$HOME/bin/dotfile/git-prompt.sh" ]; then
  mkdir -p $HOME/bin/dotfile
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o $HOME/bin/dotfile/git-prompt.sh
fi
source $HOME/bin/dotfile/git-prompt.sh 
export GIT_PS1_SHOWDIRTYSTATE=true      # staged '+', unstaged '*'
export GIT_PS1_SHOWUNTRACKEDFILES=true  # '%' untracked files
export GIT_PS1_SHOWUPSTREAM="auto,verbose"      # '<' behind, '>' ahead, '<>' diverged, '=' no difference
export GIT_PS1_SHOWCOLORHINTS=true      # show branch name in color

NORMAL="\[\033[00m\]"
BLUE="\[\033[01;34m\]"
YELLOW="\[\e[1;33m\]"
GREEN="\[\e[1;32m\]"

PS1="\n${YELLOW}\u${NORMAL}@${BLUE}\h${NORMAL} in ${GREEN}\w ${NORMAL}"'$(kube_ps1)'""'$(__git_ps1)'" [\$(date +%H:%M:%S)]\n\$ "

