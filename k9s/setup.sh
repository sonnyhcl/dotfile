if [ ! -f "$HOME/.local/bin/k9s" ]; then
  mkdir -p $HOME/.local/bin
  curl -sS https://webi.sh/k9s | sh
  cp $HOME/bin/k9s/* $HOME/.config/k9s/
fi
