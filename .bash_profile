alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
if [ "`uname`" = 'Darwin' ]; then
  alias ll='ls -lFG'
else
  alias ll='ls -lF --color=auto'
fi

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh


if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

export PS1='\w$(__git_ps1) \$ '
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=verbose GIT_PS1_DESCRIBE_STYLE=branch
export PROMPT_COMMAND='__git_ps1 "\w" " \$ "'
export GIT_PS1_SHOWCOLORHINTS=1

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
