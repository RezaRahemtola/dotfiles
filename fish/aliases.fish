# Epitech docker
alias epitest='docker run --rm -it -v $PWD:/home/ -w /home --network none epitechcontent/epitest-docker /bin/bash'

# Utils aliases
alias sn='shutdown now'
alias e='clear && exit'
alias u='sudo dnf upgrade && sudo dnf autoremove -y'

# exa instead of ls
if test "$TERM_PROGRAM" != "vscode"
  alias ls='exa --icons'
else
  alias ls='exa'
end

alias l='ls'
alias ll='ls -l'
alias la='ls -a'
