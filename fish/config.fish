set -U fish_greeting ""
set -x EDITOR nano
set -x VISUAL code


if status is-interactive
  source ~/.config/fish/abbreviations.fish
end

# --- Aliases ---

# PoC & Epitech aliases
alias epitest='docker run --rm -it -v $PWD:/home/ -w /home epitechcontent/epitest-docker /bin/bash'
alias wk='code ~/poc/Workshops'
alias wc='code ~/poc/Corrections'

# Utils aliases
alias sn='shutdown now'
alias e='exit'
alias u='sudo dnf upgrade && sudo dnf autoremove -y'
