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

## Setup helm
command_name="helm"
if ! command_loc="$(type -p "$command_name")" || [[ -z $command_loc ]]; then
  curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
  sudo apt install apt-transport-https --yes
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
  sudo apt  update
  sudo apt install helm
fi
helm version
