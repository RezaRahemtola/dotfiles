#! /bin/sh

rm -f ~/.gitconfig
ln -s $(pwd)/git/.gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s $(pwd)/git/.gitignore ~/.gitignore

rm -f ~/.config/Code/User/settings.json
ln -s $(pwd)/vscode/settings.json ~/.config/Code/User/settings.json

rm -rf ~/.config/fish
ln -s $(pwd)/fish ~/.config/fish

rm -rf ~/.eslintrc.yaml
ln -s $(pwd)/javascript/.eslintrc.yaml ~/.eslintrc.yaml
