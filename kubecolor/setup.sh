if [ ! -f "$HOME/.local/bin/kubecolor" ]; then
  cd $(mktemp -d)
  mkdir -p $HOME/.local/bin
  wget https://github.com/hidetatz/kubecolor/releases/download/v0.0.25/kubecolor_0.0.25_Linux_x86_64.tar.gz -O kubecolor.tar.gz
  tar xvfz kubecolor.tar.gz
  cp kubecolor $HOME/.local/bin   
  source $HOME/.config/envman/PATH.env
  kubecolor version
fi

