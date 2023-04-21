set -U fish_greeting ""
set -x EDITOR nano
set -x VISUAL code


if status is-interactive
  source ~/.config/fish/abbreviations.fish
end

# --- Aliases ---

# Epitech aliases
alias epitest='docker run --rm -it -v $PWD:/home/ -w /home --network none epitechcontent/epitest-docker /bin/bash'

# Utils aliases
alias sn='shutdown now'
alias e='clear && exit'
alias u='sudo dnf upgrade && sudo dnf autoremove -y'


# --- Others ---

# Haskell
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/reza/.ghcup/bin $PATH # ghcup-env

# Scaleway CLI autocomplete initialization.
eval (scw autocomplete script shell=fish)



# Launch tmux if not already in a tmux session or inside a terminal integration (VSCode, JetBrains, etc.)
if status is-interactive
and not set -q TMUX
and not set -q TERM_PROGRAM
  exec tmux new-session -A -s main
end
