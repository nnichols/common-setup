export ZSH_DISABLE_COMPFIX=true
# For brew, at least
export PATH=/usr/local/bin:$PATH

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# JVM Stuff
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Shell History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt share_history
setopt hist_ignore_space
setopt hist_expire_dups_first

# Path to your oh-my-zsh installation.
export ZSH="/Users/nnichols/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
plugins=(git aws bazel docker colored-man-pages command-not-found colorize terraform osx lein node npm npx nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases

alias greps='grep -rHni --color' # Set grep to be recursive, case insensitive, print filenames + line numbers, and highlight matches in stdout
alias stat='git status'
alias status='git status'
alias shove='git push -f'
alias pull='git fetch --prune && git pull && git gc' # pull updates from remote, get rid of branches that have been deleted, and clean up the local repo copy
alias repl='clojure -M:nrepl'
alias saml='saml2aws login && eval $(saml2aws script)' # Login to AWS with SAML provider, and prime current session with AWS ENV vars
alias pull-all='for d in */; do cd $d; git stash; pull; cd ..; done' # Open each directory from my current folder, stash local changes, and pull remote
alias status-all='for d in */; do cd $d; pwd; git status; cd ..; done' # Open each directory from my current folder and echo pwd plus the git status
alias json-to-edn='pbpaste | jet --from json --to edn --keywordize' # Convert json in my copy buffer into edn
alias bazel-test='bazel test $(bazel query "tests(//...)")' # Search for bazel targets named test, and execute those tests
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/nnichols/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# GPG stuff
export GPG_TTY=$(tty)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
