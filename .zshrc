export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="evan"

plugins=(git)

source $ZSH/oh-my-zsh.sh

PURPLE=$(tput setaf 5)
RESET=$(tput sgr0)

echo -e "\n${PURPLE}QUOTE${RESET}\n"
