export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="alanpeabody"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

source $HOME/.zshenv
eval "$(rbenv init - zsh)"

# List all files and sort by date modified
alias lst="lsa -t"

# Git add + commit + push
alias snap="git add . && git commit -m \"edit\" && git push"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Pyenv 
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

