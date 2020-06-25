export ZSH=/Users/a/.oh-my-zsh
export JAVA_HOME=$(/usr/libexec/java_home)
export RBENV_ROOT=/usr/local/var/rbenv
export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost
export GOPATH=$HOME/w/golang-workspace
export GOPRIVATE=source.golabs.io
export PATH="$PATH:$HOME/.rvm/bin:/Users/a/Library/Python/2.7/bin:/Users/a/apache-maven-3.3.9/bin:/opt/local/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:/usr/local/kubebuilder/bin:/usr/local/mysql/bin:/usr/local/sbin"
if [[ -n $SSH_CONNECTION ]]; then export EDITOR='vim'; else export EDITOR='code'; fi

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
DISABLE_MAGIC_FUNCTIONS="true"

plugins=(git
         zsh-autosuggestions
         zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

bindkey '^R' .safe

alias cat=bat
alias ping=prettyping
alias vn="lazy-connect -r && lazy-connect"
alias p="proctor"
# Kubectl
alias k="kubectl"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kgs="kubectl get svc | grep"
alias kgd="kubectl get deploy | grep"
alias kgp="kubectl get pod | grep"
alias kgi="kubectl get ing | grep"
alias ke="kubectl edit"
alias ked="kubectl edit deploy"
alias kds="kubectl describe svc"
alias kdd="kubectl describe deploy"

eval "$(rbenv init -)"

[[ -s /Users/a/.autojump/etc/profile.d/autojump.sh ]] && source /Users/a/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u
autoload -U +X bashcompinit && bashcompinit

complete -o nospace -C /usr/local/bin/vault vault
export VAULT_ADDR='http://127.0.0.1:8200'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/a/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/a/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/a/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/a/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


