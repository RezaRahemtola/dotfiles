show_gitmux() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_gitmux_icon" "")"
  local color="$(get_tmux_option "@catppuccin_gitmux_color" "$thm_blue")"
  local text="$(get_tmux_option "@catppuccin_gitmux_text" "#(gitmux -cfg $HOME/.gitmux.conf '#{pane_current_path}' || echo '#[fg=red,bold]x')")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
