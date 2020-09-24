# For brew, at least
export PATH=/usr/local/bin:$PATH

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# Path to your oh-my-zsh installation.
export ZSH="/Users/nnichols/.oh-my-zsh"

ZSH_THEME="agnoster"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
plugins=(git aws colored-man-pages command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases

prompt_context(){}

alias greps='grep -rHni --color'
alias stat='git status'
alias status='git status'
alias shove='git push -f'
