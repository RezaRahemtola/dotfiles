# Dotfiles
Some of my personal dotfiles.

> I use this repository to save my own configuration files, bear in mind that some of them might not work out of the box for you.

## Content
- [VSCode](./vscode)
  - Great [settings](./vscode/settings.json) for TypeScript, Python, Go, Markdown and more
  - [Keybindings](./vscode/keybindings.json) with JetBrains support
- [Git](./git)
- [Fish](./fish)
  - Enhanced with [plugins](./fish/fish_plugins)
  - Custom git [abbreviations](./fish/abbreviations.fish)
- [tmux](./tmux/)
  - Enhanced with plugins using [tpm](https://github.com/tmux-plugins/tpm)

## Installation

You can either manually copy the files or parts that are useful to you, or use the installation script.

> ⚠️ Use `install.sh` with care, it will **permanently** delete your existing configuration files

```sh
chmod +x install.sh && ./install.sh
```