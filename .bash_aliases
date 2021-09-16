export JAVA_HOME=/usr/lib/jvm/java-11/openjdk-amd64
export PATH=$PATH:$HOME/istio-1.7.4/bin
export PATH=$PATH:$HOME/.krew/bin

alias k="kubectl"
alias kg="kubectl get"
alias kes="kubectl port-forward -n elasticsearch-oss svc/catalog-es-oss-master 9200:9200"

alias clhu="kubectl config use-context clhuaks"
alias onebox="kubectl config use-context babylonscus"
alias devint="kubectl config use-context babylondevint"
alias dogfood="kubectl config use-context babylondf"
alias perf="kubectl config use-context catalogrollingcus"
