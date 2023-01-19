set -U fish_greeting ""
set -x EDITOR nano
set -x VISUAL code


if status is-interactive
  source ~/.config/fish/abbreviations.fish
end

# --- Aliases ---

# Epitech aliases
alias epitest='docker run --rm -it -v $PWD:/home/ -w /home epitechcontent/epitest-docker /bin/bash'

# Utils aliases
alias sn='shutdown now'
alias e='exit'
alias u='sudo dnf upgrade && sudo dnf autoremove -y'


# --- Others ---

# Haskell
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/reza/.ghcup/bin $PATH # ghcup-env
