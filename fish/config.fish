set -U fish_greeting ""
set -x EDITOR nano
set -x VISUAL code

# Git abbreviations
abbr -a -U -- ga 'git add -u'
abbr -a -U -- gcm 'git commit -m'
abbr -a -U -- gca 'git commit --amend --no-edit'
abbr -a -U -- gs 'git status'
abbr -a -U -- gp 'git push'
abbr -a -U -- gpl 'git pull'
abbr -a -U -- gsw 'git switch'


# --- Aliases ---

# PoC & Epitech aliases
alias epitest='docker run --rm -it -v $PWD:/home/ -w /home epitechcontent/epitest-docker /bin/bash'
alias wk='code ~/poc/Workshops'
alias wc='code ~/poc/Corrections'

# Utils aliases
alias sn='shutdown now'
alias e='exit'
alias u='sudo dnf upgrade && sudo dnf autoremove -y'
