#! /bin/sh

rm -f ~/.gitconfig
ln -s $(pwd)/git/.gitconfig ~/.gitconfig

rm -f ~/.config/Code/User/settings.json
ln -s $(pwd)/vscode/settings.json ~/.config/Code/User/settings.json

rm -rf ~/.config/fish
ln -s $(pwd)/fish ~/.config/fish
