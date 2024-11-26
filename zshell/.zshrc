# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# Shell History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt share_history
setopt hist_ignore_space
setopt hist_expire_dups_first

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git aws bazel docker colored-man-pages command-not-found colorize terraform macos lein node npm nvm)

source $ZSH/oh-my-zsh.sh

# Set personal aliases

alias greps='grep -rHni --color' # Set grep to be recursive, case insensitive, print filenames + line numbers, and highlight matches in stdout
alias stat='git status'
alias status='git status'
alias shove='git push -f'
alias pull='git fetch --prune && git pull && git gc' # pull updates from remote, get rid of branches that have been deleted, and clean up the local repo copy
alias ports='lsof -i -P | grep LISTEN' # List which applications have leases against which ports
alias pull-all='for d in */; do cd $d; git stash; pull; cd ..; done' # Open each directory from my current folder, stash local changes, and pull remote
alias status-all='for d in */; do cd $d; pwd; git status; cd ..; done' # Open each directory from my current folder and echo pwd plus the git status
alias json-to-edn='pbpaste | jet --from json --to edn --keywordize' # Convert json in my copy buffer into edn
alias bazel-test='bazel test $(bazel query "tests(//...)")' # Search for bazel targets named test, and execute those tests

PATH=$PATH:/opt/homebrew/bin
