
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
alias cdg='cd ~/fullscreen/Gorilla'
alias cdd='cd ~/fullscreen/Dashboard'
alias r='rails'
 
export HISTCONTROL=ignoredups;
shopt -s histappend;
PROMPT_COMMAND='history -a';
shopt -s cdspell;
