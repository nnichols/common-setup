[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

parse_git_dirty() {
  st=$(git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]; then
    echo ''
  elif [[ $st == "nothing to commit (working directory clean)" ]]; then
    echo ''
  elif [[ $st == 'nothing added to commit but untracked files present (use "git add" to track)' ]]; then
    echo '?'
  else
    echo '*'
  fi
}

SB_GREEN="\[\033[1;32m\]"
SB_BLUE="\[\033[1;34m\]"
SB_RED="\[\033[1;31m\]"
SB_NOCOLOR="\[\033[0m\]"

export PS1="$SB_GREEN\u@\h$SB_NOCOLOR: $SB_BLUE\w$SB_GREEN\$(parse_git_branch)$SB_RED\$(parse_git_dirty)$SB_NOCOLOR λ "
