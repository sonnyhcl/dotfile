if [ ! -f "$HOME/.local/bin/k9s" ]; then
  mkdir -p $HOME/.local/bin
  curl -sS https://webi.sh/k9s | sh
  mkdir -p $HOME/.config/k9s
  cp $HOME/bin/k9s/* $HOME/.config/k9s/
  source $HOME/.config/envman/PATH.env
  k9s version
fi

