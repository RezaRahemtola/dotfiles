#! /bin/sh

rm -f ~/.gitconfig
ln -s $(pwd)/git/.gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s $(pwd)/git/.gitignore ~/.gitignore

rm -f ~/.config/Code/User/settings.json
ln -s $(pwd)/vscode/settings.json ~/.config/Code/User/settings.json
rm -f ~/.config/Code/User/keybindings.json
ln -s $(pwd)/vscode/keybindings.json ~/.config/Code/User/keybindings.json

rm -rf ~/.config/fish
ln -s $(pwd)/fish ~/.config/fish
