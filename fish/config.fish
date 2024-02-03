set -U fish_greeting ""
set -x EDITOR nano
set -x VISUAL code


if status is-interactive
  source ~/.config/fish/abbreviations/index.fish
end

# --- Aliases ---
source ~/.config/fish/aliases.fish


# -- Keybindings --

# History search (default binding used in tmux)
bind -k ppage history-token-search-backward
bind -k npage history-token-search-forward

# fzf
fzf_configure_bindings --directory=\ch


# --- Others ---

# Haskell
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/reza/.ghcup/bin $PATH # ghcup-env

# Scaleway CLI autocomplete initialization.
eval (scw autocomplete script shell=fish)

# Launch tmux if not already in a tmux session or inside a terminal integration (VSCode, JetBrains, etc.)
if status is-interactive
and not set -q TMUX
and test "$TERM_PROGRAM" != "vscode"
and test "$TERMINAL_EMULATOR" != "JetBrains-JediTerm"
  exec tmux new-session -A -s main
end
